# Syntax

%m_u_popn (<br>
[***inds***=&lt;input-data-set&gt;](#inds), <br>
[***pop_flag***=&lt;filtered-population-condition&gt;](#popflag),<br>
[***trtgrpn***=&lt;numeric-treatment-variable&gt;](#trtgrpn),<br>
[***trtfmtC***=&lt;format-of-trtgrpn&gt;](#trtfmtc),<br> 
[***trtlev***=&lt;list-of-treatment-levels&gt;](#trtlev),<br>
[***UniqueIDVars***=&lt;unique-identifier-variable&gt;](#uniqueidvars),<br>
[***gmacro***=&lt;global-treatment-macro-prefix-label&gt;](#gmacro),<br>
[***BigN***=&lt;Y|N (calculate BigN or not)&gt;](#bign),<br>
[***nformat***=&lt;display-text-under-treatment-group&gt;](#nformat),<br>
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
specifies filtered population, and any other filtered conditions used in WHERE statement.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Filter input dataset for `inds`.
Eg.|`FASFL = "Y" and SEX="F" `

## Control analysis

#### trtgrpn
specifies the treatment variable(N).

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction| Type of `trtgrpn` should be numeric.
Interaction|  
Eg.|`TRT01AN`

#### trtfmtC
specifies the display format of `trtgrpn`.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction| Should start from 1 and increase consecutively, representing the display order of different groups.
Interaction| Display format for `trtgrpn`, add additional treatment labels for subtotal/total group in proc format if necessary.
Eg.|`_tlf_setup_trtfmtn`

> **Note:**
> `trtfmtC` is required and should be created before calling this macro.<br>
> For more details, please refer to the [*Example  Display-subtotal-and-total-group*](m_u_popn_examp.md#display-subtotal-and-total-group).

#### trtlev
Specifies different levels of treatment, using values of variable `trtgrpn` in each level. Listed treatments are serapated by spaces for the subtotal and/or total levels if needed. Each treatment level is separated by "|".

Item|Contents
:---|:---
Default| 
Value|
Requirement|Mandatory
Restriction| If subtotal and/or total treatment levels are generated in data preprocessing, then no need to state subtotal and/or total treatment levels in `trtlev`.
Interaction| Calculation based on `trtgrpn` levels.
Eg.|`1` <code>&#124;</code> `2` <code>&#124;</code> `1 2`

> **Note:**
>`trtlev` state all columns' headers, separated by "|". For example, `1|2|1 2` means `trtgrn=1`, `trtgrpn=2`, `trtgrpn in (1 2)`. <br>
> For more details, please refer to the [*Example  Display-subtotal-and-total-group*](m_u_popn_examp.md#display-subtotal-and-total-group).

#### UniqueIDVars
specifies the unique variable to count number of population for different groups. If leave it as null or not to state it, the default values will be used.

Item|Contents
:---|:---
Default|`USUBJID`
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`USUBJID`


## Control report

 #### gmacro
specifies the prefix for the generated global macro variables. 

Item|Contents
:---|:---
Default|
Value| Allow users to enter custom, case-insensitive free text.
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`saspopb`
 
#### BigN
specifies whether to combine the counted of BigN to display the header. If leave it as null or not to state it, the default values will be used. 

Item|Contents
:---|:---
Default| `Y`
Value|`Y, N`  
Requirement|Optional
Restriction|
Interaction|
Eg.|`Y`

#### nformat
specifies display texts below the formatted treatment group. A common value of `nformat` is `n` for tables displaying counts only. Another common value of `nformat` is `%str(n (%%))` for tables displaying counts and percentages. 

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction| Displayed under the label of format variable `trtfmtC` and/or N=XXX depends on the value of `BigN`.
Eg.|`%str(n (%%))`

> **Note:**
> `%str(n (%%))` should be used to escape a single percent sign % in macro when represent it as a % in table's header.<br>

## Control debug

#### deBug
specifies whether need to debug or not, if not "Y" then intermediate datasets will be deleted. If leave it as null or not to state it, the default values will be used.<br>

Item|Contents
:---|:---
Default|`N`
Value|`Y, N `(not case sensitive)
Requirement|Optional
Restriction|
Interaction|
Eg.|`N`