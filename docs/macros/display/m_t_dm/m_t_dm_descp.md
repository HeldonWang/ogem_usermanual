# m_t_dm

### Purpose 
This display macro is designed to generate output for the template [AZTONCSP07](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=FCvCYK&nav=MTVfezQxNTI3MzRFLURBQjgtNEQ4RC1CQkJELTVBNDA1NUYzRDE1Q30), [AZTSP08](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=hGJgM5&nav=MTVfezhBNEE0RTc5LUM3MEEtNEY0Ri1BNUYxLUU2QzcwNEVGQzYzMn0), [AZTSP09](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=AUEXoX&nav=MTVfezQ0M0UzOTU0LTdFMkMtNEUwMi04M0YyLTlCNzkyRUIzMEFBQ30)<br>

> More details of usage are in [Parameter](m_t_dm_param.md) and [Example](m_t_dm_examp.md).

### Output files

After calling this macro, `*.sas7bdat` and `*.rtf` files are generated and could be referred. 

> `*.sas7bdat` tlf.outputfilename, work.final2qc(same with tlf.outputfilename) and work.final2output <br>
> `*.rtf` output/outputfilename

---

### Macros used

  - %istartv2
  - %istopv2
  - %m_u_parmchk
  - [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_descp.md)
  - [%m_u_report](../../utility/m_u_report/m_u_report_descp.md)  

>Note: Global macros %istartv2 and %istopv2 are used in O-GEM (root/cdar/common/gmd/prod/macro). The checking utility macros %m_u_parmchk is referred when developing O-GEM macros. See [entimICEAZ_Mapping_Macros_User_Guide.pdf](https://azcollaboration.sharepoint.com/sites/SS365/AD253/Clinical%20Data%20Standards%20Library/Guidelines%20and%20Training/SDTM/entimICEAZ_Mapping_Macros_User_Guide.pdf?csf=1&web=1&e=A0JuRZ) for further details.
  
### Used in

  - Not used in other macros.

---



 