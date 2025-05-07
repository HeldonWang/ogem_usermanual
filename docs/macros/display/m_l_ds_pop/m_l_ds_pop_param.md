# Syntax

%m_l_ds_pop (<br>
[***inds***=&lt;input-data-set&gt;](#inds), <br>
[***pop_flag***=&lt;filtered-population-condition&gt;](#popflag),<br>
[***whr***=&lt;additional-filtered-condition&gt;](#whr),<br>
[***subjid***=&lt;subject-identifier-variable&gt;](#subjid),<br>
[***anaset***=&lt;list-of-display-text-of-analysis-dataset(s)&gt;](#anaset),<br>
[***xlvar***=&lt;list-of-exclusion-reasons-variable(s)&gt;](#xlvar),<br>
[***pageByN***=&lt;numeric-pageby-variable&gt;](#pagebyn),<br>
[***pageByFmt***=&lt;format-name-for-pageByN&gt;](#pagebyfmt),<br>
[***lenlist***=&lt;list-of-column-width&gt;](#lenlist),<br>
[***idcoln***=&lt;number-of-starting-pagination-column&gt;](#idcoln),<br>
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
Requirement|Optional
Restriction|
Interaction|Filter input dataset for `inds.`.
Eg.|`FASFL = "Y"`

#### whr
specifies additional filtered condition used in where statement.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction| Condition used to further filter the input dataset `inds`, which has already been filtered by `pop_flag`.
Eg.|`not missing(TRT01PN)`

#### subjid
specifies subject identifier variable. If null, will be set to subjid.

Item|Contents
:---|:---
Default|`SUBJID`
Value|
Requirement|Mandatory
Restriction|  
Interaction| Treated as one of value of `varlist` in [%m_l](../../display/m_l/m_l_descp.md) and display as first column of [AZLSP03](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=UKVpEV&nav=MTVfezcyQTE2Rjc4LTcyODItNEYyOC1BQjYzLUNBMUFBM0I1MUY1Q30)
Eg.|`SUBJID`

#### anaset
specifies the list of "Analysis set excluded from", separated by "#". <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction| `anaset` will be treated as one of variable of `varlist` in [%m_l](../../display/m_l/m_l_descp.md) and display as the second column of  [AZLSP03](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=UKVpEV&nav=MTVfezcyQTE2Rjc4LTcyODItNEYyOC1BQjYzLUNBMUFBM0I1MUY1Q30).
Eg.|`ITT#SAF#PK`

#### xlvar
specifies the list of exclusion reason variables, separated by "#".

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction| Variables must exist in input dataset `inds`
Interaction| All variables in `xlvar` are used in `varlist` [%m_l](../../display/m_l/m_l_descp.md) and display as third column of [AZLSP03](https://azcollaboration.sharepoint.com/sites/O-GEM2/Shared%20Documents/General/O-GEM%20Index.xlsx?d=wb25d071b4025404caf18f0d7487c4b1d&csf=1&web=1&e=UKVpEV&nav=MTVfezcyQTE2Rjc4LTcyODItNEYyOC1BQjYzLUNBMUFBM0I1MUY1Q30).
Eg.|`ittxl#safxl#pkxl`

#### pageByN
specifies the page by numeric variable.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|Type of `pageByN` is numeric.
Interaction|Same as `pageByN` in [%m_l](../../display/m_l/m_l_descp.md).
Eg.|`TRT01AN`

#### pageByFmt
specifies the format to be applied to the `pageByN` variable.

Item|Contents
:---|:---
Default|
Value|
Requirement|Conditional
Restriction| Populated when `pageByN` is provided.
Interaction| Same as `pageByFmt` in [%m_l](../../display/m_l/m_l_descp.md).
Eg.|`_tlf_setup_trtfmtb`
 
 
## Control reporting

> **Note:**<br>
> More details of `lenlist` and `pg` could refer [%m_u_report](../../utility/m_u_report/m_u_report_param.md).

#### lenlist
specifies the width proportion for each column. The lengths should be separated by "#" and their sum should be less than or equal to 99 per page. If this parameter is not provided, then column length will be calculated in macro automatically. The current algorithm for automatically calculating column widths is not yet mature enough. It is recommended that users manually adjust based on the output situation of RTF. 

Item|Contents
:---|:---
Default|Auto-assigned based on the length of header/content for each column
Value|
Requirement|Optional
Restriction|If specified, all columns must be assigned with value respectively, the number of values separated by "#" must be equal to the number of columns.
Interaction|Same as `lenlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`15#20#25`

#### idcoln
specifies which columns that used ID option in proc report process. This option contains two function: (1) indicates the number of initial columns that will not repeat values if they are the same as in the previous row. (2) will be repeated on every new page.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|Same as `idcoln` in [%m_l](../../display/m_l/m_l_param.md).
Eg.|`1`
 
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
Requirement|Optional
Restriction|
Interaction|
Eg.|`N`
