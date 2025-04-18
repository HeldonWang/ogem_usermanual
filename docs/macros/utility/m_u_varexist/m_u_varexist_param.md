# Syntax

%m_u_varexist (<br>
[***ds***=&lt;input-data-set&gt;](#ds), <br>
[***var***=&lt;variable&gt;](#var)<br>
);<br>

---

# Parameter

## Control input

#### ds
specifies the input data set.

Item|Contents
:---|:---
Default|
Value|A one or two level dataset name. 
Requirement| Mandatory
Restriction|
Interaction|
Eg.|`adsl` <br>`adam.adsl`

#### var
specifies variable whose existence needs to be checked.

Item|Contents
:---|:---
Default|
Value|
Requirement| Mandatory
Restriction| Only one variable can be specified.
Interaction| Check for the existence of `var` in `ds`.
Eg.|`trt01pn`


