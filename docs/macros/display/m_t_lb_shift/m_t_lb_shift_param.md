# Syntax

%m_t_lb_shift (<br>
[***inds***=&lt;input-data-set&gt;](#inds), <br>
[***pop_flag***=&lt;filtered-population-condition&gt;](#popflag),<br>
[***whr***=&lt;additional-filtered-condition&gt;](#whr),<br> 
[***paramVar***=&lt;categorical-parameter-variable&gt;](#paramvar),<br>
[***paramVarN***=&lt;numeric-parameter-variable&gt;](#paramvarn),<br>
[***paramvarfmt***=&lt;format-of-paramVar&gt;](#paramvarfmt),<br>
[***pop_mvar***=&lt;macro-prefix-label-for-treatment(s)&gt;](#popmvar),<br>
[***trtgrpn***=&lt;numeric-treatment-variable&gt;](#trtgrpn),<br>
[***trtTot***=&lt;Y|N (display total treatment column or not)&gt;](#trttot),<br>
[***UniqueIDVars***=&lt;unique-identifier-variable&gt;](#uniqueidvars),<br>
[***rowvarc***=&lt;row-variable&gt;](#rowvarc),<br>
[***rowfmt***=&lt;format-of-row-variable&gt;](#rowfmt),<br>
[***rowTot***=&lt;Y|N (total row needed or not)&gt;](#rowtot),<br>
[***colvarc***=&lt;column-variable&gt;](#colvarc),<br>
[***colfmt***=&lt;format-of-column-variable&gt;](#colfmt),<br>
[***colTot***=&lt;Y|N (total column needed or not)&gt;](#coltot),<br>
[***lenlist***=&lt;list-of-column-width&gt;](#lenlist),<br>
[***headerlist***=&lt;list-of-display-header(s)&gt;](#headerlist),<br>
[***above_header***=&lt;display-text-above-ctcae-column&gt;](#aboveheader),<br> 
[***pg***=&lt;maximum-rows-per-page&gt;](#pg),<br>
[***sfx***=&lt;suffix&gt;](#sfx),<br>
[***deBug***=&lt;Y|N&gt;](#debug)<br>
);

---

# Parameter
## Control input

#### inds
specifies the input data set

Item|Contents
:---|:---
Default|
Value| A one or two level dataset name. 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`adlb` <br>`adam.adlb`

#### pop_flag
specifies filtered population, condition used in where statement.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Filter input dataset for `inds.`.
Eg.|`SAFFL = "Y"`

#### whr
specifies additional filtered condition used in where statement.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Condition used to further filter the input dataset `inds`, which has already been filtered by `pop_flag`.
Eg.|`not missing(TRT01AN)`

## Control analysis

#### paramvar
specifies the analyzed parameter showed in 'by page' part (categorical).

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`PARAM`

#### paramVarN
specifies numeric parameter variable for sorting. 

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Numeric variable one-one mapping to `paramVar`.
Eg.|`PARAMN`

#### paramvarfmt
specifies format of `paramvar` to display in outputs. The format should begin with $, indicating that format applies to character variables. If paramvarN is null, parameters are presented following the physical order of the format. If both `paramfmt` and `paramN` is missing, then parameters will be presented alphabetically. If both `paramvarN` and `paramvarfmt` have value, then the order is the same with `paramvarN`.

Item|Contents
:---|:---
Default| 
Value| a character format
Requirement|Optional
Restriction|
Interaction| 
Eg.|`$PARAM_FMT`

#### pop_mvar
specifies the macro variable used to class different groups which will be displayed as headers or contents.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|This should be the same as the `gmacro` in [%m_u_popn](../../utility/m_u_popn/m_u_popn_descp.md).
Interaction|Same as `pop_mvar` in [%m_u_cross_occn](../../analysis/m_u_cross_occn/m_u_cross_occn_param.md).
Eg.|`saspopb`


#### trtgrpn
specifies the treatment variable(N).

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction| Type of `trtgrpn` is numeric.
Interaction| Same as `trtgrpn` in [%m_u_cross_occn](../../analysis/m_u_cross_occn/m_u_cross_occn_param.md).
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
specifies unique variables to count number of population for different groups. If leave it as null or not to state it, the default values will be used.

Item|Contents
:---|:---
Default|`USUBJID`
Value|
Requirement|Optional
Restriction| 
Interaction|Same as `UniqueIDVars` in [%m_u_cross_occn](../../analysis/m_u_cross_occn/m_u_cross_occn_param.md).
Eg.|`USUBJID`

#### rowvarc
specifies the variable storing the row categories.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction| 
Interaction|Same as `rowvarc1` in [%m_u_cross_occn](../../analysis/m_u_cross_occn/m_u_cross_occn_param.md). 
Eg.|`BTOXGR `

#### rowfmt
specifies format of row variable aiming to add the order for the display sequence and also the contents, should be created before calling this macro. If null, then will use the format created automatically in the macro.  

```
*Default creating format;
proc format;
	value _t_lb_shift_rown
	1="Grade 0"
	2="Grade 1"
	3="Grade 2"
	4="Grade 3"
	5="Grade 4"
	6="Total"
	;
```

Item|Contents
:---|:---
Default| `_t_lb_shift_rown `
Value|
Requirement|Mandatory
Restriction|`rowfmt` should start with 1 and increase consecutively.
Interaction| `rowfmt` should include 'Total' as the last value when `rowTot=Y`. <br>Same as `rowfmt1` in [%m_u_cross_occn](../../analysis/m_u_cross_occn/m_u_cross_occn_param.md).  
Eg.|`_t_lb_shift_rown`

#### rowTot
specifies whether total row is needed. If leave it as null or not to state it, the default values will be used. 

Item|Contents
:---|:---
Default| `N`
Value| `Y, N` 
Requirement|Optional
Restriction|
Interaction|If `rowTot = Y` then need to add 'Total' item in `rowfmt` format at last.<br> Same as `rowTot1` in [%m_u_cross_occn](../../analysis/m_u_cross_occn/m_u_cross_occn_param.md).  
Eg.|`Y`

#### colvarc
specifies column variable.   

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|Same as `colvarc` in [%m_u_cross_occn](../../analysis/m_u_cross_occn/m_u_cross_occn_param.md).
Eg.|`ATOXGR`

#### colfmt
specifies format of column variable aiming to add the order for the display sequence and also the contents, should be created before calling this macro. If null, then will use the format created automatically in the macro.

```
*Default creating format;
proc format;
	value _t_lb_shift_coln
	1="Grade 0"
	2="Grade 1"
	3="Grade 2"
	4="Grade 3"
	5="Grade 4"
	6="Total"
	;
```

Item|Contents
:---|:---
Default| `_t_lb_shift_coln`
Value|
Requirement|Mandatory
Restriction|`colfmt` should start with 1 and increase consecutively.
Interaction| `colfmt` should include 'Total' as the last value when `colTot=Y`. <br> Same as `colfmt` in [%m_u_cross_occn](../../analysis/m_u_cross_occn/m_u_cross_occn_param.md).   
Eg.|`_t_lb_shift_coln`

#### colTot
specifies whether total column is needed or not. If leave it as null or not to state it, the default values will be used.<br>

Item|Contents
:---|:---
Default| `N`
Value| `Y, N` 
Requirement|Optional
Restriction|
Interaction| If `colTot=Y` then the `colfmt` should be specified and include 'Total' as the last value. <br> Same as `colTot` in [%m_u_cross_occn](../../analysis/m_u_cross_occn/m_u_cross_occn_param.md).
Eg.|`Y`

## Control reporting

> **Note:**
> Header and contents of the first 3 columns are left aligned. The rest of columns are centered aligned.
> More details of `lenlist` and `pg` could refer  [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
  

#### lenlist
specifies the width proportion for each column. The lengths should be separated by "#" and their sum should be less than or equal to 99 per page. If this parameter is not provided, then column length will be calculated in macro automatically. The current algorithm for automatically calculating column widths is not yet mature enough. It is recommended that users manually adjust based on the output situation of RTF.

Item|Contents
:---|:---
Default|Auto-assigned based on the length of header/content for each column.
Value|
Requirement|Optional
Restriction|If specified, all columns must be assigned with value respectively, the number of values separated by "#" must be equal to the number of columns.
Interaction| Same as `lenlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`20#9#9#9#9#9#9#9#9`

#### headerlist
specifies the list of headers for different results, separated by "#". If leave it as null or not to state it, the default values will be used. 

 
Item|Contents
:---|:---
Default|`#Nobs#Baseline(*ESC*)nCTCAE grade`
Value|
Requirement|Mandatory
Restriction|Must correspond with `varlist` in terms of the number of elements.
Interaction|Same as `headerlist` in [%m_u_report](../../utility/m_u_report/m_u_report_param.md).
Eg.|`#Nobs#Baseline(*ESC*)nCTCAE grade`

#### above_header
specifies the header above and span the analysis columns. If leave it as null or not to state it, the default values will be used.
 
Item|Contents
:---|:---
Default|`Maximum on-treatment CTCAE grade`
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Maximum on-treatment CTCAE grade`

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