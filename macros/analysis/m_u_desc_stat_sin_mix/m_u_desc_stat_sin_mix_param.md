# Syntax

%m_u_desc_stat_sin_mix (<br>
[***inds***=&lt;input-data-set&gt;](#inds), <br>
[***datout***=&lt;output-data-set&gt;](#datout),<br> 
[***inds_source***=&lt;dataset_for_decimal&gt;](#indssource),<br> 
[***varlist_cat***=&lt;list-of-categorical-variable(s)&gt;](#varlistcat),<br>
[***varlist_cont***=&lt;list-of-continuous-variable(s)&gt;](#varlistcont),<br>
[***exclude_stat***=&lt;list-of-excluded-statistic(s)&gt;](#excludestat),<br>
[***add_lead_row***=&lt;Y|N (display leading row or not)&gt;](#addleadrow),<br>
[***decimal_list***=&lt;list-of-decimal-place(s)&gt;](#decimallist)<br>
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

## Control output

#### datout
specifies the output data set.

Item|Contents
:---|:---
Default|
Value| A one or two level dataset name. 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`temp_cohort_demo_sub` <br> `work.temp_cohort_demo_sub`

#### inds_source
specifies the data set for decimal places.

Item|Contents
:---|:---
Default|If this parameter is empty, use the `inds` as the source dataset.
Value| A one or two level dataset name. 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`adsl` <br>`adam.adsl`

## Control analysis

#### varlist_cat
specifies the categorical variables needed to be calculated. Multiple variables should be separated by spaces. Variables can be numeric or character. For numeric variables, the format must be assigned. If format are pre-define, values are display as formatted values. 

Item|Contents
:---|:---
Default| 
Value| Allow one or more variables.
Requirement|Optional
Restriction|Only one variable if `denom_dt` is provided.
Interaction| 
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
Interaction| 
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
Interaction| 
Eg.|`con_mis con_Sum`

#### add_lead_row
specifies whether to add a leading row before the summary of "cat_n_percent". If "Y", then output a lead row for each categorical variables. If leave it as null or not to state it, the default values will be used.

Item|Contents
:---|:---
Default|`Y`
Value|`Y, N`
Requirement|Optional
Restriction|
Interaction|
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
