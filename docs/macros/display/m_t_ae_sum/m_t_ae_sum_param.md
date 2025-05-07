# Syntax

%m_t_ae_sum (<br>
[***inds***=&lt;input-dataset&gt;](#inds), <br>
[***merge_adsl***=&lt;input-adsl-dataset&gt;](#mergeadsl),<br>
[***pop_flag***=&lt;filtered-population-condition&gt;](#popflag),<br>
[***whr***=&lt;additional-filtered-condition&gt;](#whr),<br>
[***pop_mvar***=&lt;macro-prefix-label-for-treatment(s)&gt;](#popmvar),<br>
[***trtgrpn***=&lt;numeric-treatment-variable&gt;](#trtgrpn),<br>
[***denominator***=&lt;dataset (used as denominator)&gt;](#denominator),<br>
[***total_YN***=&lt;Y|N (display total treatment column or not)&gt;](#totalyn),<br>
[***flg_list***=&lt;list-of-flag-variable&gt;](#flglist),<br>
[***where_list***=&lt;list-of-filter-condition&gt;](#wherelist),<br>
[***label_list***=&lt;list-of-displayed-text&gt;](#labellist),<br>
[***data_order_list***=&lt;order-and-grouping&gt;](#dataorderlist),<br>
[***lenlist***=&lt;list-of-column-width&gt;](#lenlist), <br>
[***justlist***=&lt;list-of-l|c|r (alignment column: c="center", l="left", r="right")&gt;](#justlist), <br>
[***justlist_header***=&lt;list-of-l|c|r (alignment header: c="center", l="left", r="right")&gt;](#justlistheader), <br>
[***nolblist***=&lt;list-of-Y|N (suppress the display of header text or not)&gt;](#nolblist), <br>
[***orderlist***=&lt;list-of-Y|N (order option used or not)&gt;](#orderlist), <br>
[***defcol***=&lt;description-text-of-rules-for-subtitles-or-columns-name&gt;](#defcol), <br>
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
Eg.|`adae` <br>`adam.adae`


#### merge_adsl
specifies the input adsl dataset, which is used to calculate the total number of people (denominator) in each group.<br>

Item|Contents
:---|:---
Default|
Value|A one or two level dataset name.
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`adsl` <br>`adam.adsl`


#### pop_flag
specifies filtered population, condition used in where statement.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Filter input dataset both `merge_adsl` and `inds`.
Eg.|`SAFFL="Y"`


#### whr
specifies filtered condition used in where statement. <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Filter input dataset `inds`.
Eg.|`TRTEMFL="Y"`

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
Restriction|Type of `trtgrpn` is numeric.
Interaction|
Eg.|`TRT01AN`


#### denominator
specifies the dataset used as the denominator. If leave it as null or not to state it, the default values will be used. 

Item|Contents
:---|:---
Default| If this parameter is empty, use the filtered `inds` as the denominator for calculation
Value|
Requirement|Optional
Restriction|Need retain at least the variables USUBJID and STUDYID in the numerator dataset `inds`, and denominator dataset `denom_dt` needs to  contain the variable USUBJID at least. If `trtgrpn` is provided, then `trtgrpn` should also exist in both `inds` and `denom_dt`.
Interaction|Same as `denom_dt` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md).
Eg.|`adsl`


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


#### flg_list
specifies the name of flags for each row. Values are separated by spaces. <br>
Note: only use this parameter when the flag variables already exist in the `inds` dataset and the naming follows the rule: flg1 - flgxx, and the valid value should be "Y". <br>

Item|Contents
:---|:---
Default| 
Value| 
Requirement|Optional
Restriction|The valid flag-variable name should be flg**x**, the valid flag-variable value should be "Y".
Interaction|This parameter is overridden by the `where_list` parameter. 
Eg.|`flg1 flg2`


#### where_list
specifies the filter condition for each row, separated by "|". <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|This parameter override the `flg_list` parameter.
Eg.|`AESER="Y"` <code>&#124;</code> `AESER="Y" and AREL="Y"`


#### label_list
specifies the displayed value for each row text, separated by "|".<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|The number of displayed values is separated by <code>&#124;</code> must be equal to the number of `flg_list` or `where_list` separated by <code>&#124;</code>.<br>
Interaction|
Eg.|`Any SAE` <code>&#124;</code> `Any SAE possibly related to IP`


#### data_order_list
specifies the order and grouping for each row (The order of each numeric number here corresponds to the order in flg_list or label_list. ie: flg_list = flg1 flg2 flg3 flg4, data_order_list=1|1|2|2, then flg1 and flg2 will be grouped together, same for flg3 and flg4). If leave it as null or not to state it, the default values will be used.<br>

Item|Contents
:---|:---
Default|Same as the order in `where_list` or `flg_list`, each row will be regarded as a single group.
Value|
Requirement|Optional
Restriction|Use numeric value.
Interaction|
Eg.|`1 `<code>&#124;</code> `1`<code>&#124;</code> `2` <code>&#124;</code> `3` <code>&#124;</code> `4` <code>&#124;</code> `5`

## Control reporting

> **Note:**<br>
> More details of `lenlist`, `justlist`, `justlist_header`, `nolblist`, `orderlist`, `defcol`, `idlist`, and `pg` could refer [%m_u_report](../../utility/m_u_report/m_u_report_param.md).

#### lenlist
specifies the width proportion for each column. The lengths should be separated by "#" and their sum should be less than or equal to 99 per page. If this parameter is not provided, then column length will be calculated in macro automatically. The current algorithm for automatically calculating column widths is not yet mature enough. It is recommended that users manually adjust based on the output situation of RTF.<br>
 

Item|Contents
:---|:---
Default|Auto-assigned based on the length of header/content for each column
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
specifies the header alignment for each column, separated by "#". "l" means left-alignment, "c" means center-alignment, "r" means center-alignment.<br>


Item|Contents
:---|:---
Default|
Value|`l, c, r` for each column.
Requirement|Optional
Restriction|
Interaction|Same as `justlist_header` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`l#c#c#c`


#### nolblist
specifies whether suppress the display of header name for each column, separated by "#". "Y" means do not display header name. Following AZ template, the header of the first column is always set missing in this macro, namely the first column set to "Y". <br>

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
Requirement|Mandatory
Restriction|
Interaction|Same as `orderlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`Y#N#N#N`


#### defcol
specifies the columns that need to be displayed with each column name separated by a space, or add subtitles between columns (which will be used in proc report column statement). If leave it as null or not to state it, the default values will be used.<br>

Item|Contents
:---|:---
Default|Display all columns.
Value|
Requirement|Optional
Restriction|The column name is the vairable name in input dataset `table`.
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
Eg.|saf

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
