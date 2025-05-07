# Syntax

%m_t_desc (<br>
[***inds***=&lt;input-data-set&gt;](#inds), <br>
[***trtgrpn***=&lt;numeric-treatment-variable&gt;](#trtgrpn),<br>
[***pop_mvar***=&lt;macro-prefix-label-for-treatment(s)&gt;](#popmvar),<br>
[***formatlist***=&lt;row-text-for-levels-of-varlist_cat-and-varlist_cont&gt;](#formatlist),<br>
[***total***=&lt;Y|N (display total treatment column or not)&gt;](#total),<br>
[***sub_data_filterXX***=&lt;filtered-population-for-XX-block&gt;](#subdatafilterxx),<br>
[***sub_varXX***=&lt;list-of-categorical-variable-for-XX-block&gt;](#subvarxx),<br>
[***sub_var_labelXX***=&lt;row-text-for-XX-block&gt;](#subvarlabelxx),<br>
[***sub_data_ordXX***=&lt;numerical-value-on-which-"insert-blank-line"-for-XX-block&gt;](#subdataordxx),<br>
[***no_percentXX***=&lt;Y|N (output percentages or not for XX block)&gt;](#nopercentxx),<br>
[***sub_denominatorXX***=&lt;dataset-used-as-the-denominator-for-XX-block&gt;](#subdenominatorxx),<br>
[***n_indentsXX***=&lt;number-of-indents-for-XX-block&gt;](#nindentsxx),<br>
[***no_grpXX***=&lt;Y|N (display only total column or not for XX block)&gt;](#nogrpxx),<br>
[***sub_leadingXX***=&lt;Y|N (display leading row texts or not for XX block)&gt;](#subleadingxx),<br>
[***sub_fmtXX***=&lt;Y|N (use formatted value as row text or not for XX block)&gt;](#subfmtxx),<br>
[***sub_pageby_valueXX***=&lt;pageby-value-for-XX-block&gt;](#subpagebyvaluexx),<br>
[***sub_header_onlyXX***=&lt;Y|N (show only leading row texts or not for XX block)&gt;](#subheaderonlyxx),<br>
[***lenlist***=&lt;list-of-column-width&gt;](#lenlist),<br>
[***justlist***=&lt;list-of-l|c|r (alignment column: c="center", l="left", r="right")&gt;](#justlist),<br>
[***justlist_header***=&lt;list-of-l|c|r (alignment header: c="center", l="left", r="right")&gt;](#justlistheader),<br>
[***nolblist***=&lt;list-of-Y|N (suppress the display of header text or not)&gt;](#nolblist),<br>
[***orderlist***=&lt;list-of-Y|N (order option used or not)&gt;](#orderlist),<br>
[***defcol***=&lt;description-text-of-rules-for-subtitles-or-columns-name&gt;](#defcol),<br>
[***pg***=&lt;maximum-rows-per-page&gt;](#pg),<br>
[***pg_byvar***=&lt;Y|N (perform the dynamic pg display according to col0 or not)&gt;](#pgbyvar),<br>
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

>Note: Please make sure to retain at least the variables USUBJID and STUDYID in the numerator dataset `inds`. If the denominator is needed, the dataset of `sub_denominatorXX` needs to contain the variable USUBJID at least.

## Control analysis

#### trtgrpn
specifies the treatment variable(N). <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|Type of `trtgrpn` is numeric.
Interaction|Same as `byvar` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md).
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
Eg.|`Faspopb`

#### formatlist
specifies row text for levels of `sub_varXX`. <br>
Note that 'format' is required at the beginning.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`format DCTREAS $DCTREAS. DCSREAS $DCSREAS.`


#### total
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

**Block parameters: Start**<br>
>Note: As this macro allows different variables in a dataset to be summarized with different display formats, 
each variable has a set of independent variables to control how the current variable is presented in the 
summary table. These Parameters are as follows, with XX representing the variable's display sequence in
the final table, where XX=1, 2, ..., 250.

>Note: The first analysis block must be present when invoking this macro for analysis purposes; it is not mandatory for other blocks. <br>
Please refer to the figure below for specific parameters on XX. XX needs to be consistent with the order of shell, and XX can be discontinuous, and it is recommended to reserve the parameter location for places that may change subsequently.<br>
![Intput](parm.png)<br>

#### sub_data_filterXX
specifies where condition to filter population for XX block. Note: XX denotes 1 to 250.  <br>
Note that 'where' is required at the beginning. <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`where ENRLFL = "Y"`

#### sub_varXX
specifies the categorical variable needed to be calculated for XX block. Note: XX denotes 1 to 250.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction| 
Interaction|
Eg.|`ENRLFL`

#### sub_var_labelXX
specifies row text for `sub_varXX`. Note: XX denotes 1 to 250.<br>
Note that 'label' is required at the beginning. <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`label ENRLFL='Subjects screened [a]'`

#### sub_data_ordXX
specifies the value of the grouping order for XX block. Note: XX denotes 1 to 250.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|If the same block, the value is the same
Interaction|
Eg.|`1`

#### no_percentXX
specifies whether suppress the display of percentages for XX block. Note: XX denotes 1 to 250.

Item|Contents
:---|:---
Default|
Value|`Y, N`
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`N`

#### sub_denominatorXX
specifies the dataset used as the denominator when calculating percentages for XX block. Note: XX denotes 1 to 250.

Item|Contents
:---|:---
Default|If this parameter is empty, use the currently filtered dataset as the denominator for calculation.
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`denominator_random`

>Note: Please make sure to retain at least the variables USUBJID and STUDYID in the numerator dataset `inds`. If the denominator is needed, the dataset of `sub_denominatorXX` needs to contain the variable USUBJID at least.

#### n_indentsXX
specifies the number of indents for XX block. Note: XX denotes 1 to 250.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`2`

#### no_grpXX
specifies whether to only display in the total column. If `no_grpXX="Y"`, only the total column will be calculated for XX block. Note: XX denotes 1 to 250.

Item|Contents
:---|:---
Default|`Y`
Value|`Y, N`
Requirement|Mandatory
Restriction|This parameter will only be used when `no_percentXX`=Y.
Interaction|
Eg.|`Y`

####  sub_leadingXX
specifies whether to have the leading row texts without any statistical values for XX block. Note: XX denotes 1 to 250.<br>

Item|Contents
:---|:---
Default|
Value|`Y, N`
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Y`

#### sub_fmtXX

specifies whether to display format values in output.<br>
If no records are left after filtering, this parameter determines the output format.<br>
* If sub_fmtXX is set to "N", the row will display "0"s, and the row text will correspond to the label of the current variable `sub_varXX`.<br>
* If sub_fmtXX is "Y" and the variable has a format, multiple rows of all '0's will be displayed based on the format.<br>

Item|Contents
:---|:---
Default|`N`
Value|`Y, N`
Requirement|Mandatory
Restriction|
Interaction|If `sub_fmtXX=N`, then the row text will correspond to the label of `sub_varXX`.
Eg.|`N`

#### sub_pageby_valueXX
specifies pageby text value for XX block. If the blocks contain the same 'sub_pageby_valueXX` value, it will display in the same page. Note: XX denotes 1 to 250.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`ADULT`

#### sub_header_onlyXX
specifies whether to show only leading row texts without any statistical values. Note: XX denotes 1 to 250.

Item|Contents
:---|:---
Default|
Value|`Y, N`
Requirement|Optional
Restriction| This option has an effect when `sub_leadingXX`=Y.
Interaction|
Eg.|`Y`

**Block parameters: End**<br>

## Control reporting

> **Note:**
> More details of `lenlist`, `justlist`, `justlist_header`, `nolblist`, `orderlist`, `defcol`, `pg`, and `pg_byvar` could refer [%m_u_report](../../utility/m_u_report/m_u_report_param.md).

#### lenlist
specifies the width proportion for each column. The lengths should be separated by "#" and their sum should be less than or equal to 99 per page. If this parameter is not provided, then column length will be calculated in macro automatically. The current algorithm for automatically calculating column widths is not yet mature enough. It is recommended that users manually adjust based on the output situation of RTF.

Item|Contents
:---|:---
Default|Auto-assigned based on the length of header/content for each column
Value|
Requirement|Optional
Restriction|If specified, all columns must be assigned with value respectively, the number of values separated by "#" must be equal to the number of columns.
Interaction|Same as `lenlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`60#13#13#13`

#### justlist
specifies the content alignment for each column, separated by "#". "l" means left-alignment, "c" means center-alignment, "r" means center-alignment. If leave it as null or not to state it, the default values will be used.<br>

Item|Contents
:---|:---
Default|`l` for first column and `c` for other columns in table.
Value|`l, c, r` for each column.
Requirement|Mandatory
Restriction|
Interaction| Same as `justlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`l#c#c#c`

#### justlist_header
specifies alignment of the table header, separated by "#". "l" means left-alignment, "c" means center-alignment, "r" means right-alignment.<br>
 

Item|Contents
:---|:---
Default| 
Value|`l, c, r` for each column.
Requirement|Mandatory
Restriction|
Interaction|Same as `justlist_header` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`l#c#c#c`

#### nolblist
specifies whether suppress the display of header name for each column, separated by "#". "Y" means do not display header name.  <br>
 

Item|Contents
:---|:---
Default| 
Value|`Y, N` for each column.
Requirement|Mandatory
Restriction|
Interaction|Same as `nolblist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`Y#N#N#N`

#### orderlist
specifies whether define it as an order variable for each column, separated by "#". "Y" means order variable, which does not repeat the value from one row to the next if the value does not change, unless an order variable to its left changes values.<br>
 
Item|Contents
:---|:---
Default| 
Value|`Y, N` for each column.
Requirement|Mandatory
Restriction|
Interaction|Same as `orderlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).

Eg.|`Y#N#N#N`

#### defcol
specifies the columns that need to be displayed with each column name separated by a space, or add subtitles between which columns.<br>
 

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
Interaction| When `pg_byvar=Y`, will recalculate the maximum number of rows by the page-by variable (eg. byvar). Same as `pg` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`18`

#### pg_byvar
specifies whether to perform the dynamic pg display according to the page-by variable (eg. byvar). If "Y", then will recalculate maximum number of rows by page. If leave it as null or not to state it, the default values will be used. 

Item|Contents
:---|:---
Default|`N`
Value|`Y, N`
Requirement|Mandatory
Restriction|
Interaction|Same as `pg_byvar` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`N`

#### sfx
specifies the suffix for the output file. If multiple outputs are generated in one code, then sfx is used to distinguish the outputs.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`mono`

## Control debug

#### deBug
specifies whether need to debug or not, if not "Y" then intermediate datasets will be deleted.<br>

Item|Contents
:---|:---
Default|`N`
Value|`Y, N` (not case sensitive)
Requirement|Optional
Restriction|
Interaction|
Eg.|`N`