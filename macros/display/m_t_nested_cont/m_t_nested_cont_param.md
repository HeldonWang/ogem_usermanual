# Syntax

%m_t_nested_cont (<br>
[***inds***=&lt;input-data-set&gt;](#inds), <br>
[***pop_flag***=&lt;filtered-population-condition&gt;](#popflag),<br>
[***whr***=&lt;additional-filtered-condition&gt;](#whr),<br>
[***varlist***=&lt;list-of-continuous-variable(s)&gt;](#varlist),<br>
[***paramVar***=&lt;categorical-parameter-variable&gt;](#paramvar),<br>
[***paramVarN***=&lt;numeric-parameter-variable&gt;](#paramvarn),<br>
[***timepVar***=&lt;categorical-timepoint-variable&gt;](#timepvar),<br>
[***timepVarN***=&lt;numeric-timepoint-variable&gt;](#timepvarn),<br>
[***pageBy***=&lt;categorical-pageby-variable&gt;](#pageby),<br>
[***pageByN***=&lt;numeric-pageby-variable&gt;](#pagebyn),<br> 
[***pop_mvar***=&lt;macro-prefix-label-for-treatment(s)&gt;](#popmvar),<br>
[***trtgrpn***=&lt;numeric-treatment-variable&gt;](#trtgrpn),<br>
[***trtTot***=&lt;Y|N (display total treatment column or not)&gt;](#trttot),<br>
[***decim***=&lt;original-number-of-decimal-place&gt;](#decim),<br>
[***decimBy***=&lt;determine-decimals-variable&gt;](#decimby),<br>
[***statsmiss***=&lt;display-text-for-missing-statistics&gt;](#statsmiss),<br>
[***exclude_stats***=&lt;list-of-excluded-statistic(s)&gt;](#excludestats),<br>
[***lablist***=&lt;list-of-label-before-statistic-column(s)&gt;](#lablist),<br>
[***lenlist***=&lt;list-of-column-width&gt;](#lenlist),<br>
[***headerlist***=&lt;list-of-display-header(s)&gt;](#headerlist),<br>
[***idpageyn***=&lt;Y|N (resize wide page or not)&gt;](#idpageyn),<br>
[***idpage***=&lt;list-of-Y|N (page option used or not)&gt;](#idpage),<br>
[***pg***=&lt;maximum-rows-per-page&gt;](#pg),<br>
[***pg_byvar***=&lt;Y|N (perform the dynamic pg display according to col0 or not)&gt;](#pgbyvar),<br>
[***sfx***=&lt;suffix&gt;](#sfx),<br>
[***deBug***=&lt;Y|N&gt;](#debug)<br>
);

---

# Parameter

## Control input

#### inds
specifies the input data set. <br>

Item|Contents
:---|:---
Default|
Value| A one or two level dataset name. 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`adlb` <br>`adam.adlb`

#### pop_flag
specifies filtered population, condition used in where statement. <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Filter input dataset for `inds.`.
Eg.|`FASFL = "Y"`

#### whr
specifies additional filtered condition used in where statement. <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Condition used to further filter the input dataset `inds`, which has already been filtered by `pop_flag`.
Eg.|`not missing(TRT01AN)`

## Control analysis

#### varlist
specifies the list of continuous variables to be analyzed, separated by "#". <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction| 
Interaction|Same as `varlist` in [%m_u_cont](../../analysis/m_u_cont/m_u_cont_param.md).
Eg.|`AVAL#CHG`

#### paramVar
specifies the parameter variable (categorical).  <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction| 
Eg.|`PARAM`
 
#### paramVarN 
specifies numeric parameter variable. If null, will sort by
`paramVar` alphabetically. <br>

Item|Contents
:---|:---
Default| 
Value|
Requirement|Optional
Restriction| 
Interaction|Numeric variable is one-one mapping to `paramVar`.
Eg.|`PARAMN`

#### timepVar
specifies timepoint variable (categorical).  <br>

Item|Contents
:---|:---
Default| 
Value|
Requirement|Mandatory
Restriction| 
Interaction| 
Eg.|`AVISIT`

#### timepVarN
specifies numeric timepoint variable. If null, will sort by `timepVar` alphabetically. <br>

Item|Contents
:---|:---
Default|  
Value|
Requirement|Optional
Restriction| 
Interaction|Numeric variable is one-one mapping to `timepVar`.
Eg.|`AVISITN`

#### pageBy
specifies page by variable (categorical). If null, outputs are displayed without paging. <br>

Item|Contents
:---|:---
Default| 
Value|
Requirement|Optional
Restriction| 
Interaction| 
Eg.|`PARAM`

#### pageByN
specifies the page by numeric variable. If `pageBy` and `paramVar` are the same, then will order by `paramVarN`, else report will be sorted by `pageByN`. <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|Type of `pageByN` is numeric.
Interaction| 
Eg.|`PARAMN`

#### trtgrpn
specifies the treatment variable(N). <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction| Type of `trtgrpn` is numeric.
Interaction|  
Eg.|`TRT01AN`

#### trtTot
specifies whether to display total group or not. If leave it as null or not to state it, the default values will be used.<br>

> **Note:**<br>
>Recommend not to change the structure of `inds` dataset to include total group (more details for total group calculation refer to [%m_u_popn](../../utility/m_u_popn/m_u_popn_descp.md)).<br>
> If in `inds`, `trtgrpn` doesn't include total group but need to display, then `trtTot=Y` (The last format value of `pop_mvar` defined by %m_u_popn should be the total group).<br>
> If `trtgrpn` already includes total group in `inds`, then if the last format value of `pop_mvar` is total group, `trtTot=N`; else if the last format value of `pop_mvar` is not the total group, `trtTot=Y`.<br>

Item|Contents
:---|:---
Default|`N`
Value| `Y, N` (not case sensitive)
Requirement|Optional
Restriction|
Interaction| If "Y", the last group defined in `pop_mvar` will be treated as total group and kept. If "N", the last group defined in `pop_mvar` will be treated as total group and deleted. Thus, if "Y", the last format value should be the total group in `pop_mvar`.
Eg.|`N`

#### pop_mvar
specifies the macro variable used to class different groups which will be displayed as headers or contents.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|This should be the same as the `gmacro` in [%m_u_popn](../../utility/m_u_popn/m_u_popn_descp.md).
Interaction| Same as `macro` varibles generated in [%m_u_popn](../../utility/m_u_popn/m_u_popn_descp.md).
Eg.|`saspopb`

#### decim
specifies decimal should be displayed for Min/Max, Mean/SD/Median/Q1/Q3 would have one more decimal places. Valid values are "INDATA", number, decimal variable( the variable name should not be INDATA). If `decim= INDATA` then will be determined by the values in dataset. If multiple variables, separated by "#".<br>

Item|Contents
:---|:---
Default|
Value| `INDATA` (not case sensitive), number, or decimal variable name.
Requirement|Mandatory
Restriction|
Interaction| If `INDATA` then `decimBy` must be specified. Must correspond with `varlist` in terms of the number of elements.<br>Same as `decim` in [%m_u_cont](../../analysis/m_u_cont/m_u_cont_param.md).
Eg.|`INDATA#2#ADP`

#### decimBy
specifies the variable (only one variable) should be set as one block to determine the maximum decimal places in dataset if `decim` is `INDATA`.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Conditional
Restriction|
Interaction|Required if `decim` includes `INDATA`. <br> Same as `decimBy` in [%m_u_cont](../../analysis/m_u_cont/m_u_cont_param.md).
Eg.|`PARAM`

#### statsmiss
specifies the value to display missing statistics (e.g., SD when n=1), values could be NC/NE/NA, if null will set to NC (follow AZSOL general principals). <br>

Item|Contents
:---|:---
Default| `NC`
Value| `NC, NE, NA`
Requirement|Optional
Restriction|
Interaction|Same as `statsmiss` in [%m_u_cont](../../analysis/m_u_cont/m_u_cont_param.md). 
Eg.|`NC`

#### exclude_stats

specifies the statistics that do not need to be displayed. Values are separated by spaces. The default setting is to exclude none.<br>

Item|Contents
:---|:---
Default|
Value|`n Mean SD Min Q1 Median Q3 Max` 
Requirement|Optional
Restriction|
Interaction|Must be valid statistics names within current statistics.<br>Same as `exclude_stats` in [%m_u_cont](../../analysis/m_u_cont/m_u_cont_param.md).  
Eg.|`Q1 Q3`

#### lablist
specifies the list of labels for the columns before statistic columns, separated by "#". <br>
If null then: <br>
(1) if `paramVar` is the same with `pageBy`, then there'll be one column before statistic columns. The default label will be set as "Group(\*ESC\*)n  Timepoint".<br>
(2) if `paramVar` is not the same with `pageBy` (`pageBy` could be null or the other variable name), then there'll be 2 columns. In such case, need to feed `lablist` separated by '#'. The default labels will be set as "#Group(\*ESC\*)n  Timepoint". <br>
If leave it as null or not to state it, the default values will be used. <br>

Item|Contents
:---|:---
Default|`Group (*ESC*)n Timepoint` <br> `#Group (*ESC*)n  Timepoint`
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Group (*ESC*)n Timepoint`

## Control report

> More details of `lenlist`, `idpage`, and `pg` could refer [%m_u_report](../../utility/m_u_report/m_u_report_param.md). <br>

#### lenlist
specifies the width proportion for each column. The lengths should be separated by "#" and their sum should be less than or equal to 99 per page. If this parameter is not provided, then column length will be calculated in macro automatically. The current algorithm for automatically calculating column widths is not yet mature enough. It is recommended that users manually adjust based on the output situation of RTF.<br>

Item|Contents
:---|:---
Default|Auto-assigned based on the length of header/content for each column.
Value|
Requirement|Mandatory
Restriction|If specified, all columns must be assigned with value respectively, the number of values separated by "#" must be equal to the number of columns.
Interaction|Same as `lenlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`20#9#9#9#9#9#9#9#9`

#### headerlist
specifies the list of headers for `varlist`, separated by "#". <br>
 
Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|Must correspond with `varlist` in terms of the number of elements.
Eg.|`Result#Percent change from baseline`
 
#### idpageYN
specifies whether to paginate by `varlist`. If leave it as null or not to state it, the default values will be used.  <br>

Item|Contents
:---|:---
Default|`N`
Value|`Y, N `
Requirement|Optional
Restriction|
Interaction| When `idpageYN=Y`, paged by `idpage` option.
Eg.|`N`
   
#### idpage
specifies whether inserts a page break for each column, separated by "#". "Y" means this column and all columns to its right will appear on a new page. <br>
If `idpageYN='Y'` and `idpage` is not provided, the `idpage` will automatically be assigned and paged by `varlist`. If `idpage` is stated, regardless of `idpageYN`, then new page may be generated according to `idpage` value.   <br>

Item|Contents
:---|:---
Default| 
Value|`Y, N` for each column
Requirement|Optional
Restriction|
Interaction| Paginate automatically based on variables of `varlist` when `idpageYN=Y` and `idpage` is null. <br> When "Y" exist in the `idlist`, these "Y"-columns are used as the identification columns and appear first in the new page, and followed by the `idpage=Y` column. Otherwise, the `idpage=Y` column will appear as this fisrt column in the new page. <br> Same as `idpage` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`N#N#N#N`
 

#### pg
specifies the maximum number of rows displayed per page in the report.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction| When `pg_byvar=Y`, will recalculate the maximum number of rows by the page-by variable (eg. byvar). <br>Same as `pg` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`18`


#### pg_byvar
specifies whether to perform the dynamic pg display according to the page-by variable (eg. byvar). If "Y", then will recalculate maximum number of rows by page. If leave it as null or not to state it, the default values will be used. 

Item|Contents
:---|:---
Default|`N`
Value|`Y, N`
Requirement|Optional
Restriction|
Interaction|Same as `pg_byvar` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md). 
Eg.|`Y`

#### sfx
specifies the suffix for the output file. If multiple outputs are generated in one code, then sfx is used to distinguish the outputs. <br>

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
Requirement|Optional
Restriction|
Interaction|
Eg.|`N`



 