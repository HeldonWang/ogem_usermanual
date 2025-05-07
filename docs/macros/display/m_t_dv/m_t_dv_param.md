# Syntax

%m_t_dv (<br>
[***inds***=&lt;input-dataset&gt;](#inds), <br>
[***pop_flag***=&lt;filtered-population-condition&gt;](#popflag),<br>
[***whr***=&lt;additional-filtered-condition&gt;](#whr),<br>
[***trtgrpn***=&lt;numeric-treatment-variable&gt;](#trtgrpn),<br>
[***pop_mvar***=&lt;macro-prefix-label-for-treatment(s)&gt;](#popmvar),<br>
[***totrow_var***=&lt;variable-used-to-calculate-the-total-row&gt;](#totrowvar),<br>
[***totrow_label***=&lt;label-for-total-row&gt;](#totrowlabel),<br>
[***varlist***=&lt;variable-used-for-categorical-analysis&gt;](#varlist), <br>
[***labellist***=&lt;displayed-text-for-each-categorical-value&gt;](#labellist), <br>
[***lenlist***=&lt;list-of-column-width&gt;](#lenlist), <br>
[***justlist***=&lt;list-of-l|c|r (alignment column: c="center", l="left", r="right")&gt;](#justlist), <br>
[***justlist_header***=&lt;list-of-l|c|r (alignment header: c="center", l="left", r="right")&gt;](#justlistheader), <br>
[***nolblist***=&lt;list-of-Y|N (suppress the display of header text or not)&gt;](#nolblist), <br>
[***orderlist***=&lt;list-of-Y|N (order option used or not)&gt;](#orderlist), <br>
[***defcol***=&lt;description-text-of-rules-for-subtitles-or-columns-name&gt;](#defcol), <br>
[***blank_after***=&lt;variable-insert-blank-line-after&gt;](#blankafter), <br>
[***pg***=&lt;maximum-rows-per-page&gt;](#pg), <br>
[***sfx***=&lt;suffix&gt;](#sfx), <br>
[***deBug***=&lt;Y|N&gt;](#debug)<br>
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
Eg.|`addv` <br>`adam.addv`


#### pop_flag
specifies filtered population, condition used in where statement.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`FASFL="Y"`


#### whr
specifies additional filtered condition used in where statement.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Condition used to further filter the input dataset `inds`, which has already been filtered by `pop_flag`.
Eg.|`DVCAT="Important"`

## Control analysis
 
#### trtgrpn
specifies the treatment variable(N).<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|Type of `trtgrpn` is numeric.
Interaction|
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
Eg.|`faspopb`

## Control analysis

#### totrow_var
specifies the variable used to calculate the total row. In order to display and calculate correctly, the variable should have the same value for all records. Variable STUDYID could meet this criteria.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`STUDYID`


#### totrow_label
specifies the label for total row defined in `totrow_var`.<br>
Note that 'label' is required at the beginning. <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction| 
Interaction|
Eg.|`label STUDYID="Subjects with at least one important protocol deviation"`


#### varlist
specifies the variable is used for categorical analysis. <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|Only one variable could be specified.
Interaction|Same as `varlist_cat` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md).
Eg.|`DVSCAT`


#### labellist
specifies the displayed text for each categorical value.<br>
Note that 'format' is required at the beginning. <br>

For example:<br>
```sas
proc format;
  value scatn
    1 = "Inclusion Criteria"
    2 = "Exclusion Criteria"
    3 = "Investigational Product"
  ;
  value $scat
    "Inclusion Criteria Deviations" = "Inclusion Criteria"
    "Exclusion Criteria Deviations" = "Exclusion Criteria"
    "Investigational Product (IP) Deviation" = "Investigational Product"
  ;
run;
```
For character variable DVSCAT, if need to display another values, then specify as "format dvscat $scat."; for numeric variable DVSCATN, then specify as "format dvscatn scatn.". the sorting order is based on the original value, **not** the formatted value.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|Should use FORMAT statement syntax.
Interaction|
Eg.|`format DVSCATN SCATN.`

## Control report

> **Note:**<br>
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
Eg.|`5#2#2#2`


#### justlist
specifies the content alignment for each column, separated by "#". "l" means left-alignment, "c" means center-alignment, "r" means center-alignment. If leave it as null or not to state it, the default values will be used.<br>
 

Item|Contents
:---|:---
Default|`l` for first column and `c` for other columns.
Value|`l, c, r` for each column.
Requirement|Optional
Restriction|
Interaction|Same as `justlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`l#c#c#c`


#### justlist_header
specifies the header alignment for each column, separated by "#". "l" means left-alignment, "c" means center-alignment, "r" means center-alignment. <br>
 

Item|Contents
:---|:---
Default| 
Value|`l, c, r` for each column.
Requirement|Optional
Restriction|
Interaction| Same as `justlist_header` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`l#c#c#c`


#### nolblist
specifies whether suppress the display of header name for each column, separated by "#". "Y" means do not display header name.  <br>
 

Item|Contents
:---|:---
Default| 
Value|`Y, N` for each column.
Requirement|Optional
Restriction|
Interaction|Same as `nolblist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`Y#N#N#N`


#### orderlist
specifies whether to apply the ORDER option for each column, separated by "#". "Y" means order variable, which does not repeat the value from one row to the next if the value does not change. <br>
 

Item|Contents
:---|:---
Default| 
Value|`Y, N` for each column.
Requirement|Optional
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
Interaction|Same as `defcol` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`col1 col2 col3`<br>`(col1)("(*ESC*)S={just = center borderbottomwidth=0pt MARGINBOTTOM= 2pt } SUBTITLE (*ESC*)n (N = 100)(*ESC*)S={}" col2 col3) `


#### blank_after
specifies the variable on which "insert blank line" is based.

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
 






