# Syntax

%m_u_cont (<br>
[***inds***=&lt;input-data-set&gt;](#inds), <br>
[***whr***=&lt;filtered-condition&gt;](#whr),<br>
[***outds***=&lt;output-data-set&gt;](#outds),<br> 
[***varlist***=&lt;list-of-continuous-variable(s)&gt;](#varlist),<br>
[***rowVars***=&lt;list-of-class-variable(s)&gt;](#rowvars),<br>
[***sortBy***=&lt;list-of-sortby-variable(s)&gt;](#sortby),<br>
[***decim***=&lt;original-number-of-decimal-place&gt;](#decim),<br>
[***decimBy***=&lt;determine-decimals-variable&gt;](#decimby),<br>
[***statsmiss***=&lt;display-text-for-missing-statistics&gt;](#statsmiss),<br>
[***exclude_stats***=&lt;list-of-excluded-statistic(s)&gt;](#excludestats),<br>
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

#### whr
specifies filtered condition used in where statement.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction| filter input dataset for `inds`.
Eg.|`SAFFL='Y' and not missing(TRT01AN)`

#### outds
specifies the output data set name, which contains the analysis results.

Item|Contents
:---|:---
Default|
Value| A one or two level dataset name. 
Requirement|Mandatory
Restriction|
Interaction| 
Eg.|`_stat_` <br>`work._stat_`

#### varlist
specifies the list of continuous variables to be analyzed, separated by "#".

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction| 
Interaction|
Eg.|`AVAL#PCHG`

#### rowVars
specifies the variables of class by which the analysis should be performed. The variables are separated by spaces. These variables will be used in the CLASS statement of PROC MEANS.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction| 
Interaction| 
Eg.|`TRT01AN AVISIT ATPT`

#### sortBy
specifies variable lists used to sort `rowVars`. Variables are separated by "#". If null, then will sort by `rowVars`. If descending needed, then add `descending` before the corresponding variable.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`Descending PARAM#TRT01AN#TRT01A#AVISITN#AVISIT`

## Control analysis

#### decim
specifies decimal should be displayed for Min/Max, Mean/SD/Median/Q1/Q3 would have one more decimal places. Valid values are "INDATA", number, decimal variable( the variable name should not be INDATA). If `decim= INDATA` then will be determined by the values in dataset. If multiple variables, separated by "#".<br>

Item|Contents
:---|:---
Default|
Value| `INDATA` (not case sensitive), number, or decimal variable name.
Requirement|Mandatory
Restriction|
Interaction| If `INDATA` then `decimBy` must be specified. Must correspond with `varlist` in terms of the number of elements.
Eg.|`INDATA#2#ADP`

>Note: ADP is a standard varible in adam as per AZ standard to store decimal place information.

#### decimBy
specifies the variable (only one variable) should be set as one block to determine the maximum decimal places in dataset if `decim` is `INDATA`.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Conditional
Restriction|
Interaction|Required if `decim` includes `INDATA`.  
Eg.|`PARAM`

#### statsmiss
specifies the value to display missing statistics (e.g., SD when n=1), values could be NC/NE/NA, if null will set to NC (follow AZSOL general principals). <br>

Item|Contents
:---|:---
Default| `NC`
Value| `NC, NE, NA`
Requirement|Optional
Restriction|
Interaction| 
Eg.|`NC`

#### exclude_stats
specifies the statistics that do not need to be displayed. Values are separated by spaces. The default setting is to exclude none.<br>

Item|Contents
:---|:---
Default|
Value|`n Mean SD Min Q1 Median Q3 Max` 
Requirement|Optional
Restriction|
Interaction|Must be valid statistics names within current statistics. 
Eg.|`Q1 Q3`


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
