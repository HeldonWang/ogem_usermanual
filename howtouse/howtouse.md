# How to use

There're 3 steps,<br>
1. TLF Environment setup<br>
   1. Copy O-GEM study folder. <br>
     * O-GEM <u>*macro folder*</u> to study reporting event <u>*macro folder*</u>.<br>
     * O-GEM <u>*tlf_md.sas*</u> to study reporting event <u>*program folder*</u>.<br>
   2. Update <u>*localsetup.sas*</u> which will be run before every TLF.<br>
     * Include <u>*[%m_u_popn](/macros/utility/m_u_popn/m_u_popn_descp.md)*</u> to generate headers. Example [localsetup.sas](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/localsetup.txt?csf=1&web=1&e=KAgrt3) starting from Line 63. <br>
     * Highly recommend to define the general format used for TLF in the localsetup.sas, and create special format in the respective code. <br>
     * Any other gobal information needed. <br>
   3. Convert TOC file to the metadata named as TLF.TITLES.<br>
     * Prepare and upload TOC file(xlsx file) [Example TOC file](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/TOC_INDEX.xlsx?d=wcac3215991234061aaba7aee439c1c74&csf=1&web=1&e=otlHqx).<br>
       * Requirment of TOC file<br>
        *The structure of this excel file is one record per one TLF including titles, footnotes, program names, suffix and names of output files.*<br>
          > The names of column headers should be "`TITLE1`, `TITLE2`, `TITLE4`, `TITLE5`, `TITLE6`, `TITLE7`, `FOOTNOTE1-FOOTNOTE9`, `PROGRAM`, `SUFFIX`, `OUTFILE`", in which "`TITLE4`"(TLF numbering), "`TITLE5`" (Title), "`PROGRAM`"(Name of TLF generation code), "`SUFFIX`" (Suffix to distinguish different outputs using the same TLF generation code), "`OUTFILE`" (Name of output, rtf file and sas dataset) are mandatory. If there's "Page by value", please fill "`TITLE7`" with "***J=L '#byval(byvar)'***" which will be used in ODS RTF.<br>        

         [![Example toc_index](/howtouse/TOC_INDEX.png)](/howtouse/TOC_INDEX.png)
         
       * Methods<br>
         * It could be converted via the csv metadata exported from MOSAIC via VBA.<br>
            1. Copy the exported TiFo values to [DXXXXXXXXXX_TiFo_MOSAIC_CONVERT.xlsm](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/DXXXXXXXXXX_TiFo_MOSAIC_CONVERT.xlsm?d=w05acd47b84b94c40a5f821cd4e4e1a32&csf=1&web=1&e=1bmoE8).
            ![Step1](/howtouse/MOSAIC_CONVERT_STEP1.png)<br>
            2. Click the "MOSAIC CONVERT" button, and a new sheet named "Index" will be created and could be used.
            [![Step2](/howtouse/MOSAIC_CONVERT_STEP2.png)](/howtouse/MOSAIC_CONVERT_STEP2.png)
         * It could also be manually created based on the TOC file. <br>
     * Run <u>*tlf_md.sas*</u> in the study reporting event <u>*program folder*</u>.<br>
