# Syntax

%m_t_ex_dur (<br>
[***inds***=&lt;input-data-set&gt;](#inds), <br>
[***pop_flag***=&lt;filtered-population-condition&gt;](#popflag),<br>
[***pop_mvar***=&lt;macro-prefix-label-for-treatment(s)&gt;](#popmvar),<br>
[***trtgrpn***=&lt;numeric-treatment-variable&gt;](#trtgrpn),<br>
[***total_YN***=&lt;Y|N (display total treatment column or not)&gt;](#totalyn),<br>
[***varlist_cat***=&lt;list-of-categorical-variable(s)&gt;](#varlistcat),<br>
[***varlist_cont***=&lt;list-of-continuous-variable(s)&gt;](#varlistcont),<br>
[***varlist_cont***=&lt;list-of-continuous-variable(s)&gt;](#varlistcont),<br>
[***decimal_list***=&lt;list-of-maximum-decimal-places&gt;](#decimallist),<br>
[***denominator***=&lt;denominator-dataset&gt;](#denominator),<br>
[***formatlist***=&lt;list-of-format-for-categorical-variable(s)&gt;](#formatlist),<br>
[***labellist***=&lt;list-of-display-text-of-categorical/continuous-variable(s)&gt;](#labellist),<br>
[***exclude_stat***=&lt;list-of-excluded-statistic(s)&gt;](#excludestat),<br>
[***total_rule***=&lt;list-of-calculation-formula&gt;](#totalrule),<br>
[***total_rowtext***=&lt;list-of-display-text-of-row&gt;](#totalrowtext),<br>
[***total_decimal_max***=&lt;list-of-maxinumn-number-of-decimal-place&gt;](#totaldecimalmax),<br>
[***lenlist***=&lt;list-of-column-width&gt;](#lenlist),<br>
[***justlist***=&lt;list-of-l|c|r (alignment column: c="center", l="left", r="right")&gt;](#justlist),<br>
[***justlist_header***=&lt;list-of-l|c|r (alignment header: c="center", l="left", r="right")&gt;](#justlistheader),<br>
[***nolblist***=&lt;list-of-Y|N (suppress the display of header text or not)&gt;](#nolblist),<br>
[***orderlist***=&lt;list-of-Y|N (order option used or not)&gt;](#orderlist),<br>
[***defcol***=&lt;description-text-of-rules-for-subtitles-or-columns-name&gt;](#defcol),<br>
[***blank_after***=&lt;variable-insert-blank-line-after&gt;](#blankafter),<br>
[***pg***=&lt;maximum-rows-per-page&gt;](#pg),<br>
[***sfx***=&lt;suffix&gt;](#sfx),<br>
[***deBug***=&lt;Y|N&gt;](#debug)<br>
);

---

# Parameter

## Control input

#### inds
specifies the input data set.

Item|Contents
:---|:---
Default|
Value| A one or two level dataset name. 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`adex` <br>`adam.adex`


#### pop_flag
specifies filtered population, condition used in where statement.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Filter input dataset for `inds.`.
Eg.|`SAFFL = "Y"`

## Control analysis

#### pop_mvar
specifies the macro variable used to class different groups which will be displayed as headers or contents.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|This should be the same as the `gmacro` in [%m_u_popn](../../utility/m_u_popn/m_u_popn_descp.md).
Interaction|Same as `pop_mvar` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md).
Eg.|`saspopb`

#### trtgrpn
specifies the treatment variable(N).

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|specifies the treatment variable(N). 
Interaction|
Eg.|`TRT01AN`

#### total_YN
specifies whether to display total group or not. If leave it as null or not to state it, the default values will be used.<br>

> **Note:**<br>
>Recommend not to change the structure of `inds` dataset to include total group (more details for total group calculation refer to [%m_u_popn](../../utility/m_u_popn/m_u_popn_descp.md)).<br>
> If in `inds`, `trtgrpn` doesn't include total group but need to display, then `total_YN=Y` (The last format value of `pop_mvar` defined by %m_u_popn should be the total group).<br>
> If `trtgrpn` already includes total group in `inds`, then if the last format value of `pop_mvar` is total group, `total_YN=N`; else if the last format value of `pop_mvar` is not the total group, `total_YN=Y`.<br>

Item|Contents
:---|:---
Default|`N`
Value| `Y, N` (not case sensitive)
Requirement|Optional
Restriction|
Interaction| If "Y", the last group defined in `pop_mvar` will be treated as total group and kept. If "N", the last group defined in `pop_mvar` will be treated as total group and deleted. Thus, if "Y", the last format value should be the total group in `pop_mvar`.
Eg.|`N`


#### varlist_cat
specifies the categorical variables needed to be calculated. Multiple variables should be separated by spaces. Variables can be numeric or character. For numeric variables, the format must be assigned. If format are pre-define, values are display as formatted values. 

Item|Contents
:---|:---
Default|
Value| Allow one or more variables.
Requirement|Optional
Restriction|Only one variable if `denom_dt` is provided.
Interaction|Same as `varlist_cat` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md).
Eg.|`EXGRP`
 
  
#### varlist_cont
specifies the continuous variables that descriptive statistics need to be calculated. Multiple variables should be separated by spaces.

Item|Contents
:---|:---
Default| 
Value|Allow one or more variables.
Requirement|Optional
Restriction|
Interaction| Same as `varlist_cont` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md).
Eg.|`TRTDURN`

#### decimal_list
specifies the maximum decimal places of "Min/Max" for `varlist_cont`, "Mean", "SD", "Median", "Q1" and "Q3" will have one more decimal places. If it's determined by the values in dataset, then leave the corresponding value to null. Values are separated by "#".  <br>  

Item|Contents
:---|:---
Default|NULL
Value|
Requirement|Optional
Restriction|The number of elements should be the same with `varlist_cont`.
Interaction| Same as `decimal_list` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md).
Eg.|`#2#`

>Note: For those variables with non-Terminating, non-Repeating decimal, `decimal_list` shouldn't be null. <br>

#### output_order
specifies the display order of variables in output. Multiple variables should be separated by spaces. If no variable output order is specifed, then use the default order. <br>

Item|Contents
:---|:---
Default| Values listed in `varlist_cont` option first and then values listed in `varlist_cat` options.
Value|Allow one or more categorical variables or continuous variables.
Requirement|Optional
Restriction|
Interaction| Same as `output_order` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md).
Eg.|`TRTDURN EXGRP`
 

#### denominator
specifies the dataset used as the denominator. If leave it as null or not to state it, the default values will be used.
 
Item|Contents
:---|:---
Default|If this parameter is empty, use the filtered `inds` as the denominator for calculation
Value|
Requirement|Optional
Restriction|Need retain at least the variables USUBJID and STUDYID in the numerator dataset `inds`, and denominator dataset `denom_dt` needs to contain the variable USUBJID at least. If `trtgrpn` is provided, then `trtgrpn` should also exist in both `inds` and `denom_dt`.
Interaction|Same as `denom_dt` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md). 
Eg.|`adsl`

 
#### formatlist

specifies row text for levels of `varlist_cat`. <br>
Note that 'format' is required at the beginning.

Item|Contents
:---|:---
Default| 
Value|
Requirement|Optional
Restriction|
Interaction| 
Eg.|`format EXGRP $EXGRP.`


#### labellist 

specifies row text for `varlist_cat` and `varlist_cont`.<br>
Note that 'label' is required at the beginning.<br>

Item|Contents
:---|:---
Default| 
Value|
Requirement|Optional
Restriction|
Interaction| 
Eg.|`label  TRTPDURM='Duration of exposure (months) [a]' TRTDURM='Actual duration of exposure (months) [b]' TRTDURMCAT='Actual duration of exposure category (months)'`

#### exclude_stat
specifies the statistics that do not need to be displayed. Values are separated by spaces.  <br> 

Item|Contents
:---|:---
Default|
Value| `con_mis con_n con_Mean con_SD con_Min con_Q1 con_Median con_Q3 con_Max con_Sum cat_n cat_percent`  
Requirement|Mandatory
Restriction|This parameter will be applied to all the analysis sections.
Interaction|Same as `exclude_stat` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md).  
Eg.|`con_mis con_Sum`

#### total_rule
specifies the rule to calculate the "Total treatment [days|months|years]", the order is the same with `varlist_cont`, separated by "#". 

Item|Contents
:---|:---
Default| 
Value| 
Requirement|Optional
Restriction|`total_rule`, `total_rowtext`, and `total_decimal_max` must be specfied if total treatment records are required.
Interaction|
Eg.|`/7#/7#` (If there're 3 variables and the first 2 need to calculate sum)

>Note: `/1` for days, `/7` for weeks, `/30.4375` for months,`/365.25` for years when origial unit is 'Days'. Rules are based on specified details of units.

#### total_rowtext
specifies the row text you want to display for the total row, the order is the same with `varlist_cont`, separated by "#". 

Item|Contents
:---|:---
Default| 
Value|
Requirement|Optional
Restriction|`total_rule`, `total_rowtext`, and `total_decimal_max` must be specfied if total treatment records are required.
Interaction|
Eg.|`Total treatment (days)#Actual treatment (days)#`

#### total_decimal_max
specifies the maximum decimal place needed for the total row, the order is the same with `varlist_cont`, separated by "#". 

Item|Contents
:---|:---
Default| 
Value|
Requirement|Optional
Restriction|`total_rule`, `total_rowtext`, and `total_decimal_max` must be specfied if total treatment records are required.
Interaction|
Eg.|`1#1#`

>Note: For those variables with non-Terminating, non-Repeating decimal, `total_decimal_max` shouldn't be null. <br>


## Control reporting

> **Note:**
> Header and contents of the first 2 columns are left aligned. The rest of columns are centered aligned.

> More details of `lenlist`, `justlist`, `justlist_header`, `nolblist`, `orderlist`, `defcol`, `blank_after`, and `pg` could refer [%m_u_report](../../utility/m_u_report/m_u_report_param.md).

#### lenlist
specifies the width proportion for each column. The lengths should be separated by "#" and their sum should be less than or equal to 99 per page. If this parameter is not provided, then column length will be calculated in macro automatically. The current algorithm for automatically calculating column widths is not yet mature enough. It is recommended that users manually adjust based on the output situation of RTF.<br>
 
Item|Contents
:---|:---
Default|Auto-assigned based on the length of header/content for each column.
Value|
Requirement|Optional
Restriction|If specified, all columns must be assigned with value respectively, the number of values separated by "#" must be equal to the number of columns.
Interaction|Same as `lenlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`20#9#9#9#9#9#9#9#9`

#### justlist
specifies the content alignment for each column, separated by "#". "l" means left-alignment, "c" means center-alignment, "r" means right-alignment. If leave it as null or not to state it, the default values will be used.<br>

Item|Contents
:---|:---
Default|`l` for first column and `c` for other columns.
Value|`l, c, r` for each column.
Requirement|Optional
Restriction|
Interaction|Same as `justlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).

Eg.|`l#c#c#c`

#### justlist_header
specifies the header alignment for each column, separated by "#". "l" means left-alignment, "c" means center-alignment, "r" means right-alignment. <br>
 

Item|Contents
:---|:---
Default| 
Value|`l, c, r` for each column.
Requirement|Optional
Restriction|
Interaction|Same as `justlist_header` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`l#c#c#c`

#### nolblist
specifies whether suppress the display of header name for each column, separated by "#". "Y" means do not display header name.   <br>
 

Item|Contents
:---|:---
Default| 
Value|"Y", "N" for each column.
Requirement|Optional
Restriction|
Interaction|Same as `nolblist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`Y#N#N#N`

#### orderlist
specifies whether to apply the ORDER option for each column, separated by "#". "Y" means order variable, which does not repeat the value from one row to the next if the value does not change.  <br>
 

Item|Contents
:---|:---
Default| 
Value|`Y, N` for each column.
Requirement|Mandatory
Restriction|
Interaction|Same as `orderlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`Y#N#N#N`

#### defcol
specifies the columns that need to be displayed with each column name separated by a space, or add subtitles between columns (which will be used in proc report column statement). If leave it as null or not to state it, the default values will be used.<br>
 
Item|Contents
:---|:---
Default|display all columns.
Value|
Requirement|Optional
Restriction|
Interaction| Same as `defcol` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`col1 col2 col3`<br>`(col1)("(*ESC*)S={just = center borderbottomwidth=0pt MARGINBOTTOM= 2pt } SUBTITLE (*ESC*)n (N = 100)(*ESC*)S={}" col2 col3) `

#### blank_after
specifies the variable on which "insert blank line" is based. <br>
 
Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction| 
Interaction|Same as `blank_after` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|

#### pg
specifies the maximum number of rows displayed per page in the report.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|Same as `pg` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`18`

#### sfx
specifies the suffix for the output file. If multiple outputs are generated in one code, then sfx is used to distinguish the outputs.

Item|Contents
:---|:---
Default| 
Value| 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`saf`

## Control debug

#### deBug
specifies whether need to debug or not, if not "Y" then intermediate datasets will be deleted. If leave it as null or not to state it, the default values will be used.<br>

Item|Contents
:---|:---
Default|`N`
Value|`Y, N` (not case sensitive)
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`N`