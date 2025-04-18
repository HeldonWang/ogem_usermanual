# m_t_aztoncef04 Macro

## Overview
The `m_t_aztoncef04` macro is a comprehensive display macro for generating Kaplan-Mier related analysis tables.

## Purpose
Generates detailed statistical tables for efficacy analysis, specifically for progression-free survival, including:
- Efficacy count statistics
- Cox proportional hazards model analysis
- Kaplan-Meier survival estimates
- Optional descriptive statistics

## Key Features
- Comprehensive Survival analysis
- Multiple statistical analysis methods
- Flexible treatment group comparisons
- Configurable confidence interval calculations
- **Optional descriptive statistics generation**
- Customizable reporting options
- Performance-optimized analysis

## Compatibility
Compatible with O-GEM display macro framework and standard clinical trial data analysis workflows.

## Used in
Clinical trials requiring progression-free survival analysis, such as:
- Oncology studies
- Comparative treatment effectiveness research
- Phase II and Phase III clinical trials

## Related Macros
- [m_u_effcount](../../utility/m_u_effcount/m_u_effcount_descp.md)
- [m_u_cox_logrank](../../analysis/m_u_cox_logrank/m_u_cox_logrank_descp.md)
- [m_u_km](../../analysis/m_u_km/m_u_km_descp.md)

## Macro Dependencies
- %istartv2
- %istopv2
- %m_u_effcount
- %m_u_cox_logrank
- %m_u_km
- %m_u_report

## Output
Generates:
- SAS datasets with analysis results
- RTF tables
- Optional intermediate debugging datasets

## Typical Use Cases
- Comparing progression-free survival across treatment groups
- Calculating hazard ratios
- Generating Kaplan-Meier survival curves and estimates

## Performance Considerations
- Supports stratified analyses
- Configurable confidence interval methods
- Flexible handling of censored data

-------------

Display macros for template [AZTONCEF04](https://azcollaboration.sharepoint.com/sites/ChinaOncologyprogrammingteam-inhouseTFL/Shared%20Documents/Inhouse%20-%20TFL/01.%20Standard/AZ_AZSOL_Oncology_Table_Templates.xlsx?d=wb3d66b0139904a13afe54bdc53506584&csf=1&web=1&e=P55Jid&nav=MTVfezU2NDU5Nzk1LThDMzUtNDA2Qy04NjQ4LTIzMjA5M0E3RDdGRH0).<br>

> More details of usage are in [Parameter](m_t_aztoncef04_param.md) and [Example](m_t_aztoncef04_examp.md).

### Output files

After calling this macro, `*.sas7bdat` and `*.rtf` files are generated and could be referred. <br>

> `*.sas7bdat` tlf.output_filename, work.final2qc, work.final2output<br>
> `*.rtf` output/output_filename<br>

---

### Macros used

  - %istartv2
  - %istopv2
  - [%m_u_effcount](../../utility/m_u_binom_cp_grp/m_u_binom_cp_grp_descp.md)
  - [%m_u_cox_logrank](../../utility/m_u_binom_adjrate/m_u_binom_adjrate_descp.md)
  - [%m_u_km](../../utility/m_u_binom_odds/m_u_binom_odds_descp.md)
  - [%m_u_report](../../utility/m_u_report/m_u_report_descp.md)



>Note: Global macros %istartv2 and %istopv2 are used in O-GEM (root/cdar/common/gmd/prod/macro).  
 
### Used in

  - Not used in other macro

---

