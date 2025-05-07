# Syntax

%m_t_aztoncef02 (<br>
[***inds***=&lt;input-dataset&gt;](#inds), <br>
[***adsl***=&lt;adsl-dataset&gt;](#adsl),<br>
[***trtgrpn***=&lt;numeric-treatment-group-variable&gt;](#trtgrpn),<br>
[***trtgrp***=&lt;treatment-group-variable&gt;](#trtgrp),<br>
[***pop_flag***=&lt;filtered-population-condition&gt;](#popflag),<br>
[***whr***=&lt;additional-filtered-condition&gt;](#whr),<br>
[***strata***=&lt;statification-variable&gt;](#strata),<br>
[***event***=&lt;positive-event-value&gt;](#event),<br>
[***var***=&lt;analysis-variable&gt;](#var),<br>
[***reportout***=&lt;output-report-Y|N&gt;](#reportout),<br>
[***deBug***=&lt;Y|N&gt;](#debug)<br>
[***rate_ci***=&lt;display-rate-ci-Y|N&gt;](#rate_ci)<br>
[***rate_alpha***=&lt;rate-alpha-value&gt;](#rate_alpha),<br>
[***rate_decim***=&lt;rate-ci-decimal-place&gt;](#rate_decim),<br>
[***rate_missval***=&lt;rate-missing-value-display-text&gt;](#rate_missval),<br>
[***rate_adj***=&lt;display-adjusted-rate-Y|N&gt;](#rate_adj)<br>
[***rate_adj_alpha***=&lt;adjusted-rate-alpha-level&gt;](#rate_adj_alpha),<br>
[***rate_adj_cidecim***=&lt;adjusted-rate-confidence-interval-decimal-place&gt;](#rate_adj_cidecim),<br>
[***rate_adj_missval***=&lt;adjusted-rate-missing-value-display-text&gt;](#rate_adj_missval),<br>
[***odds***=&lt;display-odds-ratio-Y|N&gt;](#odds)<br>
[***cmh***=&lt;display-relative-risk-Y|N&gt;](#cmh)<br>
[***trtpair***=&lt;comparison-group-pair&gt;](#trtpair),<br>
[***cal_alpha***=&lt;odds-ratio-and-relative-risk-alpha-level&gt;](#cal_alpha),<br>
[***cal_pside***=&lt;odds-ratio-and-relative-risk-pvalue-sides&gt;](#cal_pside),<br>
[***cal_pdecim***=&lt;odds-ratio-and-relative-risk-pvalue-decimal-place&gt;](#cal_pdecim),<br>
[***cal_cidecim***=&lt;odds-ratio-and-relative-risk-confidence-interval-decimal-place&gt;](#cal_cidecim),<br>
[***cal_missval***=&lt;odds-ratio-and-relative-risk-missing-value-display-text&gt;](#cal_missval),<br>
[***cmh_cltype***=&lt;CI-calculation-type&gt;](#cmh_cltype),<br>
[***collabel***=&lt;column-labels&gt;](#collabel),<br>
[***lenlist***=&lt;list-of-column-width&gt;](#lenlist), <br>
[***justlist***=&lt;list-of-l|c|r (alignment column: c="center", l="left", r="right")&gt;](#justlist), <br>
[***justlist_header***=&lt;list-of-l|c|r (alignment header: c="center", l="left", r="right")&gt;](#justlistheader), <br>
[***nolblist***=&lt;list-of-Y|N (suppress the display of header text or not)&gt;](#nolblist), <br>
[***orderlist***=&lt;list-of-Y|N (order option used or not)&gt;](#orderlist), <br>
[***defcol***=&lt;description-text-of-rules-for-subtitles-or-columns-name&gt;](#defcol), <br>
[***pg***=&lt;maximum-rows-per-page&gt;](#pg)<br>
[***blank_after***=&lt;variable-insert-blank-line-after&gt;](#blankafter), <br>
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


#### adsl
specifies the input adsl dataset, which is used to calculate the total number of people (denominator) in each group.<br>

Item|Contents
:---|:---
Default|
Value|A one or two level dataset name.
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`adsl` <br>`adam.adsl`

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