2. TLF generation codes(.sas) automatically creation.<br>
   *One Step to generate every code for each TLF in TOC file and a batch run code named as batch_tlf.sas*.
    ![One Step to generate](/howtouse/UM_CODE_GENERATION1.png)<br>
   * Run <u>*tlf_md.sas*</u> in the study reporting event <u>*program folder*</u>.<br>
     > * For those **TLF covered in O-GEM** (Name of TLF generation code is the same as those in Column PROGRAM in Outputs Index sheet of [O-GEM index.xlsx](https://azcollaboration.sharepoint.com/:x:/r/sites/O-GEM2/_layouts/15/Doc.aspx?sourcedoc=%7BB25D071B-4025-404C-AF18-F0D7487C4B1D%7D&file=O-GEM%20Index.xlsx&action=default&mobileredirect=true) , these programs will be copied to study folder from O-GEM centralized repository automatically serving as an example to generate Core TLF and other outputs. Below is an example.
    ![Within scope](/howtouse/UM_CODE_GENERATION3.png)<br>
     > * For those **TLF not covered**, these programs with a same name as TOC file "PROGRAM" column will be created with basic information such as program header, %setup and %localsetup invoking automatically. Below is an example.
    ![Out of scope](/howtouse/UM_CODE_GENERATION2.png)<br>
     > * A batch run program named as "batch_tlf.sas" could also be created. Below is an example.
    ![Batch code](/howtouse/UM_CODE_GENERATION4.png)<br>
3. TLF codes modification and execution.<br>
   * Modify TLF codes and execute batch_tlf.sas as needed. <br>
   * Tips<br>
     * When to define the 'proc format' used in TLF and if the order of the original values shouldn't be used, please add '***(notsorted)***' after format name.<br>
     * For the `pop_mvar` parameter in display macros, it should be generated in advance by %m_u_popn `gmacro`. <br>
       > Note: Mostly generated in localsetup.sas if it's not unique to one TLF.<br>
     * For the ESCAPECHAR, recommend to use (\*ESC*).<br>
> If any changes needed for TITLES.sas7bdat (Eg. Titles, footnotes or program names), then need to update toc_index.xlsx file and rerun <u>*tlf_md.sas*</u> with `pgmgen=N`.

# Other
For those TLFs that display macros hasn't covered currently (format is different or more modifications are needed per study specific needs), **analysis macros** and **%m_u_report** could be used to generate outputs.


# Reference Files

* localsetup.sas<br>
  * root/global_tools/oncology/o_gem/pgm/v1/tlf/doc<br>
  * [Online link](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/localsetup.sas?csf=1&web=1&e=DjLyxA)<br>
* TOC file<br>
  * root/global_tools/oncology/o_gem/pgm/v1/tlf/doc<br>
  * [Online link](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/TOC_INDEX.xlsx?d=wcac3215991234061aaba7aee439c1c74&csf=1&web=1&e=CWtKLb)<br>
* DXXXXXXXXXX_TiFo_MOSAIC_CONVERT.xlsm<br>
  * root/global_tools/oncology/o_gem/pgm/v1/tlf/doc<br>
  * [Online link](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/DXXXXXXXXXX_TiFo_MOSAIC_CONVERT.xlsm?d=w05acd47b84b94c40a5f821cd4e4e1a32&csf=1&web=1&e=udJVBD)<br>

## 本地构建说明

### 前置条件
- Node.js (v12 或更高版本)
- npm (通常随 Node.js 一起安装)
- Git (用于版本控制和部署)

### Windows 用户

1. 打开命令提示符或 PowerShell，进入项目目录
2. 安装依赖：
   ```bash
   npm install
   ```
3. 构建文档：
   ```bash
   # 方法1：使用批处理文件
   build-honkit.bat
   
   # 方法2：直接使用 npm 命令
   npm run build
   ```
4. 本地预览：
   ```bash
   # 方法1：使用批处理文件中的选项
   # 运行 build-honkit.bat 并在提示时选择 'y'
   
   # 方法2：直接使用 npm 命令
   npm run start
   ```
5. 部署到 GitHub Pages（如果需要）：
   ```bash
   deploy-to-github.bat
   ```

### macOS/Linux 用户

1. 打开终端，进入项目目录
2. 安装依赖：
   ```bash
   npm install
   ```
3. 构建文档：
   ```bash
   npm run build
   ```
4. 本地预览：
   ```bash
   npm run start
   ```
5. 部署到 GitHub Pages（如果需要）：
   ```bash
   # 确保脚本有执行权限
   chmod +x deploy-to-github.sh
   
   # 运行部署脚本
   ./deploy-to-github.sh
   ```

### 常见问题

1. 如果遇到权限问题，尝试使用 sudo（仅限 macOS/Linux）：
   ```bash
   sudo npm install
   ```

2. 如果遇到端口占用问题，可以通过环境变量指定端口：
   ```bash
   # Windows (CMD)
   set PORT=4001 && npm run start
   
   # Windows (PowerShell)
   $env:PORT=4001; npm run start
   
   # macOS/Linux
   PORT=4001 npm run start
   ```

3. 如果构建过程中遇到内存不足问题：
   ```bash
   # Windows (CMD)
   set NODE_OPTIONS=--max-old-space-size=4096 && npm run build
   
   # Windows (PowerShell)
   $env:NODE_OPTIONS="--max-old-space-size=4096"; npm run build
   
   # macOS/Linux
   NODE_OPTIONS=--max-old-space-size=4096 npm run build
   ```

### 注意事项

- 本地预览时，文档服务器默认运行在 http://localhost:4000
- 修改文件后，本地预览会自动刷新
- 部署到 GitHub Pages 之前，请确保所有更改已提交到 Git
- 首次部署到 GitHub Pages 可能需要几分钟才能生效


