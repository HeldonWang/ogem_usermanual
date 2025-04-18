# O-GEM HonKit Documentation

This repository contains the O-GEM user manual built with HonKit, a fork of GitBook (legacy version) that continues to be maintained.

## Setup

The documentation is built using [HonKit](https://github.com/honkit/honkit), which is a fork of the legacy GitBook.

### Prerequisites

- [Node.js](https://nodejs.org/) (v10.0.0 or higher)
- npm (comes with Node.js)

### Installation

1. Clone this repository
2. Install dependencies:

```bash
npm install
```

## Usage

### Building the documentation

To build the documentation:

```bash
npx honkit build
```

Or use the provided batch file:

```bash
build-honkit.bat
```

The built documentation will be available in the `_book` directory.

### Serving locally

To preview the documentation locally:

```bash
npx honkit serve
```

This will start a local server at http://localhost:4000

### Generating eBooks

HonKit can generate eBooks in various formats:

- PDF:
  ```bash
  npx honkit pdf
  ```

- ePub:
  ```bash
  npx honkit epub
  ```

- Mobi:
  ```bash
  npx honkit mobi
  ```

Note: Generating PDF, ePub, and Mobi requires [Calibre](https://calibre-ebook.com/) to be installed.

## Deployment

### GitHub Pages

To deploy to GitHub Pages, use the provided batch file:

```bash
deploy-to-github.bat
```

This will build the documentation and push it to the `gh-pages` branch of your repository.

## Structure

- `book.json`: Configuration file for HonKit
- `SUMMARY.md`: Table of contents
- `README.md`: Introduction page
- Other markdown files: Content pages

## Plugins

The following plugins are used:

- `expandable-chapters`: Makes chapters expandable/collapsible in the sidebar
- `search-pro`: Enhanced search functionality
- `back-to-top-button`: Adds a button to scroll back to the top
- `copy-code-button`: Adds a button to copy code blocks

## Customization

To customize the appearance or behavior of the documentation, edit the `book.json` file.

## Troubleshooting

If you encounter any issues:

1. Make sure all dependencies are installed
2. Check the HonKit version (`npx honkit --version`)
3. Clear the `_book` directory and rebuild
4. Check for errors in the console output

## Resources

- [HonKit Documentation](https://github.com/honkit/honkit)
- [Markdown Guide](https://www.markdownguide.org/) 