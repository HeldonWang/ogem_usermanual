# OGEM User Manual

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

# Introduction
<img src="OGEM_LOGO.png" alt="O-GEM Logo" style="float: right;" width="180" height=180 />

This user manual provides guidance for O-GEM macros.

O-GEM is ***Outputs Generation via Efficient Macros***, which is a SAS macro system including [display](macros/display/display.md), [analysis](macros/analysis/analysis.md), [utility](macros/utility/utility.md) macros and TLF generation codes. It aims to develop unique display macros for unique TLF format, so that programmers could **just call display macros** in respective TLF codes to generate outputs.

O-GEM consists of two parts: TLF environment setup and output generation via TLF macros.
* **TLF Environment Setup**
  Create METADATA used in every output, including titles, footnotes, program names and output file names. The other metadata includes column headers such as displayed treatment group, BigN across TLFs.
* **Output Generation**
  * For every unique TLF template, there will be a display macro.
  * One TLF generation code could generate multiple outputs by calling a display macro multiple times.
 ![Overview chart](process.png)

# General Rules
* Standardized datasets for QC
  * Name of datasets (.sas7bdat) is the same as output (.rtf).
  * Name of variables are COL1, COL2, COL3, … (COL0 for page by value).
  * Label of variables is the same as column headers in output which will be used for reporting.
* Adherent to AZSOL
  * Display macros are developed based on AZSOL.
  * Follows [AZ TABLES AND LISTINGS OUTPUT FILE FORMAT](https://azcollaboration.sharepoint.com/sites/SS365/AD253/Clinical%20Data%20Standards%20Library/Guidelines%20and%20Training/TLF/Tables_and_Listings_Output_File_Format_Job_Aid_1.0.pdf?csf=1&web=1&e=tcNeiQ).
* Follows [Program and Output Naming Conventions in AZ Oncology Programming](https://azcollaboration.sharepoint.com/sites/CMU175/04%20Programming/Program_Output%20Naming%20Conventions%20in%20AZ%20Oncology%20Programming.pdf?csf=1&web=1&e=Rmbsky).

# Structure and Dependency
Below is the structure and dependency of macros and TLF generation codes (currently covers ONCO Core TLF but could also be applied to other TLF).
More information stored in [O-GEM Index](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=TgVKlA) <u>Outputs Index tab</u>, Column O(Program name), Column P(Suffix), Column Q(Output file name) and Column R(Display macro used).

|File|Location in Entimice|
|:---|:---|
|Macros|root/global_tools/oncology/o_gem/pgm/v1/tlf/prod/macro|
|u_blank.sas|root/global_tools/oncology/o_gem/pgm/v1/tlf/prod/macro|
|u_socint.sas|root/global_tools/oncology/o_gem/pgm/v1/tlf/prod/macro|
|tlf_md.sas|root/global_tools/oncology/o_gem/pgm/v1/tlf/prod/program|
|Generation codes of Core TLF|root/global_tools/oncology/o_gem/pgm/v1/tlf/prod/program|

![Structure](OGEM_UM_macros_dependency-Structure.drawio.png)

# How to Use
There are 3 steps:
1. TLF Environment setup
   * Copy O-GEM macros and tlf_md.sas to study reporting event folder.
   * Update localsetup.sas which will be run before every TLF.
   * Convert TOC file (the structure is one record per one TLF) to metadata named as TLF.TITLES.
2. TLF generation codes(.sas) creation automatically.
   * One Step to generate every code for each TLF in TOC file and a batch run code, batch_tlf.sas.
3. TLF codes modification and execution.

    ![Step](OGEM_UM_macros_dependency-Step.drawio.png) 

More details seen in [how to use O-GEM](/howtouse/howtouse.md).

The centralized O-GEM is located in:
  * Entimice 'root/global_tools/oncology/o_gem/pgm/v1/tlf/prod'
  * SharePoint [O-GEM](https://azcollaboration.sharepoint.com/sites/O-GEM2/SitePages/CollabHome.aspx)

# Resource

|Item|Description|Type|
|:---|:---|:---|
|[O-GEM SharePoint](https://azcollaboration.sharepoint.com/sites/O-GEM2/SitePages/CollabHome.aspx)|||
|[O-GEM Index.xlsx](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=u9u49c)|An **index file** which includes AZSOL template ID, corresponding O-GEM macros used, and names of TLF generation code. It has created hyperlinks for different TLF and also has flagged Core in ***Output Index*** tab.|<span style="color:#800080">Index</span>|
|[O-GEM User Manual.url](https://azu-oncology-rd.github.io/O-GEM)|HTML format for easy reference (GitHub account needed).|<span style="color:Lime">User Manual</span>|
|[TOC_INDEX.xlsx](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/TOC_INDEX.xlsx?d=wcac3215991234061aaba7aee439c1c74&csf=1&web=1&e=QcsuQP)|Example TOC file|<span style="color:Green">Example</span>|
|[DXXXXXXXXXX_TiFo_MOSAIC_CONVERT.xlsm](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/DXXXXXXXXXX_TiFo_MOSAIC_CONVERT.xlsm?d=w05acd47b84b94c40a5f821cd4e4e1a32&csf=1&web=1&e=a6nyAx)|Convert csv metadata exported from MOSAIC via VBA to a TOC file which could be used in O-GEM. More information please see in [O-GEM User Manual](https://azu-oncology-rd.github.io/O-GEM) ***How to use*** page.|<span style="color:Blue">Tool</span>|
|[localsetup.sas](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/localsetup.sas?csf=1&web=1&e=e0G1gb)|An example localsetup including headers (BigN, descriptive texts) generation.|<span style="color:Green">Example</span>|
|root/global_tools/oncology/o_gem/pgm/v1/tlf/prod|Entimice location|<span style="color:Teal">Program</span>|

# Revision History

|Revision|Effective|Summary of Changes|
|:---|:---:|:---|
|Macro/Utility 1.0|24Sep2024|Initial version|
|UM 1.0|24Sep2024|Initial version|








