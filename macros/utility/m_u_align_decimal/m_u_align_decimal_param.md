
# Syntax

%m_u_align_decimal(<br>
[***inds***=&lt;input-data-set&gt;](#inds), <br>
[***outds***=&lt;output-data-set&gt;](#outds),<br>
[***var***=&lt;list-of-variable(s)&gt;](#var),<br>
[***prefix***=&lt;prefix&gt;](#prefix)<br>
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
Eg.|`adlb` <br>`adam.adlb`

#### outds
specifies the output data set.

Item|Contents
:---|:---
Default|
Value| A one or two level dataset name. 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`___inds` <br>`work.___inds` 

#### var
specifies the list of variables that should be aligned by decimal points. Variables are separated by "#". <br>   

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|Both numeric and character variables are allowed.
Interaction|
Eg.|`ADURN#IPAESTDY`

#### prefix
specifies the prefix of aligned variables.
  
Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`aa`




