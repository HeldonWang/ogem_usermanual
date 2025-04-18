# m_t_nested


### Purpose 

Display macros for template [AZTAE03](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=gabyoo&nav=MTVfe0NCRURFMTJFLURBNEMtNEMwMy04MUQ3LUE0OEI1QTEwRkQ2RX0), [AZTONCAE03](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=GlIuPw&nav=MTVfezlCQzQ0Mjk5LUFCNEMtNDAzNC1BQTYwLUVBOTFERjI1RkU4Qn0), [AZTONCAE09](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=cunXhR&nav=MTVfezZCOTQ3RkNELTUyQ0EtNDk0OC05MEQ5LTU4RDg5RTk4MTQyOH0), [AZTSP13](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=JuvlBb&nav=MTVfezRCRUJDRjIxLUZFRTAtNEEzOS04NTBDLTNCMjlDOEJCQkI2Q30), [AZTSP15](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=qXzPoj&nav=MTVfe0E5QTYwQkVBLUE4REUtNDk1Ri1BNEVELTkyNkEzRjEzNjBBOH0)<br>

>More details of usage are in [Parameter](m_t_nested_param.md) and [Example](m_t_nested_examp.md).<br>


### Output files

After calling this macro, `*.sas7bdat` and `*.rtf` files are generated and could be referred.<br>

> `*.sas7bdat` tlf.outputfilename, work.final2qc, work.final2output
> `*.rtf` /output/outputfilename

---

### Macros used

  - %istartv2
  - %istopv2
  - %m_u_parmchk
  - %m_u_chkvars
  - [%m_u_nested](../../analysis/m_u_nested/m_u_nested_descp.md)
  - [%m_u_report](../../utility/m_u_report/m_u_report_descp.md) 

>Note: Global macros %istartv2 and %istopv2 are used in O-GEM (root/cdar/common/gmd/prod/macro). The checking utility macros %m_u_parmchk, %m_u_chkvars macros are referred when developing O-GEM macros. See [entimICEAZ_Mapping_Macros_User_Guide.pdf](https://azcollaboration.sharepoint.com/sites/SS365/AD253/Clinical%20Data%20Standards%20Library/Guidelines%20and%20Training/SDTM/entimICEAZ_Mapping_Macros_User_Guide.pdf?csf=1&web=1&e=A0JuRZ) for further details.

### Used in

  - Not used in other macro

---

