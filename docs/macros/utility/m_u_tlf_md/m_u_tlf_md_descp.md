# m_u_tlf_md
### Purpose 

This utility macro is designed to create the TLF metadata and also create needed TLF generation codes.<br>

The purposes include:<br>

(1) Create the TLF metadata<br>
Convert [toc index.xlsx](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/TOC_INDEX.xlsx?d=wcac3215991234061aaba7aee439c1c74&csf=1&web=1&e=otlHqx) into TLF.titles which could be used in %istartv2 and %istopv2 to report rtf output. The toc index file should have one observation per one TLF. If need to display page-by outputs, then title 7 should be set "j=L '#byval(byvar)'".  <br>

(2) Create needed TLF generation codes<br>
(2.1) For those TLF programs already covered in O-GEM, the example TLF generation codes will be copied to study folder directly. <br>
(2.2) For those not covered, a blank program with basic info such as program header, %setup, %localsetup will be generated named as defined in toc index file. <br>
(2.3) A batch run code with log check 'batch_tfl.sas' could also be generated. <br>
 
>More details of usage are in [Parameter](m_u_tlf_md_param.md) and [Example](m_u_tlf_md_examp.md).

### Output files

 After calling this macro, a `sas7bdat` file named `tlf.titles` is generated. This dataset contains PROGRAM (program names), SUFFIX (used to name the output files), PARAM (including title, footnote, and outfile), and the values of each Parameters.  

>![Process](Process.png)

---

### Macros used

  - %runpgm
  - [%m_u_varexist](../../utility/m_u_varexist/m_u_varexist_descp.md)
  - [%u_blank](../../../other/u_blank.md)

>Note: entimICE macros %runpgm is referred when developed O-GEM macros. See %runpgm macro in entimICE: root/cdar/common/gmd/prod/macro for further details.

### Used in

  - Not used in other macros.

---
 
