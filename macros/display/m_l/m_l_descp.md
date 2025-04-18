# m_l
### Purpose 
This display macro is designed for generating listing reports within SAS. It allows users to specify a dataset, apply filtering conditions, define sorting and pagination options, and output the results in a structured format suitable for quality control review or reporting purposes.

This macro is a display macro for template 
[AZTONCAE15](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=GsBVOa&nav=MTVfe0QwRDE0M0UwLURGNzQtNDZBNy1BQTdELUE5MzBGOERENUQ3RX0), [AZTONCAE12](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=6kQViJ&nav=MTVfezQxRTQ1MEMxLURGRTEtNEE3Qi04MkI2LURCMjVFMjJFRDEwMn0), [AZTONCAE13](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=lgDycK&nav=MTVfe0E0RjVBQzMxLTA2NzUtNDdFNi1BODU2LUYzRjE0RUNENzMzMX0), [AZTONCAE14](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=5pTrkf&nav=MTVfezM2QkQwODhCLTlDNzUtNDI5MS1CMUZCLUZEQjM0NTFDMjZEMH0), [AZTLB12](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=YchT8c&nav=MTVfe0FENzg4Njk5LTRCQUUtNEI1NS1CMEUwLTg3OTk2RjkwN0YzRH0), [AZLSP01](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=dYaeRu&nav=MTVfe0NCNzkyOUFGLUJGMDUtNEQ3MS1CNDMxLTdENDRDMjRDMDg0QX0), [AZLSP02](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=z1A6RQ&nav=MTVfezNBMTEzREVGLTVFOTYtNDIyOC1BODc5LTgxOTRFQjVEOUREMH0), [AZLSP03](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=BNttKs&nav=MTVfezcyQTE2Rjc4LTcyODItNEYyOC1BQjYzLUNBMUFBM0I1MUY1Q30), [AZLSP04](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=3rbWVZ&nav=MTVfezc4QUY1QjIxLUQyNzYtNEE1Qi04NkQ5LTVDRkFDM0M3NkEwMn0), [AZLEX01](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=9IjjXH&nav=MTVfezY4OTc5OTA5LUU4NUUtNENGOC1CQ0JDLUJFODUxOEZDQkUxNH0), [AZLAE01](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=YhliTE&nav=MTVfezlGNTlGMTIyLURCNEYtNEM4NS04QTMyLUFFRjc3NjI4MUMzN30), [AZLLB01](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=CkpLkH&nav=MTVfe0ZEMDM5RUFGLTBFNkMtNDRFNS04NjNELUMzNUJCM0ZCNUJGMH0), [AZLLB02](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=Yk7HnV&nav=MTVfe0Q5REZCRTk1LUEyRTEtNDAwNC05RDRCLThBQjJGMEE5QTA0NX0).<br>

> More details of usage are in [Parameter](m_l_param.md) and [Example](m_l_examp.md).

### Output files

After calling this macro, `*.sas7bdat` and `*.rtf` files are generated and could be referred. 

> `*.sas7bdat` tlf.outputfilename, work.final2qc(same with tlf.outputfilename) and work.final2output <br>
> `*.rtf` output/outputfilename

---

### Macros used

  - %istartv2
  - %istopv2
  - %m_u_parmchk
  - %m_u_chkvars
  - %m_u_chkwhere
  - [%m_u_varexist](../../utility/m_u_varexist/m_u_varexist_descp.md)
  - [%m_u_align_decimal](../../utility/m_u_align_decimal/m_u_align_decimal_descp.md)
  - [%m_u_report](../../utility/m_u_report/m_u_report_descp.md)  


>Note: Global macros %istartv2 and %istopv2 are used in O-GEM (root/cdar/common/gmd/prod/macro). The checking utility macros %m_u_parmchk, %m_u_chkvars, %m_u_chkwhere macros are referred when developing O-GEM macros. See [entimICEAZ_Mapping_Macros_User_Guide.pdf](https://azcollaboration.sharepoint.com/sites/SS365/AD253/Clinical%20Data%20Standards%20Library/Guidelines%20and%20Training/SDTM/entimICEAZ_Mapping_Macros_User_Guide.pdf?csf=1&web=1&e=A0JuRZ) for further details.


### Used in

  - [%m_l_ds_pop](../../display/m_l_ds_pop/m_l_ds_pop_descp.md)

---
