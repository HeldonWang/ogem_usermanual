# m_u_cont
### Purpose 
This analysis macro is designed to generate descriptive statistics for continuous variables. It produces various statistics (e.g., Mean, standard deviation, Median, Q1, Min, Q3, and Max) for each variable specified，allows for easy integration of these statistics into reports. It supports various filtering and sorting options, making it flexible for analysis needs. <br>

>More details of usage are in [Parameter](m_u_cont_param.md) and [Example](m_u_cont_examp.md).<br>

### Output files

After calling this macro, `*.sas7bdat` files are generated and could be referred. <br>

> `*.sas7bdat:` work.dsout

---

### Macros used

  - %m_u_parmchk
  - %m_u_chkvars
  - %m_u_chkwhere

>Note: entimICE macros, including %m_u_parmchk, %m_u_chkvars, and %m_u_chkwhere are referred when developed O-GEM macros. See [entimICEAZ_Mapping_Macros_User_Guide.pdf](https://azcollaboration.sharepoint.com/sites/SS365/AD253/Clinical%20Data%20Standards%20Library/Guidelines%20and%20Training/SDTM/entimICEAZ_Mapping_Macros_User_Guide.pdf?csf=1&web=1&e=A0JuRZ) for further details.

### Used in

  - [%m_t_nested_cont](../..//display/m_t_nested_cont/m_t_nested_cont_descp.md)

---

