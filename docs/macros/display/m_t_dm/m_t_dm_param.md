# Syntax

%m_t_dm (<br>
[***inds***=&lt;input-data-set&gt;](#inds), <br>
[***pop_flag***=&lt;filtered-population-condition&gt;](#popflag),<br>
[***whr***=&lt;additional-filtered-condition&gt;](#whr),<br>
[***trtgrpn***=&lt;numeric-treatment-variable&gt;](#trtgrpn),<br>
[***pop_mvar***=&lt;macro-prefix-label-for-treatment(s)&gt;](#popmvar),<br>
[***varlist_cat***=&lt;list-of-categorical-variable(s)&gt;](#varlistcat),<br>
[***varlist_cont***=&lt;list-of-continuous-variable(s)&gt;](#varlistcont),<br>
[***decimal_list***=&lt;list-of-decimal-place(s)&gt;](#decimallist),<br>
[***output_order***=&lt;list-of-display-order-variable(s)&gt;](#outputorder),<br>
[***formatlist***=&lt;row-text-for-levels-of-varlist_cat-and-varlist_cont&gt;](#formatlist),<br>
[***labellist***=&lt;row-text-for-varlist_cat-and-varlist_cont&gt;](#labellist),<br>
[***exclude_stat***=&lt;list-of-excluded-statistic(s)&gt;](#excludestat),<br>
[***add_lead_row***=&lt;Y|N (display leading row or not)&gt;](#addleadrow),<br>
[***denom_dt***=&lt;denominator-dataset&gt;](#denomdt),<br>
[***nodup_by***=&lt;list-of-sortby-and-nodupkey-variable(s)&gt;](#nodupby),<br>
[***hide_lvls***=&lt;Y|N (display statistic column or not)&gt;](#hidelvls),<br>
[***lenlist***=&lt;list-of-column-width&gt;](#lenlist),<br>
[***justlist***=&lt;list-of-l|c|r (alignment column: c="center", l="left", r="right")&gt;](#justlist),<br>
[***justlist_header***=&lt;list-of-l|c|r (alignment header: c="center", l="left", r="right")&gt;](#justlistheader),<br>
[***nolblist***=&lt;list-of-Y|N (suppress the display of header text or not)&gt;](#nolblist),<br>
[***orderlist***=&lt;list-of-Y|N (order option used or not)&gt;](#orderlist),<br>
[***defcol***=&lt;description-text-of-rules-for-subtitles-or-columns-name&gt;](#defcol),<br>
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
Eg.|`adsl` <br>`adam.adsl`

#### pop_flag
specifies filtered population, condition used in where statement.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|Filter input dataset for `inds`.
Eg.|`FASFL="Y" `

#### whr
specifies additional filtered condition used in where statement.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Condition used to further filter the input dataset `inds`, which has already been filtered by `pop_flag`.
Eg.|`trt01pn in (1 2 3) `

## Control analysis

#### trtgrpn
specifies the treatment variable(N). 

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction| Type of `trtgrpn` should be numeric.
Interaction| Same as `byvar` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md).
Eg.|`TRT01PN`

#### pop_mvar
specifies the macro variable used to class different groups which will be displayed as headers or contents.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|This should be the same as the `gmacro` in [%m_u_popn](../../utility/m_u_popn/m_u_popn_descp.md).
Interaction|Same as `pop_mvar` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md).
Eg.|`FASpopb`

#### varlist_cat
specifies the categorical variables needed to be calculated. Multiple variables should be separated by spaces. Variables can be numeric or character. For numeric variables, the format must be assigned. If format are pre-define, values are display as formatted values. 

Item|Contents
:---|:---
Default|
Value| Allow one or more variables.
Requirement|Optional
Restriction|Only one variable if `denom_dt` is provided.
Interaction|Same as `varlist_cat` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md).
Eg.|`AGEGR1N SEX`

#### varlist_cont
specifies the continuous variables that descriptive statistics need to be calculated. Multiple variables should be separated by spaces.

Item|Contents
:---|:---
Default| 
Value|Allow one or more variables.
Requirement|Optional
Restriction|
Interaction| Same as `varlist_cont` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md).
Eg.|`HEIGHTBL WEIGHTBL`

#### decimal_list
specifies the maximum decimal places of "Min/Max" for `varlist_cont`, "Mean", "SD", "Median", "Q1" and "Q3" will have one more decimal places. If it's determined by the values in dataset, then leave the corresponding value to null. Values are separated by "#".  <br>  

Item|Contents
:---|:---
Default|NULL
Value|
Requirement|Optional
Restriction|The number of elements should be the same with `varlist_cont`.
Interaction|
Eg.|`#2#`

>Note: For those variables with non-Terminating, non-Repeating decimal, `decimal_list` shouldn't be null. <br>

#### output_order 

specifies the display order of variables in output. Multiple variables should be separated by spaces. If no variable output order is specifed, then use the default order.

Item|Contents
:---|:---
Default| Values listed in `varlist_cont` option first and then values listed in `varlist_cat` options.
Value|Allow one or more categorical variables or continuous variables.
Requirement|Optional
Restriction|
Interaction| Same as `output_order` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md).
Eg.|`AGEGR1N SEX HEIGHTBL WEIGHTBL`

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
Eg.|`format NICSTT $smokstat. HPVBL $hpvstat. WGHTBLG1 $weight_cat.`

#### labellist 

specifies row text for `varlist_cat` and `varlist_cont`. <br>
Note that 'label' is required at the beginning. <br>

Item|Contents
:---|:---
Default| 
Value|
Requirement|Optional
Restriction|
Interaction| 
Eg.|`label HEIGHTBL='Height (cm)' WEIGHTBL='Weight (kg)' WGHTBLG1='Weight group (kg)' BMIBL='BMI (kg/m2)' NICSTT='Smoking status' HPVBL='HPV status'`

#### exclude_stat
specifies the statistics that do not need to be displayed. Values are separated by spaces. <br> If leave it as null or not to state it, the default values will be used.  

Item|Contents
:---|:---
Default| `con_mis con_Q1 con_Q3 con_Sum cat_n`
Value| `con_mis con_n con_Mean con_SD con_Min con_Q1 con_Median con_Q3 con_Max con_Sum cat_n cat_n_percent` 
Requirement|Optional
Restriction|This parameter will be applied to all the analysis sections.
Interaction| Same as `exclude_stat` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md) .
Eg.|`con_mis con_Q1 con_Q3 con_Sum cat_n`

#### add_lead_row

specifies whether to add a leading row before the summary of "cat_n_percent". If "Y", then output a lead row for each categorical variables. If leave it as null or not to state it, the default values will be used. <br>

Item|Contents
:---|:---
Default|`Y`
Value|`Y, N`
Requirement|Optional
Restriction|
Interaction|Same as `add_lead_row` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md).
Eg.|`Y`

#### denom_dt
specifies the dataset used as the denominator. If leave it as null or not to state it, the default values will be used.

Item|Contents
:---|:---
Default| If this parameter is empty, use the filtered `inds` as the denominator for calculation.
Value|
Requirement|Optional
Restriction|Need retain at least the variables USUBJID and STUDYID in the numerator dataset `inds`, and denominator dataset `denom_dt` needs to  contain the variable USUBJID at least. If `trtgrpn` is provided, then `trtgrpn` should also exist in both `inds` and `denom_dt`.
Interaction|Same as `denom_dt` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md).
Eg.|`ADSL_P`

#### nodup_by 
specifies the nodupkey by variables to remove duplicate values for the `inds` dataset before calculating process. Multiple variables should be separated by spaces. 

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Same as `nodup_by` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md).
Eg.|`USUBJID`

#### hide_lvls 
specifies whether to hide the statistics column (usually the second column). <br>

Item|Contents
:---|:---
Default| 
Value|`Y, N` (no case-sensitive)
Requirement|Optional
Restriction|
Interaction|Same as `hide_lvls` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md). 
Eg.|`Y`



## Control reporting

> **Note:**<br>
> More details of `lenlist`, `justlist`, `justlist_header`, `nolblist`, `orderlist`, `defcol`, and `pg` could refer [%m_u_report](../../utility/m_u_report/m_u_report_param.md).

#### lenlist
specifies the width proportion for each column. The lengths should be separated by "#" and their sum should be less than or equal to 99 per page. If this parameter is not provided, then column length will be calculated in macro automatically. The current algorithm for automatically calculating column widths is not yet mature enough. It is recommended that users manually adjust based on the output situation of RTF.<br>

Item|Contents
:---|:---
Default|Auto-assigned based on the length of header/content for each column
Value|
Requirement|Optional
Restriction|If specified, all columns must be assigned with value respectively, the number of values separated by "#" must be equal to the number of columns.
Interaction|Same as `lenlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`15#29#20#20#14`

#### justlist
specifies the content alignment for each column, separated by "#". "l" means left-alignment, "c" means center-alignment, "r" means center-alignment. If leave it as null or not to state it, the default values will be used.<br>
 

Item|Contents
:---|:---
Default|`l` for first column and `c` for other columns.
Value|`l, c, r` for each column.
Requirement|Optional
Restriction|
Interaction|Same as `justlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`l#l#c#c#c`

#### justlist_header
specifies alignment of the table header, separated by "#". "l" means left-alignment, "c" means center-alignment, "r" means right-alignment. <br>
 

Item|Contents
:---|:---
Default| 
Value|`l, c, r` for each column.
Requirement|Optional
Restriction|
Interaction|Same as `justlist_header` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`l#l#c#c#c`

#### nolblist
specifies whether suppress the display of header name for each column, separated by "#". "Y" means do not display header name.  <br>
 

Item|Contents
:---|:---
Default| 
Value|`Y, N` for each column.
Requirement|Optional
Restriction|
Interaction|Same as `nolblist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`Y#N#N#N#N`

#### orderlist
specifies whether to apply the ORDER option for each column, separated by "#". "Y" means order variable, which does not repeat the value from one row to the next if the value does not change. <br>
 

Item|Contents
:---|:---
Default| 
Value|`Y, N` for each column.
Requirement|Optional
Restriction|
Interaction|Same as `orderlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`Y#N#N#N#N`

#### defcol
specifies the columns that need to be displayed with each column name separated by a space, or add subtitles between columns (which will be used in proc report column statement). If leave it as null or not to state it, the default values will be used.<br>

Item|Contents
:---|:---
Default|display all columns.
Value|
Requirement|Optional
Restriction|
Interaction|Same as `defcol` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`col1 col2 col3`<br>`(col1)("(*ESC*)S={just = center borderbottomwidth=0pt MARGINBOTTOM= 2pt } SUBTITLE (*ESC*)n (N = 100)(*ESC*)S={}" col2 col3) `

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
Eg.|`fas`

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

