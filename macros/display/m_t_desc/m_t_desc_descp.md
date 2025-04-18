# m_t_desc

### Purpose 

This display macro is designed to generate categorical descriptive analysis, following the template [AZTONCSP01A](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=PugR8x&nav=MTVfezI3REUxMTFGLTc1QTgtNDNGNi04MzczLTNDRjk5Mzg4MjNGMn0) or [AZTONCSP01B](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=Pe7pNf&nav=MTVfezkzNDdDQjBCLTdFRUMtNEM0Ni1BRkY2LTczNzY2NUZFMEU1Rn0) or [AZTONCSP02](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=8YQDJo&nav=MTVfezMwOTk3ODYyLTJEMDgtNEFFRS1CNDQ5LUREMzU5QTg2OEJEQX0) or [AZTONCEX04](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=TxzSh6&nav=MTVfezQ4MDU5RUJDLUJCMUQtNEFBOS05NTY2LTJCOEU0MEFFMkEzRX00) or [AZTONCAE06](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=JNlWPd&nav=MTVfezlGRDcyRUM2LTVEMTYtNDJCNi05QkFBLUREQUVDN0I0NUE1MX0) 
 
> More details of usage are in [Parameter](m_t_desc_param.md) and [Example](m_t_desc_examp.md).

### Output files

After calling this macro, `*.sas7bdat` and `*.rtf` files are generated and could be referred. <br>

> `*.sas7bdat` tlf.outputfilename, work.final2qc(same with tlf.outputfilename) and work.final2output <br>
> `*.rtf` output/outputfilename

---

### Macros used

  - %istartv2
  - %istopv2
  - [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_descp.md)
  - [%m_u_report](../../utility/m_u_report/m_u_report_descp.md)

>Note: Global macros %istartv2 and %istopv2 are used in O-GEM (root/cdar/common/gmd/prod/macro).  

### Used in

  - Not used in other macros.

---

