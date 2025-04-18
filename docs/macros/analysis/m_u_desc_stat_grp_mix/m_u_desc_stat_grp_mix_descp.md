# m_u_desc_stat_grp_mix

### Purpose 
Analysis macro designed to generate summary statistics for multiple variables under multiple groups.
1. Generate of descriptive statistics for both categorical and continuous variables. 
2. Provide an option to exclude certain statistics.
3. Customize output order. 
4. Provide an option to change the denominator when calculating categorical statistics.

> More details of usage are in [Parameter](m_u_desc_stat_grp_mix_param.md) and [Example](m_u_desc_stat_grp_mix_examp.md).

### Output files

After calling this macro, `*.sas7bdat` files are generated and could be referred. 

> `*.sas7bdat:` work.&datout

---

### Macros used

  - %m_u_chkvars
  - [%m_u_desc_stat_sin_mix](../../analysis/m_u_desc_stat_sin_mix/m_u_desc_stat_sin_mix_descp.md)

>Note: entimICE macro %m_u_chkvars is referred when developed O-GEM macros. See [entimICEAZ_Mapping_Macros_User_Guide.pdf](https://azcollaboration.sharepoint.com/sites/SS365/AD253/Clinical%20Data%20Standards%20Library/Guidelines%20and%20Training/SDTM/entimICEAZ_Mapping_Macros_User_Guide.pdf?csf=1&web=1&e=A0JuRZ) for further details.
  
### Used in

  - [%m_t_desc](../../display/m_t_desc/m_t_desc_descp.md)
  - [%m_t_dm](../../display/m_t_dm/m_t_dm_descp.md)
  - [%m_t_dv](../../display/m_t_dv/m_t_dv_descp.md)
  - [%m_t_ex_dur](../../display/m_t_ex_dur/m_t_ex_dur_descp.md)

---

