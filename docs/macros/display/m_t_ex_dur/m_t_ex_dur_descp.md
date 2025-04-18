# m_t_ex_dur

### Purpose 

This display macro is designed to generate output for the template [AZTONCEX01](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=eHlTZ6&nav=MTVfezczNzJCODY2LTUzNjQtNDc5Qy1BRjJDLTExNkY3ODI5RTc5RX0)

> More details of usage are in [Parameter](m_t_ex_dur_param.md) and [Example](m_t_ex_dur_examp.md).

### Output files

After calling this macro, `*.sas7bdat` and `*.rtf` files are generated and could be referred. 

> `*.sas7bdat` tlf.outputfilename, work.final2qc(same with tlf.outputfilename) and work.final2output <br>
> `*.rtf` output/outputfilename

---

### Macros used
  - %istartv2
  - %istopv2
  - [%m_u_varexist](../../utility/m_u_varexist/m_u_varexist_descp.md)
  - [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_descp.md)
  - [%m_u_report](../../utility/m_u_report/m_u_report_descp.md)

>Note: Global macros %istartv2 and %istopv2 are used in O-GEM (root/cdar/common/gmd/prod/macro).  

### Used in

  - Not used in other macros.

---

