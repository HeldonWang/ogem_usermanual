# Syntax

%m_u_col_reorg (<br>
[***inds***=&lt;input-dataset&gt;](#inds), <br>
[***outds***=&lt;output-dataset&gt;](#outds),<br>
[***colin***=&lt;column-input-names&gt;](#colin),<br>
[***colout***=&lt;column-output-names&gt;](#colout),<br>
[***keep***=&lt;column-keep-names&gt;](#keep),<br> 
);

---
# Parameter
## Control input

#### inds
specifies the input dataset.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`anl`

#### colin
specifies the column names in the input dataset.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`col12 col3 col5`

## Control output

#### outds
specifies the output dataset name.

Item|Contents
:---|:---
Default|
Value| A one or two level dataset name. 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`final_output`

#### colout
specifies the column names in the output dataset.

Item|Contents
:---|:---
Default|
Value| 
Requirement|Optional
Restriction|
Interaction|
Eg.|`col1 col2 col3`

#### keep
specifies the column names to keep in the input dataset.

Item|Contents
:---|:---
Default|
Value| 
Requirement|Optional
Restriction|
Interaction|
Eg.|`test1`

---

