# Syntax

%m_u_effcount (<br>
[***inds***=&lt;input-dataset&gt;](#inds), <br>
[***pop_flag***=&lt;filtered-population-condition&gt;](#pop_flag),<br>
[***whr***=&lt;additional-filtered-condition&gt;](#whr),<br>
[***trtgrpn***=&lt;numeric-treatment-group-variable&gt;](#trtgrpn),<br>
[***denomds***=&lt;denominator-dataset&gt;](#inds), <br>
[***pop_mvar***=&lt;macro-prefix-label-for-treatment(s)&gt;](#pop_mvar),<br>
[***index***=&lt;calculation-index&gt;](#index), <br>
[***statlabel***=&lt;statistics-label-Y|N&gt;](#statlabel), <br>
[***ord***=&lt;order&gt;](#ord), <br>
[***debug***=&lt;Y|N&gt;](#debug)<br>
);<br>

---

# Parameter

#### inds
specifies the input data set.

Item|Contents
:---|:---
Default|
Value|A one or two level dataset name. 
Requirement| Mandatory
Restriction|
Interaction|
Eg.|`adsl` <br>`adam.adtte`

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

#### trtgrpn
specifies the variable name of numeric value of treatment group.

Item|Contents
:---|:---
Default|
Value| 
Requirement|Mandatory
Restriction|The variable type of `trtgrpn` must be numeric.
Interaction| 
Eg.|`trt01pn`

#### denomds
specifies the denominator dataset, which is used to calculate the total number of people (denominator) in each group.

Item|Contents
:---|:---
Default|
Value|A one or two level dataset name.
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`adsl` <br>`adam.adsl`

#### pop_mvar
specifies the macro variable used to class different groups which will be displayed as headers or contents.
 
Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|This should be the same as the `gmacro` in [%m_u_popn](../../utility/m_u_popn/m_u_popn_descp.md).
Interaction|Same as `pop_mvar` in [%m_u_desc_stat_grp_mix](../../analysis/m_u_desc_stat_grp_mix/m_u_desc_stat_grp_mix_param.md).
Eg.|`saspopb`

#### index
specifies indexes for calculation including condition, suborder, level, label, and additional features.

Item|Contents
:---|:---
Default|
Value|List of indexes where each index is quoted by {}, within each index, use leading words: 
- `cond=`: Condition for row selection
  - Special value `blank`: Creates a leading row
- `label=`: Display label for the row
- `level=`: Indentation level
- `subord=`: Row order
- `section=`: Replaces `ord` value for block-specific calculations
- `denomcond=`: Denominator dataset filtering condition for specific rows
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`{cond=CNSR=0 # label=%nrbquote(Total events [a], n (%)) #level=0 subord=1 # section=2 # denomcond=TRT01PN=1}`


#### statlabel
specifies the variable name of numeric value of treatment group.

Item|Contents
:---|:---
Default|
Value| 
Requirement|Mandatory
Restriction|The variable type of `trtgrpn` must be numeric.
Interaction| 
Eg.|`trt01pn`

#### ord
specifies the order for the output dataset.

Item|Contents
:---|:---
Default|
Value| 
Requirement|Mandatory
Restriction|The variable type of `ord` must be numeric.
Interaction| 
Eg.|`1`

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


