# m_t_nested_cont
### Purpose
This display macro is designed to generate the continuous descriptive statistics by treatment by timepoint.<br>

>This macro is display macros for template 
[AZTLB01](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=TAxl7d&nav=MTVfezJBM0UxMDk1LTUxMUQtNDM1Ri04RDMyLTgxQzZDQTJDRTg0Mn0), [AZTLB06](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=jDQC4i&nav=MTVfe0NEQUQ5RTVCLTMyNTQtNEQ0NS05RUNGLUJBRDlGRDdEM0QyRX0), [AZTVS01](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=ZltsKd&nav=MTVfezU1MTY3MTY3LTYxMjctNEFBQi1BNDU3LTA5RkVDOUI2NEYzNH0), [AZTVS02](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=ZJ0tLO&nav=MTVfezQ4MzExMDQ5LTExOTUtNEMzRi1BOUE0LTAxMEQzNTRGMDZGM30) <br>

>More details of usage are in [Parameter](m_t_nested_cont_param.md) and [Example](m_t_nested_cont_examp.md).

### Output files
After calling this macro, `*.sas7bdat` and `*.rtf` files are generated and could be referred. 

> `*.sas7bdat` tlf.outputfilename, work.final2qc(same with tlf.outputfilename) and work.final2output <br>
> `*.rtf` output/outputfilename<br>


---

### Macros used

  - %istartv2
  - %istopv2
  - %m_u_parmchk
  - %m_u_chkvars
  - %m_u_chkwhere
  - [%m_u_cont](../../analysis/m_u_cont/m_u_cont_descp.md)
  - [%m_u_report](../../utility/m_u_report/m_u_report_descp.md)  

>Note: Global macros %istartv2 and %istopv2 are used in O-GEM (root/cdar/common/gmd/prod/macro). The checking utility macros %m_u_parmchk, %m_u_chkvars, %m_u_chkwhere macros are referred when developing O-GEM macros. See [entimICEAZ_Mapping_Macros_User_Guide.pdf](https://azcollaboration.sharepoint.com/sites/SS365/AD253/Clinical%20Data%20Standards%20Library/Guidelines%20and%20Training/SDTM/entimICEAZ_Mapping_Macros_User_Guide.pdf?csf=1&web=1&e=A0JuRZ) for further details.

### Used in

  - Not used in other macros.

---

