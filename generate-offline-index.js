const fs = require('fs');
const path = require('path');
const cheerio = require('cheerio');

function processLink(baseDir, href) {
  // 如果是外部链接或锚点链接，直接返回
  if (href.startsWith('http') || href.startsWith('#')) {
    return href;
  }

  // 处理相对路径
  try {
    // 将相对路径转换为绝对路径
    const absolutePath = path.resolve(baseDir, href);
    
    // 检查文件是否存在
    if (fs.existsSync(absolutePath)) {
      // 如果是 Markdown 文件，转换为对应的 HTML 文件
      if (path.extname(href) === '.md') {
        return href.replace('.md', '.html');
      }
      
      // 返回相对于 _book 目录的路径
      const relativePath = path.relative(path.join(__dirname, '_book'), absolutePath);
      return relativePath;
    }
  } catch (err) {
    console.error(`Error processing link ${href}: ${err.message}`);
  }

  return href;
}

function inlineResources(htmlPath) {
  const html = fs.readFileSync(htmlPath, 'utf8');
  const $ = cheerio.load(html);
  const baseDir = path.dirname(htmlPath);

  // 处理所有链接
  $('a').each((i, elem) => {
    const href = $(elem).attr('href');
    if (href) {
      const processedHref = processLink(baseDir, href);
      $(elem).attr('href', processedHref);
    }
  });

  // 处理 CSS 链接
  $('link[rel="stylesheet"]').each((i, elem) => {
    try {
      const cssHref = $(elem).attr('href');
      const cssPath = path.resolve(baseDir, cssHref);
      
      if (fs.existsSync(cssPath)) {
        const cssContent = fs.readFileSync(cssPath, 'utf8');
        $(elem).replaceWith(`<style>${cssContent}</style>`);
      }
    } catch (err) {
      console.error(`Error inlining CSS: ${err.message}`);
    }
  });

  // 处理 JavaScript 链接
  $('script[src]').each((i, elem) => {
    try {
      const jsHref = $(elem).attr('src');
      const jsPath = path.resolve(baseDir, jsHref);
      
      if (fs.existsSync(jsPath)) {
        const jsContent = fs.readFileSync(jsPath, 'utf8');
        $(elem).replaceWith(`<script>${jsContent}</script>`);
      }
    } catch (err) {
      console.error(`Error inlining JavaScript: ${err.message}`);
    }
  });

  // 处理图片
  $('img').each((i, elem) => {
    try {
      const imgSrc = $(elem).attr('src');
      const imgPath = path.resolve(baseDir, imgSrc);
      
      if (fs.existsSync(imgPath)) {
        const imgBuffer = fs.readFileSync(imgPath);
        const imgBase64 = imgBuffer.toString('base64');
        const imgExt = path.extname(imgPath).slice(1);
        $(elem).attr('src', `data:image/${imgExt};base64,${imgBase64}`);
      }
    } catch (err) {
      console.error(`Error converting image to base64: ${err.message}`);
    }
  });

  // 添加离线提示
  $('body').prepend(`
    <div style="background-color: #f0f0f0; padding: 10px; text-align: center; font-weight: bold;">
      这是离线版本的文档。某些交互功能可能受限。
    </div>
  `);

  return $.html();
}

function generateOfflineDocumentation() {
  const bookPath = path.join(__dirname, '_book');
  
  // 递归处理所有 HTML 文件
  function processDirectory(dir) {
    const files = fs.readdirSync(dir);
    
    files.forEach(file => {
      const fullPath = path.join(dir, file);
      const stat = fs.statSync(fullPath);
      
      if (stat.isDirectory()) {
        processDirectory(fullPath);
      } else if (path.extname(file) === '.html') {
        try {
          const offlineContent = inlineResources(fullPath);
          fs.writeFileSync(fullPath, offlineContent);
          console.log(`Processed offline: ${fullPath}`);
        } catch (err) {
          console.error(`Error processing ${fullPath}: ${err.message}`);
        }
      }
    });
  }

  processDirectory(bookPath);
  console.log('Offline documentation generation completed!');
}

generateOfflineDocumentation(); 