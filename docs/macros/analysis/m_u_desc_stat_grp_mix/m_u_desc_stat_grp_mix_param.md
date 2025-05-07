# Syntax

%m_u_desc_stat_grp_mix (<br>
[***inds***=&lt;input-data-set&gt;](#inds), <br>
[***datout***=&lt;output-data-set&gt;](#datout),<br> 
[***byvar***=&lt;numeric-treatment-variable&gt;](#byvar),<br>
[***pop_mvar***=&lt;global-treatment-macro-prefix-label&gt;](#popmvar),<br>
[***denom_dt***=&lt;denominator-dataset&gt;](#denomdt),<br>
[***varlist_cat***=&lt;list-of-categorical-variable(s)&gt;](#varlistcat),<br>
[***varlist_cont***=&lt;list-of-continuous-variable(s)&gt;](#varlistcont),<br>
[***exclude_stat***=&lt;list-of-excluded-statistic(s)&gt;](#excludestat),<br>
[***add_lead_row***=&lt;Y|N (display leading row or not)&gt;](#addleadrow),<br>
[***decimal_list***=&lt;list-of-decimal-place(s)&gt;](#decimallist),<br>
[***output_order***=&lt;list-of-display-order-variable(s)&gt;](#outputorder),<br>
[***nodup_by***=&lt;list-of-nodupkey-variable(s)&gt;](#nodupby),<br>
[***hide_lvls***=&lt;Y|N (display statistic column or not)&gt;](#hidelvls),<br>
[***grp_miss***=&lt;0|1 (display unspeficied missing column or not)&gt;](#grpmiss),<br>
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

#### datout
specifies the output data set.

Item|Contents
:---|:---
Default|
Value| A one or two level dataset name.
Requirement|Mandatory
Restriction|
Interaction| 
Eg.|`aval_stat` <br> `work.aval_stat`

#### byvar
specifies the group variable(N).

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|Type of `byvar` should be numeric. 
Interaction|
Eg.|`TRT01AN`

#### pop_mvar
specifies the macro variable used to class different groups which will be displayed as headers or contents.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|The value of this macro variable should be set according to the value of `gmacro` in the corresponding [%m_u_popn](../../utility/m_u_popn/m_u_popn_descp.md). 
Interaction|
Eg.|`saspopb`
 
#### denom_dt
specifies the dataset used as the denominator. If leave it as null or not to state it, the default values will be used.

Item|Contents
:---|:---
Default| If this parameter is empty, use the `inds` as the denominator for calculation.
Value|
Requirement|Optional
Restriction| Need retain at least the variables USUBJID and STUDYID in the numerator dataset `inds`, and denominator dataset `denom_dt` needs to  contain the variable USUBJID at least. If `byvar` is provided, then `byvar` should also exist in both `inds` and `denom_dt`.
Interaction|  
Eg.|`adsl`


#### varlist_cat
specifies the categorical variables needed to be calculated. Multiple variables should be separated by spaces. Variables can be numeric or character. For numeric variables, the format must be assigned. If format are pre-define, values are display as formatted values. 

Item|Contents
:---|:---
Default| 
Value| Allow one or more variables.
Requirement|Optional
Restriction|Only one variable if `denom_dt` is provided.
Interaction|Same as `varlist_cat` in [%m_u_desc_stat_sin_mix](../../analysis/m_u_desc_stat_sin_mix/m_u_desc_stat_sin_mix_param.md).
Eg.|`SEX RACE`

>Note: Categorical display value of variables can be overwritten by format. When creating a format in proc format, if `(notsorted)` is specified, the sequence in which the values are specified can affect the outcome. Otherwise, the values will be sorted in ascending order based on their original values.

>Note: `cat_n` is calculated in non-missing categorical groups.<br>
>Note: the display order below is also the order in the rtf.<br>
  &emsp;cat_n<br>
  &emsp;cat_n_percent<br>

  
#### varlist_cont
specifies the continuous variables that descriptive statistics need to be calculated. Multiple variables should be separated by spaces. 

Item|Contents
:---|:---
Default|
Value| Allow one or more variables.
Requirement|Optional
Restriction|
Interaction|Same as `varlist_cont` in [%m_u_desc_stat_sin_mix](../../analysis/m_u_desc_stat_sin_mix/m_u_desc_stat_sin_mix_param.md).
Eg.|`AGE WEIGHTBL`

>Note: the display order below is also the order in the rtf.<br>
  &emsp;con_mis<br>
  &emsp;con_n<br>
  &emsp;con_Mean<br>
  &emsp;con_SD<br>
  &emsp;con_Min<br>
  &emsp;con_Q1<br>
  &emsp;con_Median<br>
  &emsp;con_Q3<br> 
  &emsp;con_Max<br>
  &emsp;con_Sum<br>

#### exclude_stat
specifies the statistics that do not need to be displayed. Values are separated by spaces.  <br>  

Item|Contents
:---|:---
Default|
Value| `con_mis con_n con_Mean con_SD con_Min con_Q1 con_Median con_Q3 con_Max con_Sum cat_n cat_percent`  
Requirement|Mandatory
Restriction|This parameter will be applied to all the analysis sections.
Interaction|Same as `exclude_stat` in [%m_u_desc_stat_sin_mix](../../analysis/m_u_desc_stat_sin_mix/m_u_desc_stat_sin_mix_param.md).  
Eg.|`con_mis con_Sum`

#### add_lead_row
specifies whether to add a leading row before the summary of "cat_n_percent". If "Y", then output a lead row for each categorical variables. If leave it as null or not to state it, the default values will be used.

Item|Contents
:---|:---
Default| `Y`
Value| `Y, N`
Requirement|Optional
Restriction|
Interaction|Same as `add_lead_row` in [%m_u_desc_stat_sin_mix](../../analysis/m_u_desc_stat_sin_mix/m_u_desc_stat_sin_mix_param.md).
Eg.|`Y`

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
Interaction|  
Eg.|`AGEGR1N SEX HEIGHTBL WEIGHTBL`
 

#### nodup_by
specifies the nodupkey by variables to remove duplicate values for the `inds` dataset before calculating process. Multiple variables should be separated by spaces. 

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`TRT01AN USUBJID`

#### hide_lvls
specifies whether to hide the statistics column (usually the second column). <br>

Item|Contents
:---|:---
Default|
Value| `Y, N`
Requirement|Optional
Restriction|
Interaction|
Eg.|`Y`

#### grp_miss
specifies whether to delete unspecified missing values in `byvar`.(0=delete, 1=not delete). This option is to control whether to display subjects without group information (e.g., TRTA/TRTP is empty) as a new column. If leave it as null or not to state it, the default values will be used.

Item|Contents
:---|:---
Default| `0`
Value|`0, 1`
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`0`

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