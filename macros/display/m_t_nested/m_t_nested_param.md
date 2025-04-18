# Syntax

%m_t_nested (<br>
[***inds***=&lt;input-dataset&gt;](#inds), <br>
[***pop_flag***=&lt;filtered-population-condition&gt;](#popflag),<br>
[***whr***=&lt;additional-filtered-condition&gt;](#whr),<br>
[***pageByN***=&lt;numeric-pageby-variable&gt;](#pagebyn),<pageByN><br>
[***pageByFmt***=&lt;format-name-for-pageByN&gt;](#pagebyfmt),<br>
[***trtgrpn***=&lt;numeric-treatment-variable&gt;](#trtgrpn),<br>
[***trtTot***=&lt;Y|N (display total treatment column or not)&gt;](#trttot),<br>
[***UniqueIDVars***=&lt;unique-identifier-variable&gt;](#uniqueidvars),<br>
[***lev1***=&lt;first-level-variable&gt;](#lev1),<br>
[***lev2***=&lt;second-level-variable&gt;](#lev2),<br>
[***lev3***=&lt;third-level-variable&gt;](#lev3),<br>
[***comnvarn***=&lt;common-variable&gt;](#comnvarn),<br>
[***comnvarnfmt***=&lt;format-name-for-common-variable&gt;](#comnvarnfmt),<br>
[***comnvarn_level***=&lt;values-for-each-level-of-common-variable &gt;](#comnvarnlevel),<br>
[***rowtext***=&lt;text-for-first-row&gt;](#rowtext),<br>
[***socfile***=&lt;path-of-u_socint.sas&gt;](#socfile),<br>
[***socint***=&lt;variable-of-SOC-order)&gt;](#socint),<br>
[***uncoded***=&lt;display-text-for-uncoded-terms&gt;](#uncoded),<br>
[***lab1***=&lt;first-column-header&gt;](#lab1),<br>
[***lab2***=&lt;second-column-header&gt;](#lab2),<br>
[***sortby***=&lt;sorting-method&gt;](#sortby),<br>
[***filterPctBy***=&lt;filter-by-frequency (%)&gt;](#filterpctby),<br>
[***pop_mvar***=&lt;macro-prefix-label-for-treatment(s)&gt;](#popmvar),<br>
[***lenlist***=&lt;list-of-column-width&gt;](#lenlist), <br>
[***justlist***=&lt;list-of-l|c|r (alignment column: c="center", l="left", r="right")&gt;](#justlist), <br>
[***justlist_header***=&lt;list-of-l|c|r (alignment header: c="center", l="left", r="right")&gt;](#justlistheader), <br>
[***nolblist***=&lt;list-of-Y|N (suppress the display of header text)&gt;](#nolblist), <br>
[***orderlist***=&lt;list-of-Y|N (order option used or not)&gt;](#orderlist), <br>
[***idlist***=&lt;list-of-Y|N (id option used or not)&gt;](#idlist), <br>
[***grouplist***=&lt;list-of-Y|N (group option used or not)&gt;](#grouplist), <br>
[***idpage***=&lt;list-of-Y|N (page option used or not)&gt;](#idpage), <br>
[***defcol***=&lt;description-text-of-rules-for-subtitles-or-columns-name&gt;](#defcol), <br>
[***blank_after***=&lt;variable-insert-blank-line-after&gt;](#blankafter), <br>
[***pg***=&lt;maximum-rows-per-page&gt;](#pg), <br>
[***sfx***=&lt;suffix&gt;](#sfx), <br>
[***deBug***=&lt;Y|N&gt;](#debug)<br>
);

# Parameter

## Control input

#### inds
specifies the input dataset.<br>

Item|Contents
:---|:---
Default|
Value| A one or two level dataset name.  
Requirement|Mandatory
Restriction|
Interaction| 
Eg.|`adae` <br>`adam.adae`


#### pop_flag
specifies filtered population, condition used in where statement. <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Filter input dataset for `inds`.
Eg.|`SAFFL="Y"`


#### whr
specifies additional filtered condition used in where statement. <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Condition used to further filter the input dataset `inds`, which has already been filtered by `pop_flag`.
Eg.|`TRTEMFL="Y"`

## Control analysis

#### pageByN
specifies the page by numeric variable.<br>
Note: Not supportive for cases where different pages having different BigNs or treatment groups.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|Type of `pageByN` is numeric.
Interaction|If `pageByN` is specified, `pageByFmt` should be specified.
Eg.|`AGEGR1N`


#### pageByFmt
specifies the format to be applied to the `pageByN` variable.


Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Populated when `pageByN` is provided.
Eg.|`agegrn`


#### trtgrpn
specifies the treatment variable(N).<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|Type of `trtgrpn` is numeric.
Interaction|Same as `trtgrpn` in [%m_u_nested](../../analysis/m_u_nested/m_u_nested_param.md).
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
Interaction| If "Y", the last group defined in `pop_mvar` will be treated as total group and kept. If "N", the last group defined in `pop_mvar` will be treated as total group and deleted. Thus, if "Y", the last format value should be the total group in `pop_mvar`. <br>Same as `trtTot` in [%m_u_nested](../../analysis/m_u_nested/m_u_nested_param.md).
Eg.|`N`
 
#### UniqueIDVars
specifies unique variables to count number of population for different groups. If leave it as null or not to state it, the default values will be used.  <br>

Item|Contents
:---|:---
Default|`USUBJID`
Value|
Requirement|Optional
Restriction|
Interaction|Same as `UniqueIDVars` in [%m_u_nested](../../analysis/m_u_nested/m_u_nested_param.md).
Eg.|`USUBJID`


#### lev1
specifies the first level variable for nested outputs, usually the first level is "Body system class", "Medication class", etc. <br>
 

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction| Same as `lev1` in [%m_u_nested](../../analysis/m_u_nested/m_u_nested_param.md).
Eg.|`AEBODSYS`


#### lev2
specifies the second level variable for nested outputs, usually the second level is "Preferred term", etc. <br>
 

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Same as `lev2` in [%m_u_nested](../../analysis/m_u_nested/m_u_nested_param.md).
Eg.|`AEDECOD`


#### lev3
specifies the third level variable for nested outputs.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|Could be specified only when the `lev2` is not null.
Interaction|Same as `lev3` in [%m_u_nested](../../analysis/m_u_nested/m_u_nested_param.md).
Eg.|`AETERM`


#### comnvarn
specifies the common variable, usually the category under each `lev1`,  `lev2`, `lev3`, such as "Severity", "Toxicity grade", etc.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|Variable type should be numeric.
Interaction|If specified, a new column will be generated, the header value is controlled by `lab2`. <br>Same as `comnvarn` in [%m_u_nested](../../analysis/m_u_nested/m_u_nested_param.md).
Eg.|`ATOXGRN`


#### comnvarnfmt
specifies format name used for `comnvarn`. The format should be pre-defined, which dummy the sequence and the text in output. <br>
For example:<br>

```sas
proc format;
  value grd
    1 = "All" /*level 1*/
    2 = "Grade 1" /*level 2*/
    3 = "Grade 2" /*level 3*/
    4 = "Grade 3" /*level 4*/
    5 = "Grade 4" /*level 5*/
    6 = "Grade 5" /*level 6*/
    7 = "Grade >=3" /*level 7*/
  ;
run;
```

For the format "grd", the number on the left side of (=) is **not** the value in variable `comnvarn` "atoxgrn", it is the display order, the formatted value on the right side is the displayed value in output. and the output will dummy 7 rows for each `lev1`,  `lev2`, `lev3`.<br>
 
Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|`comnvarnfmt` should start with 1 and increase consecutively.
Interaction|The format is associated with `comnvarn_level`.<br> Same as `comnvarnfmt` in [%m_u_nested](../../analysis/m_u_nested/m_u_nested_param.md).
Eg.|`grd`


#### comnvarn_level
specifies different value groups for different levels of `comnvarn`. Values are separated by spaces and levels are separated by "|". Different value groups are corresponding to those levels defined in `comnvarnfmt`.<br>
 

Item|Contents
:---|:---
Default|
Value|
Requirement|Conditional
Restriction|This parameter should be populated when `comnvarnfmt` is populated, and the number of levels should be same with the format `comnvarnfmt`.
Interaction|The values are those in `comnvarn`.<br> Same as `comnvarn_level` in [%m_u_nested](../../analysis/m_u_nested/m_u_nested_param.md).
Eg.|`1 2 3 4 5`<code>&#124;</code> `1` <code>&#124;</code> `2` <code>&#124;</code> `3` <code>&#124;</code> `4` <code>&#124;</code> `5` <code>&#124;</code> `3 4 5`

#### rowtext
specifies the leading text, which is the summary row for the table. If null, this row would not be generated.<br>
 

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Same as `rowtext` in [%m_u_nested](../../analysis/m_u_nested/m_u_nested_param.md).
Eg.|`Any AE related to IP`


#### socfile
specifies the path of [u_socint.sas](../../../other/u_socint.md) which containing the order of SOC incase need to use specific order. If not populated, the default order will be used.<br>
 
Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|This parameter would only work when `sortby` contains "SOC" such as "lev1soc". This parameter would be overridden if the `socint` is not null. <br>Same as `socfile` in [%m_u_nested](../../analysis/m_u_nested/m_u_nested_param.md).
Eg.|`root/cdar/xxx/xxxx/ar/xxx/tlf/dev/macro`

#### socint
specifies the SOC sorting variable in `inds`. <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|The vairable type should be numeric.
Interaction|This parameter would work only when `sortby` contains "SOC" such as "lev1soc". <br> This parameter override the `socfile` parameter. <br>Same as `socint` in [%m_u_nested](../../analysis/m_u_nested/m_u_nested_param.md).
Eg.|`SOCINT`


#### uncoded
specifies the displayed text for uncoded term. It will be placed at the end within each level. If leave it as null or not to state it, the default values will be used.<br>
 

Item|Contents
:---|:---
Default|`ZZUnknown`
Value|
Requirement|Optional
Restriction|
Interaction|This parameter would work for missing and also those values same with `uncoded` in data. <br>Same as `uncoded` in [%m_u_nested](../../analysis/m_u_nested/m_u_nested_param.md).
Eg.|`Not coded`


#### lab1
specifies the header for the first column.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|Same as `lab1` in [%m_u_nested](../../analysis/m_u_nested/m_u_nested_param.md).
Eg.|`System Organ Class (*ESC*)n  Preferred Term`


#### lab2
specifies the header for the second column when the `comnvarn` is specified.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|This parameter has effect only when the `comnvarn` is specified. <br>Same as `lab2` in [%m_u_nested](../../analysis/m_u_nested/m_u_nested_param.md).
Eg.|`Grade`


#### sortby
specifies the sorting method by the following codes. Each code is separated by "#". If need to use descending order, add "descending" before the code. If leave it as null or not to state it, the default values will be used. <br>


Code|Description
:---|:---
lev1soc | sort by SOC international order<br>
lev1ab | sort by alphabetically<br>
lev1total | sort by the frequency of total<br>
levltrt1 | sort by the frequency of 1st treatment group<br>
levltrtX | sort by the frequency of Xth treatment group<br>
lev2ab | sort by alphabetically<br>
lev2total | sort by the frequency of total<br>
lev2trtX | sort by the frequency of Xth treatment group<br>
lev3ab | sort by alphabetically<br>
lev3total | sort by the frequency of total<br>
lev3trtX | sort by the frequency of Xth treatment group<br>
___

 
Item|Contents
:---|:---
Default|Sory by alphabetical order within each level
Value|
Requirement|Optional
Restriction|
Interaction| Same as `sortby` in [%m_u_nested](../../analysis/m_u_nested/m_u_nested_param.md).
Eg.|`lev1soc # descending lev2total`


#### filterPctBy
specifies the filter by frequency (%), the percentage variable for each treatment group is "lev1trt_pct1", "lev1trt_pct2", etc., respectively.<br>
lev1trt_pct**x**: percentage variable of **x**th treatment group. Other variable name is invalid.<br>
>Note: If want to filter by frequency of "Prefered term", then "Prefered term" should be set as `lev1`.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction| This option has effect only for `lev1`. 
Interaction|Same as `filterPctBy` in [%m_u_nested](../../analysis/m_u_nested/m_u_nested_param.md).
Eg.|`lev1trt_pct1>10 or lev1trt_pct2>10`


#### pop_mvar
specifies the macro variable used to class different groups which will be displayed as headers or contents.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|This should be the same as the `gmacro` in [%m_u_popn](../../utility/m_u_popn/m_u_popn_descp.md).
Interaction|Same as `pop_mvar` in [%m_u_nested](../../analysis/m_u_nested/m_u_nested_param.md).
Eg.|`saspopb`

## Control report

> More details of `lenlist`, `justlist`, `justlist_header`, `nolblist`, `orderlist`, `idlist`, `grouplist`, `idpage`, `defcol`, `blank_after`, and `pg` could refer [%m_u_report](../../utility/m_u_report/m_u_report_param.md).

#### lenlist
specifies the width proportion for each column. The lengths should be separated by "#" and their sum should be less than or equal to 99 per page. If this parameter is not provided, then column length will be calculated in macro automatically. The current algorithm for automatically calculating column widths is not yet mature enough. It is recommended that users manually adjust based on the output situation of RTF.

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
Default|`l` for column of `lab1` and `lab2`, `c` for other columns.
Value|`l, c, r` for each column.
Requirement|Optional
Restriction|
Interaction|Same as `justlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`l#c#c#c`


#### justlist_header
specifies the header alignment for each column, separated by "#". "l" means left-alignment, "c" means center-alignment, "r" means center-alignment. If leave it as null or not to state it, the default values will be used.<br>
 

Item|Contents
:---|:---
Default|`l` for column of `lab1` and `lab2`, `c` for other columns.
Value|`l, c, r` for each column.
Requirement|Optional
Restriction|
Interaction|Same as `justlist_header` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
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
specifies whether to apply the ORDER option for each column, separated by "#". "Y" means order variable, which does not repeat the value from one row to the next if the value does not change. If leave it as null or not to state it, the default values will be used.<br>
 

Item|Contents
:---|:---
Default|If column of `lab2` exist then column 1 set to "Y", others set to "N". If column of `lab2` not exist then all columns set to "N".
Value|`Y, N` for each column.
Requirement|Mandatory
Restriction|
Interaction|Same as `orderlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`Y#N#N#N`


#### idlist
specifies whether to apply the ID option for each column, separated by "#". "Y" means ID variable, an ID variable and all columns to its left appear at the left of every page of a report. If leave it as null or not to state it, the default values will be used.<br>

Item|Contents
:---|:---
Default|`N` for each column.
Value|`Y, N` for each column.
Requirement|Optional
Restriction|
Interaction|Same as `idlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`Y#N#N#N`


#### grouplist
specifies whether define it as a group variable for each column, separated by "#". "Y" means group variable. the observations from the dataset that have a unique combination of formatted values for all group variables will be consolidated into one row. If leave it as null or not to state it, the default values will be used.<br>

Item|Contents
:---|:---
Default|`N` for each column.
Value|`Y, N` for each column.
Requirement|Optional
Restriction|
Interaction|Same as `grouplist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`N#N#N#N`


#### idpage
specifies whether inserts a page break for each column, separated by "#". "Y" means this column and all columns to its right will appear on a new page. If leave it as null or not to state it, the default values will be used. <br>  


Item|Contents
:---|:---
Default|`N` for each column.
Value|`Y, N` for each column.
Requirement|Optional
Restriction| 
Interaction|When "Y" exist in the `idlist`, these "Y"-columns are used as the identification columns and appear first in the new page, and followed by the `idpage=Y` column. Otherwise, the `idpage=Y` column will appear as this fisrt column in the new page. <br>Same as `idpage` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`N#N#Y#N`


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
specifies the variable on which "insert blank line" is based.<br>
 

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
specifies the suffix for the output file. If multiple outputs are generated in one code, then sfx is used to distincwish the outputs.

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
Interaction|Same as `deBug` in [%m_u_nested](../../analysis/m_u_nested/m_u_nested_param.md).
Eg.|`N`
 

