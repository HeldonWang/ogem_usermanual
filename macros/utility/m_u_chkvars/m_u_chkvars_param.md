# Parameter

[**Control input**](#control-input) <br>

[***intab***](#intab) <br>
  specifies the input dataset

[***strlst***](#strlst)<br>
  specifies list of variable in input dataset to check

[***inMacroName***](#inMacroName)<br>
  specifies the name of macro that is checked in m_u_chkvars

[***continue***](#continue)<br>
  specifies whether the macro should continue processing if one or more specified variables do not exist in the input dataset

---

## Control input

#### intab
specifies the input dataset.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`adam.adae`

#### strlst
specifies list of variables in input dataset to check.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`USUBJID TRT01AN`

#### inMacroName
specifies the name of macro name that is using [%m_u_chkvars](../../utility/m_u_chkvars/m_u_chkvars_param.md).

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`M_L`

#### continue
specifies whether the macro should continue processing if one or more specified variables do not exist in the input dataset.

Item|Contents
:---|:---
Default|`NO`
Value|`NO, N, YES, Y`
Requirement|Conditional
Restriction|
Interaction|
Eg.|`NO`
 





