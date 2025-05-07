# Syntax

%m_t_aztoncef04 (<br>
[***inds***=&lt;input-dataset&gt;](#inds), <br>
[***whr***=&lt;additional-filtered-condition&gt;](#whr),<br>
[***pop_flag***=&lt;filtered-population-condition&gt;](#pop_flag),<br>
[***trtgrpn***=&lt;numeric-treatment-group-variable&gt;](#trtgrpn),<br>
[***pop_mvar***=&lt;macro-prefix-label-for-treatment(s)&gt;](#pop_mvar),<br>
[***byvar***=&lt;by-variable-name&gt;](#byvar),<br>
[***var***=&lt;analysis-variable&gt;](#var),<br>
[***alpha***=&lt;alpha-value&gt;](#alpha),<br>
[***pair***=&lt;pairs-sequence&gt;](#pair),<br>
[***debug***=&lt;Y|N&gt;](#debug)<br>
[***effcount_index***=&lt;calculation-index&gt;](#effcount_index), <br>
[***coxlog_out***=&lt;output-dataset&gt;](#coxlog_out),<br> 
[***coxlog_blocklbl***=&lt;block-label&gt;](#coxlog_blocklbl),<br>
[***coxlog_modelkey***=&lt;model-key&gt;](#coxlog_modelkey),<br>
[***coxlog_alpha***=&lt;alpha-value&gt;](#coxlog_alpha),<br>
[***ccoxlog_ensor***=&lt;censor-variable&gt;](#coxlog_censor),<br>
[***coxlog_indicator***=&lt;censor-indicator&gt;](#coxlog_indicator),<br>
[***coxlog_ties***=&lt;ties-handle-method&gt;](#coxlog_ties),<br>
[***coxlog_strata***=&lt;stratification-variable&gt;](#coxlog_strata),<br>
[***coxlog_pvalside***=&lt;pvalue-sides&gt;](#coxlog_pvalside),<br>
[***coxlog_missval***=&lt;missing-value-display-text&gt;](#coxlog_missval),<br>
[***coxlog_digit***=&lt;decimal-place-for-ratio-CI&gt;](#coxlog_digit),<br>
[***coxlog_cidecimal***=&lt;CI-decimal-place-increase-from-digit&gt;](#coxlog_cidecimal),<br>
[***coxlog_hrlbl***=&lt;hazard-ratio-label&gt;](#coxlog_hrlbl),<br>
[***coxlog_cilbl***=&lt;confidence-interval-label&gt;](#coxlog_cilbl),<br>
[***km_method***=&lt;curve-generation-method&gt;](#km_method),<br>
[***km_conftype***=&lt;confidence-interval-computation-type&gt;](#km_conftype),<br>
[***km_trtgrpnorder***=&lt;numeric-treatment-group-variable-order&gt;](#km_trtgrpnorder),<br>
[***km_cen_num***=&lt;CENS-non-event-constant&gt;](#km_cen_num),<br> 
[***km_step_list***=&lt;time-point-list&gt;](#km_step_list),<br> 
[***km_step_unit***=&lt;step-unit&gt;](#km_step_unit),<br> 
[***km_outdat_median***=&lt;median-dataset-name&gt;](#km_outdat_median),<br>
[***km_median_label***=&lt;median-dataset-display-label&gt;](#km_median_label),<br>
[***km_outdat_timelist***=&lt;timelist-dataset-name&gt;](#km_outdat_timelist),<br>
[***km_timelist_label***=&lt;timelist-dataset-display-label&gt;](#km_timelist_label),<br>
[***lenlist***=&lt;list-of-column-width&gt;](#lenlist), <br>
[***justlist***=&lt;list-of-l|c|r (alignment column: c="center", l="left", r="right")&gt;](#justlist), <br>
[***justlist_header***=&lt;list-of-l|c|r (alignment header: c="center", l="left", r="right")&gt;](#justlistheader), <br>
[***nolblist***=&lt;list-of-Y|N (suppress the display of header text or not)&gt;](#nolblist), <br>
[***orderlist***=&lt;list-of-Y|N (order option used or not)&gt;](#orderlist), <br>
[***defcol***=&lt;description-text-of-rules-for-subtitles-or-columns-name&gt;](#defcol), <br>
[***blank_after***=&lt;variable-insert-blank-line-after&gt;](#blankafter), <br>
[***rtf***=&lt;rtf-output-Y|N&gt;](#rtf), <br>
[***sfx***=&lt;suffix&gt;](#sfx), <br>
);

# Parameter

## Control input
#### inds
specifies the input data set.<br>

Item|Contents
:---|:---
Default|
Value| A one or two level dataset name. 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`adae` <br>`adam.adae`

#### whr
specifies filtered condition used in where statement. <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Filter input dataset `inds`.
Eg.|`TRTEMFL="Y"`

#### pop_flag
specifies filtered population, condition used in where statement.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Filter input dataset both `merge_adsl` and `inds`.
Eg.|`SAFFL="Y"`

#### trtgrpn
specifies the variable name of numeric value of treatment group.

Item|Contents
:---|:---
Default|
Value| 
Requirement|Mandatory
Restriction|The variable type of `trtgrpn` must be numeric.
Interaction| 
Eg.|`trt01pn` 

#### pop_mvar
specifies the macro variable used to class different groups which will be displayed as headers or contents.
 
Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|This should be the same as the `gmacro` in [%m_u_popn](../../utility/m_u_popn/m_u_popn_descp.md).
Interaction|Same as `pop_mvar` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md).
Eg.|`saspopb`

## Control general analysis

#### byvar
specifies the by variable that will be used for statistical computation.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|Variable specified by `byvar` must be character.
Interaction|
Eg.|`AGEGR1`

#### var
specifies the variable that will be analyzed on.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|Variable specified by `var` must be numeric.
Interaction|
Eg.|`aval`

#### alpha
specifies the alpha level for confidence interval. 

Item|Contents
:---|:---
Default|.05
Value| 
Requirement|Optional
Restriction|
Interaction|  
Eg.|`.05`

#### pair
specifies the pair sequence for pairwise statistics.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`1-2|5-2`

## Control effcount analysis

#### effcount_index
specifies indexes for calcuation including condition, suborder, level and label.

Item|Contents
:---|:---
Default|
Value|list of indexes where each index is quoted by {}, within each index, use leading word: cond=,label=,level=,subord= to sperate.
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`{cond=CNSR=0 # label=%nrbquote(Total events [a], n (%)) #level=0 subord=1}{cond=cnsr=0 and find(evntdesc,'RECIST progression') label=RECIST progression level=1 subord=2}`

## Control cox-log related

#### coxlog_out
specifies the output dataset name.

Item|Contents
:---|:---
Default|
Value| A one or two level dataset name. 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`final_output`

#### coxlog_blocklbl
specifies the col_blocklabel display text in the output dataset.<br>

Item|Contents
:---|:---
Default|`Comparison of treatment groups`
Value| 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Comparison of treatment groups`

#### coxlog_modelkey
specifies the required statistics to calculate.<br>
Input `cox` indicates that hazard ratio and confidence interval are required and will be calculated using proportional hazards model. <br>
Input `logrank` indicates that P-value is required and will be calculated using log-rank test. <br>
Input `cox|logrank` indicates that hazard ratio, confidence interval and P-value are all required. <br>

Item|Contents
:---|:---
Default|
Value|`cox`,`logrank`,`cox|logrank`
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`cox|logrank`

#### coxlog_alpha
specifies the alpha level for confidence interval. 

Item|Contents
:---|:---
Default|.05
Value| 
Requirement|Optional
Restriction|Numeric value between 0-1 and separated by | if needs to calculate multiple CIs.
Interaction|  
Eg.|`.05`

#### coxlog_censor
specifies the censor variable name. 

Item|Contents
:---|:---
Default|CNSR
Value| 
Requirement|Optional
Restriction|
Interaction|  
Eg.|`CNSR`

#### coxlog_indicator
specifies the indicator for censor. 

Item|Contents
:---|:---
Default|1
Value| 
Requirement|Optional
Restriction|Value specified by `indicator` must exisit in `censor` variable
Interaction|  
Eg.|`1`

#### coxlog_ties
specifies the method used to handle ties in the failure time.<br>

Item|Contents
:---|:---
Default|EFRON
Value|`BRESLOW`,`DISCRETE`,`EFRON`,`EXACT`
Requirement|Optional
Restriction|
Interaction|
Eg.|`BRESLOW`

#### coxlog_strata
specifies the stratification variables.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`STRAT1`

#### coxlog_pvalside
specifies the number of sides for P-value calculatoin in log-rank test.

Item|Contents
:---|:---
Default|2
Value| 
Requirement|Optional
Restriction|
Interaction| 
Eg.|`1` <br> 

#### coxlog_missval
specifies the display value when point estimation is not estimable.

Item|Contents
:---|:---
Default|NC
Value|
Requirement|Optional
Restriction|
Interaction| 
Eg.|`NE` <br>

#### coxlog_digit
specifies the decimal places to keep for hazard ratio and confidence interval.

Item|Contents
:---|:---
Default|2
Value|
Requirement|Optional
Restriction|`digit` must be numeric constant
Interaction| 
Eg.|`2` <br>

#### coxlog_cidecimal
specifies the decimal place to add on top of `digit` and will be used as confidence interval's decimal place.

Item|Contents
:---|:---
Default|1
Value|
Requirement|Optional
Restriction|`cidecimal` must be numeric constant
Interaction| 
Eg.|`1` <br>

#### coxlog_hrlbl
specifies the hazard ratio display label.

Item|Contents
:---|:---
Default|`Hazard ratio`
Value|
Requirement|Optional
Restriction|
Interaction| 
Eg.|`Hazard ratio` <br>

#### coxlog_pvallbl
specifies the P-value display label.

Item|Contents
:---|:---
Default|`p-value`
Value|
Requirement|Optional
Restriction|
Interaction| 
Eg.|`P-value` <br>

#### coxlog_cilbl
specifies the confidence interval display label.

Item|Contents
:---|:---
Default|`Hazard ratio`
Value|
Requirement|Optional
Restriction|
Interaction| 
Eg.|`Hazard ratio` <br>

## Control KM related

#### km_method
specifies the method used to generate the curves. <br>
Please choose method based on SAP and after confirming with statistician.

Item|Contents
:---|:---
Default|KM
Value|`KM`,`CIF` 
Requirement|Optional
Restriction|
Interaction|  
Eg.|`KM`

#### km_conftype
specifies the method used to compute confidence intervals for Kaplan-Meier survival estimate. <br>
Please choose method based on SAP and after confirming with statistician.

Item|Contents
:---|:---
Default|LOG
Value|`LOG`,`ASINSQRT`,`LOGLOG`,`LINEAR`,`LOGIT`
Requirement|Optional
Restriction|
Interaction|  
Eg.|`ASINSQRT`

#### km_trtgrpnord
specifies the preferred order of the alphabetically sorted `trtgrpn` <br>
eg: Within variable `trtgrpn` there are values: A B C. <br>
If input `trtgrpnord` to be 2 1 3 will reorder to be B A C.

Item|Contents
:---|:---
Default|
Value| 
Requirement|Optional
Restriction|
Interaction| 
Eg.|`2 3 1` <br> 

#### km_cen_num
specifies the value of a non-event in CENS

Item|Contents
:---|:---
Default|1
Value| 
Requirement|Optional
Restriction|`cen_num` must be a numeric constant
Interaction| 
Eg.|`1` <br> 

#### km_step_list
specifies the time-points to collect Kaplan-Meier survial estimates with confidence intervals

Item|Contents
:---|:---
Default|
Value| 
Requirement|Optional
Restriction|Can be entered as numeric values separated by spaces OR in a list format
Interaction| 
Eg.|`0 to 60 by 10` <br>

#### km_step_unit
specifies the unit of the timepoints

Item|Contents
:---|:---
Default|
Value| 
Requirement|Optional
Restriction|
Interaction| 
Eg.|`days` <br>

#### km_outdat_median
specifies the median dataset output name.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`final_median`

#### km_median_label
specifies the col_blocklabel in median dataset.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Progression-free survival (days)`

#### km_outdat_timelist
specifies the timelist dataset output name.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`final_timelist`

#### km_timelist_label
specifies the first row value of col_blocklabel in median dataset.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Progression-free survival rate`

## Control reporting

#### lenlist
specifies the width proportion for each column. The lengths should be separated by "#" and their sum should be less than or equal to 99 per page. If this parameter is not provided, then column length will be calculated in macro automatically. The current algorithm for automatically calculating column widths is not yet mature enough. It is recommended that users manually adjust based on the output situation of RTF.<br>

Item|Contents
:---|:---
Default|Auto-assigned based on the length of header/content for each column
Value|
Requirement|Optional
Restriction|If specified, all columns must be assigned with value respectively, the number of values separated by "#" must be equal to the number of columns.
Interaction|
Eg.|`5#2#2#2`

#### justlist
specifies the content alignment for each column, separated by "#". "l" means left-alignment, "c" means center-alignment, "r" means right-alignment.<br>

Item|Contents
:---|:---
Default|
Value|`l, c, r` for each column.
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`l#c#c#c`

#### justlist_header
specifies the header alignment for each column, separated by "#". "l" means left-alignment, "c" means center-alignment, "r" means right-alignment.<br>

Item|Contents
:---|:---
Default|
Value|`l, c, r` for each column.
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`l#c#c#c`

#### nolblist
specifies whether suppress the display of header name for each column, separated by "#". "Y" means do not display header name.<br>

Item|Contents
:---|:---
Default|
Value|`Y, N` for each column.
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Y#N#N#N`

#### orderlist
specifies whether to apply the ORDER option for each column, separated by "#". "Y" means order variable, which does not repeat the value from one row to the next if the value does not change. <br>

Item|Contents
:---|:---
Default|
Value|`Y, N` for each column.
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Y#N#N#N`

#### defcol
specifies the columns that need to be displayed with each column name separated by a space, or add subtitles between columns (which will be used in proc report column statement). If leave it as null or not to state it, the default values will be used.<br>

Item|Contents
:---|:---
Default|display all columns
Value|
Requirement|Optional
Restriction|The column name is the variable name in input dataset `table` which should be character variables and starts from "col".
Interaction|
Eg.|`col1 col2 col3`<br>`(col1)("(*ESC*)S={just = center borderbottomwidth=0pt MARGINBOTTOM= 2pt } SUBTITLE (*ESC*)n (N = 100)(*ESC*)S={}" col2 col3) `

#### blank_after
specifies the variable on which "insert blank line" is based.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|The variable should exist in input dataset `table`.
Interaction|
Eg.|`ORDER1`

#### rtf
specifies whether to output rtf report or not.

Item|Contents
:---|:---
Default|
Value|`Y, N` 
Requirement|Mandatory
Restriction|
Interaction| 
Eg.|`N`

#### sfx
specifies the suffix for the output file. If multiple outputs are generated in one code, then sfx is used to distinguish the outputs.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|saf

## Control debug

#### deBug
specifies whether need to debug or not, if not "Y" then intermediate datasets will be deleted. If leave it as null or not to state it, the default values will be used.<br>

Item|Contents
:---|:---
Default|`N`
Value|`Y, N` (not case sensitive)
Requirement|Optional
Restriction|
Interaction|
Eg.|`N`





















#### trtgrpn
specifies the variable name of numeric value of treatment group.

Item|Contents
:---|:---
Default|
Value| 
Requirement|Mandatory
Restriction|The variable type of `trtgrpn` must be numeric.
Interaction| 
Eg.|`trt01pn` 

#### trtgrp
specifies the variable name of treatment group.

Item|Contents
:---|:---
Default|
Value| 
Requirement|Mandatory
Restriction|The variable type of `trtgrp` must be chracter.
Interaction| 
Eg.|`trt01p`

#### pop_flag
specifies filtered population, condition used in where statement.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Filter input dataset both `merge_adsl` and `inds`.
Eg.|`SAFFL="Y"`

#### whr
specifies filtered condition used in where statement. <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Filter input dataset `inds`.
Eg.|`TRTEMFL="Y"`

## Control rate analysis

#### rate_ci
specifies whether display confidence interval for rate or not. <br>

Item|Contents
:---|:---
Default|
Value|`Y, N` 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Y`

#### rate_alpha
specifies the alpha level for binomial confidence interval. 

Item|Contents
:---|:---
Default|.05
Value| 
Requirement|Optional
Restriction|
Interaction|  
Eg.|`.05`

#### rate_decim
specifies the decimal place for the calculated confidence interval. 

Item|Contents
:---|:---
Default|1
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`1`

#### rate_missval
specifies the display value when confidence interval for rate is unable to be calculated and returns missing value.

Item|Contents
:---|:---
Default|`NC`.
Value|
Requirement|Optional
Restriction|
Interaction|  
Eg.|`NA`


## Control adjusted rate analysis

#### rate_adj
specifies whether display adjusted rate related statistics or not. <br>

Item|Contents
:---|:---
Default|
Value|`Y, N` 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Y`

#### rate_adj_alpha
specifies the alpha level for adjustaed rate confidence interval. 

Item|Contents
:---|:---
Default|.05
Value| 
Requirement|Optional
Restriction|
Interaction|  
Eg.|`.05`

#### rate_adj_cidecim
specifies the decimal places to keep for adjustaed rate confidence intervals.

Item|Contents
:---|:---
Default|2
Value| 
Requirement|Optional
Restriction|
Interaction| 
Eg.|`3`

#### rate_adj_missval
specifies the display value when adjustaed rate confidence interval is unable to be calculated and returns missing value.

Item|Contents
:---|:---
Default|NA
Value|
Requirement|Optional
Restriction|
Interaction| 
Eg.|`NE` <br>

## Control odds ratio and CMH analysis

#### odds
specifies whether display odds ratio related statistics or not. <br>

Item|Contents
:---|:---
Default|
Value|`Y, N` 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Y`

#### cmh
specifies whether display cmh    related statistics or not. <br>

Item|Contents
:---|:---
Default|
Value|`Y, N` 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Y`

#### trtpair
specifies the comparison treatment groups that needs to be analyzed.

Item|Contents
:---|:---
Default|
Value| 
Requirement|Required
Restriction|The treatment groups specified must be within the analysis dataset.
Interaction| 
Eg.|`str(1,2)` <br> `1 2` 

#### cal_alpha
specifies the alpha level for odds ratio and cmh confidence interval. 

Item|Contents
:---|:---
Default|.05
Value| 
Requirement|Optional
Restriction|
Interaction|  
Eg.|`.05`

#### cal_pside
specifies the number of sides for odds ratio and cmh P-value calculatoin.

Item|Contents
:---|:---
Default|2
Value| 
Requirement|Optional
Restriction|
Interaction| 
Eg.|`1` <br>

#### cal_pdecim
specifies the decimal places to keep for odds ratio and cmh P-value.

Item|Contents
:---|:---
Default|2
Value| 
Requirement|Optional
Restriction|
Interaction| 
Eg.|`adsl` <br> `adam.adsl`

#### cal_cidecim
specifies the decimal places to keep for odds ratio and cmh confidence intervals.

Item|Contents
:---|:---
Default|2
Value| 
Requirement|Optional
Restriction|
Interaction| 
Eg.|3

#### cal_missval
specifies the display value when odds ratio and cmh confidence interval is unable to be calculated and returns missing value.

Item|Contents
:---|:---
Default|NA
Value|
Requirement|Optional
Restriction|
Interaction| 
Eg.|`NE` <br>

#### cmh_cltype
specifies the type for cmh confidence intervals calculation.

Item|Contents
:---|:---
Default|mn
Value|
Requirement|Optional
Restriction|Value of `cltype` can only be chose from the following: AC,EXACT,HA,MN,NEWCOMBE,WALD
Interaction| 
Eg.|`AC` <br>

## Control reporting

#### reportout
specifies whether to output rtf report or not.

Item|Contents
:---|:---
Default|
Value|`Y, N` 
Requirement|Mandatory
Restriction|
Interaction| 
Eg.|`N`

#### collabel
specifies the labels/headers for columns.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|Format for `collabel` must follow the following: column_name='label' and seperate labels with space.
Interaction|
Eg.|`col1='Group A' col2='Group B'`

#### lenlist
specifies the width proportion for each column. The lengths should be separated by "#" and their sum should be less than or equal to 99 per page. If this parameter is not provided, then column length will be calculated in macro automatically. The current algorithm for automatically calculating column widths is not yet mature enough. It is recommended that users manually adjust based on the output situation of RTF.<br>

Item|Contents
:---|:---
Default|Auto-assigned based on the length of header/content for each column
Value|
Requirement|Optional
Restriction|If specified, all columns must be assigned with value respectively, the number of values separated by "#" must be equal to the number of columns.
Interaction|
Eg.|`5#2#2#2`

#### justlist
specifies the content alignment for each column, separated by "#". "l" means left-alignment, "c" means center-alignment, "r" means right-alignment.<br>

Item|Contents
:---|:---
Default|
Value|`l, c, r` for each column.
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`l#c#c#c`

#### justlist_header
specifies the header alignment for each column, separated by "#". "l" means left-alignment, "c" means center-alignment, "r" means right-alignment.<br>

Item|Contents
:---|:---
Default|
Value|`l, c, r` for each column.
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`l#c#c#c`

#### nolblist
specifies whether suppress the display of header name for each column, separated by "#". "Y" means do not display header name.<br>

Item|Contents
:---|:---
Default|
Value|`Y, N` for each column.
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Y#N#N#N`

#### orderlist
specifies whether to apply the ORDER option for each column, separated by "#". "Y" means order variable, which does not repeat the value from one row to the next if the value does not change. <br>

Item|Contents
:---|:---
Default|
Value|`Y, N` for each column.
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Y#N#N#N`

#### defcol
specifies the columns that need to be displayed with each column name separated by a space, or add subtitles between columns (which will be used in proc report column statement). If leave it as null or not to state it, the default values will be used.<br>

Item|Contents
:---|:---
Default|display all columns
Value|
Requirement|Optional
Restriction|The column name is the variable name in input dataset `table` which should be character variables and starts from "col".
Interaction|
Eg.|`col1 col2 col3`<br>`(col1)("(*ESC*)S={just = center borderbottomwidth=0pt MARGINBOTTOM= 2pt } SUBTITLE (*ESC*)n (N = 100)(*ESC*)S={}" col2 col3) `

#### pg
specifies the maximum number of rows displayed per page in the report.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction| When `pg_byvar=Y`, will recalculate the maximum number of rows by the page-by variable (eg. byvar).
Eg.|`18`

#### blank_after
specifies the variable on which "insert blank line" is based.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|The variable should exist in input dataset `table`.
Interaction|
Eg.|`ORDER1`

#### sfx
specifies the suffix for the output file. If multiple outputs are generated in one code, then sfx is used to distinguish the outputs.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|saf
