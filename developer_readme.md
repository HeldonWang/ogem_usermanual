# Developer README

## Project Introduction
The OGEM User Manual is a multilingual documentation project built with HonKit, designed to provide users with clear and easy-to-understand product usage guides. This project supports both English and Chinese documentation and provides an excellent reading experience.

## Features
- Multilingual support (English, Chinese)
- Responsive design, supporting multiple devices
- Clear document structure and navigation
- Search functionality
- Version control support
- Automated build and deployment

## Project Structure
```
ogem/
├── docs/              # Documentation source files
│   ├── en/           # English documentation
│   └── zh/           # Chinese documentation
├── _book/            # Build output directory
├── node_modules/     # Dependencies
├── .gitignore        # Git ignore configuration
├── book.json         # HonKit configuration file
├── ModHistory.md     # Modification history
├── package.json      # Project configuration file
└── README.md         # Project documentation
```

## Requirements
- Node.js >= 14.0.0
- npm >= 6.0.0
- Git

## Quick Start

### Install Dependencies
```bash
npm install
```

### Local Preview
```bash
npm run serve
```

### Build Documentation
```bash
npm run build
```

## Documentation Writing Guide
1. All documentation source files are stored in the `docs` directory
2. Write documentation in Markdown format
3. Store image resources in the `docs/assets` directory
4. Follow the documentation structure specifications

## Contribution Guide
1. Fork this repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Submit a Pull Request

## Version History
See [ModHistory.md](ModHistory.md)

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

# User Manual Origin Project

## Project Overview
This project aims to provide a comprehensive solution for managing and generating user manuals. It is designed to be user-friendly and efficient, making documentation creation and maintenance easier for teams.

## Features
- Git-based version control for documentation
- Collaborative editing capabilities
- Support for multiple documentation formats

## Project Structure
```
/
├── README.md           # Project documentation
└── [Additional files and directories will be added as needed]
```

## Getting Started
### Prerequisites
- Git installed on your system
- Appropriate access permissions to the repository

### Installation
1. Clone the repository:
```bash
git clone [repository-url]
cd usermanualorigin
```

2. Configure Git (if not already done):
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

## Usage
[Usage instructions will be added as features are implemented]

## Contributing
1. Fork the repository
2. Create your feature branch (`git checkout -b feature/YourFeature`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/YourFeature`)
5. Create a new Pull Request

## Version History
- Initial setup: 2025-04-18

## License
[License information to be added]

## Contact
[Contact information to be added]

---
Last updated: 2025-04-18 