# m_t_aztoncef04 Examples

## Example 1: Basic Progression-Free Survival Analysis
**Program**
```sas
%m_t_aztoncef04(
    inds=adam.adtte,
    pop_flag=ITTFL="Y",
    whr=PARAMCD='TRPROGM',
    trtgrpn=trt01pn,
    pop_mvar=ITTpopb,
    effcount_index={cond=CNSR=0 # label=%nrbquote(Total events [a], n (%)) #level=0 subord=1},
    coxlog_modelkey=cox|logrank,
    km_method=KM,
    km_conftype=LOG,
    pair=1-2|3-2
);
```

**Description**
This example demonstrates a comprehensive progression-free survival analysis:
- Input dataset: adam.adtte
- Population: Intent-to-Treat (ITT)
- Filter: Progression parameter
- Treatment group: trt01pn
- Efficacy count for total events
- Cox proportional hazards and log-rank analysis
- Kaplan-Meier method with log-transformed confidence intervals
- Pairwise comparisons between treatment groups

## Example 2: Advanced Analysis with Custom Reporting
**Program**
```sas
%m_t_aztoncef04(
    inds=adam.adtte,
    pop_flag=ITTFL="Y",
    whr=PARAMCD='TRPROGM' and PARQUAL='INDEPENDENT ASSESSOR',
    trtgrpn=trt01pn,
    pop_mvar=ITTpopb,
    effcount_index={cond=CNSR=0 and find(evntdesc,'RECIST progression') # label=RECIST Progression #level=1 subord=2},
    coxlog_modelkey=cox|logrank,
    coxlog_alpha=0.05,
    coxlog_ties=EFRON,
    km_method=KM,
    km_conftype=ASINSQRT,
    km_step_list=0 to 60 by 10,
    km_step_unit=days,
    km_median_label=Progression-free survival (days),
    km_timelist_label=Progression-free survival rate,
    pair=1-2|3-2,
    lenlist=32#18#18#18,
    justlist=l#c#c#c,
    rtf=Y,
    sfx=pfs
);
```

**Description**
This advanced example showcases extensive configuration:
- Detailed RECIST progression event filtering
- Cox and log-rank model with specific confidence level
- EFRON method for handling ties
- Kaplan-Meier analysis with arcsine square root confidence intervals
- Time-point analysis from 0 to 60 days
- Custom column widths and justification
- RTF output generation

## Example 3: Stratified Analysis
**Program**
```sas
%m_t_aztoncef04(
    inds=adam.adtte,
    pop_flag=ITTFL="Y",
    trtgrpn=trt01pn,
    pop_mvar=ITTpopb,
    coxlog_strata=AGEGR1 REGION,
    coxlog_modelkey=cox,
    km_trtgrpnord=2 1 3,
    desc_stat_var=AGE,
    desc_stat_label=Patient Age
);
```

**Description**
Demonstrates advanced analysis features:
- Stratified analysis by age group and region
- Hazard ratio calculation
- Custom treatment group ordering
- Optional descriptive statistics for age

## Example 4: Descriptive Statistics Integration

```sas
%m_t_aztoncef04(
    /* Primary analysis parameters */
    inds=adam.adtte,
    pop_flag=ITTFL="Y",
    whr=PARAMCD='TRPROGM',
    trtgrpn=trt01pn,

    /* Descriptive statistics parameters */
    desc_stat_inds=adam.adsl,
    desc_stat_whr=ITTFL='Y',
    desc_stat_out=final_demo_stat,
    desc_stat_var=AGE WEIGHT HEIGHT,
    desc_stat_label=Age (years) Weight (kg) Height (cm),
    desc_stat_exclude_stat=con_Sum,
    desc_stat_decimal_list=1 2 1
);
```

#### Description
This example demonstrates the integration of descriptive statistics with the primary PFS analysis. 
- Uses `adam.adsl` as the input dataset for demographic statistics
- Filters the population using `ITTFL='Y'`
- Calculates statistics for Age, Weight, and Height
- Provides custom labels for each variable
- Excludes the Sum statistic
- Sets different decimal places for each variable

## Notes
- Always validate input data and parameters
- Consult statistical analysis plan for specific requirements
- Use `debug=Y` for intermediate dataset inspection
- Adjust parameters based on specific study design