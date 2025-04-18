# Syntax

%m_u_nested (<br>
[***inds***=&lt;input-dataset&gt;](#inds), <br>
[***pop_flag***=&lt;filtered-population-condition&gt;](#popflag),<br>
[***whr***=&lt;additional-filtered-condition&gt;](#whr),<br>
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
[***uncoded***=&lt;displayed-text-for-uncoded-terms&gt;](#uncoded),<br>
[***lab1***=&lt;first-column-header&gt;](#lab1),<br>
[***lab2***=&lt;second-column-header&gt;](#lab2),<br>
[***sortby***=&lt;sorting-method&gt;](#sortby),<br>
[***filterPctBy***=&lt;filter-by-frequency (%)&gt;](#filterpctby),<br>
[***pop_mvar***=&lt;macro-prefix-label-for-treatment(s)&gt;](#popmvar),<br>
[***deBug***=&lt;Y|N&gt;](#debug)<br>
);


# Parameter


#### inds
specifies the input data set.

Item|Contents
:---|:---
Default|
Value| A one or two level dataset name. 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`adae` <br>`adam.adae`

#### pop_flag
specifies filtered population, condition used in where statement.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`SAFFL="Y"`


#### whr
specifies additional filtered condition used in where statement.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Condition used to further filter the input dataset `inds`, which has already been filtered by `pop_flag`. 
Eg.|`TRTEMFL="Y"`


#### trtgrpn
specifies the treatment variable(N). <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|Type of `trtgrpn` is numeric.
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


#### UniqueIDVars
specifies the unique variable to count number of population for different groups. If leave it as null or not to state it, the default values will be used.

Item|Contents
:---|:---
Default|`USUBJID`
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`USUBJID`


#### lev1
specifies the first level variable for nested outputs, usually the first level is "Body system class", "Medication class", etc. <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`AEBODSYS`


#### lev2
specifies the second level variable for nested outputs, usually the second level is "Preferred term", etc. <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`AEDECOD`


#### lev3
specifies the third level variable for nested outputs.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction| Could be specified only when the `lev2` is not null.
Interaction|
Eg.|`AETERM`


#### comnvarn
specifies the common variable, usually the category under each `lev1`,  `lev2`, `lev3`, such as "Severity", "Toxicity grade", etc.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|Variable type should be numeric.
Interaction|If specified, a new column will be generated, the header value is controlled by `lab2`.
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
Interaction|The format is associated with `comnvarn_level`.
Eg.|`grd`


#### comnvarn_level
specifies different value groups for different levels of `comnvarn`. Values are separated by spaces and levels are separated by "|". Different value groups are corresponding to those levels defined in `comnvarnfmt`.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Conditional
Restriction|This parameter should be populated when `comnvarnfmt` is populated, and the number of levels should be same with the format `comnvarnfmt`.
Interaction|The values are those in `comnvarn`.
Eg.|`1 2 3 4 5` <code>&#124;</code> `1` <code>&#124;</code> `2` <code>&#124;</code> `3` <code>&#124;</code> `4` <code>&#124;</code> `5` <code>&#124;</code> `3 4 5`


#### rowtext
specifies the leading text, which is the summary row for the table. If null, this row would not be generated.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`Any AE`


#### socfile
specifies the path of [u_socint.sas](../../../other/u_socint.md) which containing the order of SOC incase need to use specific order. If not populated, the default order will be used.<br>
 
Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|This parameter would only work when `sortby` contains "SOC" such as "lev1soc". This parameter would be overridden if the `socint` is not null.  
Eg.|`root/cdar/xxx/xxxx/ar/xxx/tlf/dev/macro`


#### socint
specifies the SOC sorting variable in `inds`. <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|The vairable type should be numeric.
Interaction|This parameter would work only when `sortby` contains "SOC" such as "lev1soc". This parameter override the `socfile` parameter.  
Eg.|`SOCINT`


#### uncoded
specifies the displayed text for uncoded term. It will be placed at the end within each level. If leave it as null or not to state it, the default values will be used.<br>
 

Item|Contents
:---|:---
Default|`ZZUnknown`
Value|
Requirement|Optional
Restriction|
Interaction|This parameter would work for missing and also those values same with `uncoded` in data.  
Eg.|`Not coded`


#### lab1
specifies the header for the first column.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`System Organ Class (*ESC*)n Preferred Term`


#### lab2
specifies the header for the second column when the `comnvarn` is specified.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|This parameter has effect only when the `comnvarn` is specified.  
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
Default|Sory by alphabetical order within each level.
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`lev1soc # descending lev2total`



#### filterPctBy
specifies the filter by frequency (%), the percentage variable for each treatment group is "lev1trt_pct1", "lev1trt_pct2", etc., respectively.<br>
lev1trt_pct**x**: percentage variable of **x**th treatment group. Other variable name is invalid.<br>
>Note: If want to filter by frequency of "Preferred term", then "Preferred term" should be set as `lev1`.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction| This option has effect only for `lev1`. 
Interaction| 
Eg.|`lev1trt_pct1>10 or lev1trt_pct2>10`


#### pop_mvar
specifies the macro variable used to class different groups which will be displayed as headers or contents.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|This should be the same as the `gmacro` in [%m_u_popn](../../utility/m_u_popn/m_u_popn_descp.md).
Interaction| 
Eg.|`saspopb`


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