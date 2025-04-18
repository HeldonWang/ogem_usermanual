# Parameter

[**Control input**](#control-input) <br>

[***inMacroName***](#inmacroname) <br>
  specifies macro name

[***INLIST_IGNORE***](#inlist_ignore)<br>
  specifies parameters that can be ignored

[***INLIST_CHECK***](#inlist_check)<br>
  specifies parameters that need to be be checked


---

## Control input

#### inMacroName
specifies macro name.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`M_T_LB_HYSLAW`

#### INLIST_IGNORE
specifies parameters that can be ignored, variables are separated using spaces.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|`INLIST_IGNORE` works when `INLIST_CHECK` is empty, and log lists macro variables with null values other than `INLIST_IGNORE`.
Interaction|
Eg.|` whr1 rowvarc1`

#### INLIST_CHECK
specifies parameters that need to be be checked, variables are separated using spaces.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`inds pop_mvar sfx`





