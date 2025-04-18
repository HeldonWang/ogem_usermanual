# Syntax

%m_l (<br>
[***inds***=&lt;input-data-set&gt;](#inds),<br>
[***pop_flag***=&lt;filtered-population-condition&gt;](#popflag),<br>
[***whr***=&lt;further-filtered-condition&gt;](#whr),<br>
[***pageByN***=&lt;numeric-pageby-variable&gt;](#pagebyn),<br>
[***pageByFmt***=&lt;format-name-for-pageByN&gt;](#pagebyfmt),<br>
[***varlist***=&lt;list-of-analysis-variable(s)&gt;](#varlist),<br>
[***headerlist***=&lt;list-of-display-header(s)&gt;](#headerlist),<br>
[***sortBy***=&lt;list-of-sortby-variable(s)&gt;](#sortby),<br>
[***lenlist***=&lt;list-of-column-width&gt;](#lenlist),<br>
[***idcoln***=&lt;number-of-starting-pagination-column&gt;](#idcoln),<br>
[***orderlist***=&lt;list-of-Y|N (order option used or not)&gt;](#orderlist),<br>
[***idlist***=&lt;list-of-Y|N (id option used or not)&gt;](#idlist),<br>
[***idpage***=&lt;list-of-Y|N (page option used or not)&gt;](#idpage),<br>
[***jdvarlist***=&lt;list-of-decimal-points-aligned-variable(s)&gt;](#jdvarlist),<br>
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
Eg.|`FASFL = "Y"`


#### whr
specifies additional filtered condition used in where statement.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Condition used to further filter the input dataset `inds`, which has already been filtered by `pop_flag`.
Eg.|`age>65`


#### pageByN
specifies the page by numeric variable.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|Type of `pageByN` is numeric.
Interaction| 
Eg.|`TRT01AN`

#### pageByFmt
specifies the format to be applied to the `pageByN` variable. 

Item|Contents
:---|:---
Default|
Value|
Requirement|Conditional
Restriction| Populated when `pageByN` is provided.
Interaction|
Eg.|`_tlf_setup_trtfmtb`

#### varlist
specifies the list of variables to be included in the report, separated by the "#" character. 

Item|Contents
:---|:---
Default|
Value| 
Requirement|Mandatory
Restriction|One or more variables are allowed.
Interaction|
Eg.|`SUBJID	#EXTRT #TRTPDURD #TRTDURD #ASTDY #AENDT #EXDURD #EXDOSE #EXDOSU #EXROUTE`

#### headerlist
specifies the list of header names corresponding to the `varlist`, separated by the "#" character. 

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|The number of items in `headerlist` is the same as the number of items in `varlist`.
Eg.|`Subject identifier  #Investigational product received #Planned duration (Days) [a]	 #Actual duration (Days) [b] #Study day at start  #Study day at end #Duration (Days) #Dose per administration (mg) #Planned dose per administration (mg) #Route of administration`

#### sortBy
specifies the list of variables to sort the data, separated by "#". 

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|One or more variables are allowed.
Interaction| 
Eg.|`TRT01AN#USUBJID`

## Control reporting

> **Note:**<br>
> More details of `lenlist`, `orderlist`, `idlist`, `idpage`, `jdvarlist`, and `pg` could refer [%m_u_report](../../utility/m_u_report/m_u_report_param.md).

#### lenlist
specifies the width proportion for each column. The lengths should be separated by "#" and their sum should be less than or equal to 99 per page. If this parameter is not provided, then column length will be calculated in macro automatically. The current algorithm for automatically calculating column widths is not yet mature enough. It is recommended that users manually adjust based on the output situation of RTF.

Item|Contents
:---|:---
Default|Auto-assigned based on the length of header/content for each column
Value|
Requirement|Optional
Restriction|If specified, all columns must be assigned with value respectively, the number of values separated by "#" must be equal to the number of columns.
Interaction|Same as `lenlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`10#9#10#11#11#10#10#10#9#9`

#### idcoln
specifies which columns are used ORDER/ID option in proc report process. This option contains two functions: (1) indicating the number of initial columns that will not repeat values if they are the same as the previous row. (2) indicating whether will be repeated in every new page (for wide page setting). ORDER/ID function will be used for the columns from column 1 to `idcoln` when `idcoln` is provided.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction| The `idcoln` option has no ORDER effect when `orderlist` option is specified. The `idcoln` option has no ID effect when `idlist` option is specified. 
Interaction| 
Eg.|`4`

#### orderlist
 specifies whether to apply the ORDER option for each column, separated by "#". "Y" means order variable, which does not repeat the value from one row to the next if the value does not change. It can override `idcoln` function (1).  

Item|Contents
:---|:---
Default| 
Value|`Y, N` for each column.
Requirement|Optional
Restriction|
Interaction| `orderlist` will be executed if specified, regardless of `idcoln` option.<br> Same as `orderlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`Y#Y#Y#Y#N#N#N#N#N#N`

#### idlist
specifies whether to apply the ID option for each column, separated by "#". "Y" means ID variable, an ID variable and all columns to its left appear at the left of every page of a report. It can override `idcoln` function (2). If leave it as null or not to state it, the default values will be used.

Item|Contents
:---|:---
Default|`N` for each column.
Value|`Y, N` for each column.
Requirement|Optional
Restriction|
Interaction|`idlist` will be executed if specified, regardless of `idcoln` option. <br> When "Y" exists in `idlist`, this column is identified as the ID column for the new page if `idpage` is stated. Otherwise, the first column is used as the ID column for the new page.  <br> Same as `idlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`Y#Y#Y#Y#N#N#N#N#N#N`

#### idpage
specifies whether inserts a page break for each column, separated by "#". "Y" means this column and all columns to its right will appear on a new page. If leave it as null or not to state it, the default values will be used. <br>  

Item|Contents
:---|:---
Default|`N` for each column.
Value|`Y, N` for each column.
Requirement|Optional
Restriction| 
Interaction| When "Y" exist in the `idlist`, these "Y"-columns are used as the identification columns and appear first in the new page, and followed by the `idpage=Y` column. Otherwise, the `idpage=Y` column will appear as this fisrt column in the new page. <br> Same as `idpage` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`N#N#Y#N`

#### jdvarlist
specifies the list of variables that should be aligned by decimal points (variables only including digits). Variables are separated by "#". <br>  

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|Both numeric and character variables are allowed.
Interaction| 
Eg.|`AVAL#CHG#PCHG`

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
