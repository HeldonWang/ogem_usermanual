# Syntax

%m_u_binom_cp_sin (<br>
[***inds***=&lt;input-dataset&gt;](#inds), <br>
[***adsl***=&lt;adsl-dataset&gt;](#adsl),<br> 
[***byvar***=&lt;treatment-group-variable&gt;](#byvar),<br>
[***group_number***=&lt;trtgroup-numeric-value&gt;](#group_number),<br>
[***group_name***=&lt;trtgroup-group-name&gt;](#group_name),<br>
[***ord***=&lt;value-of-order&gt;](#ord),<br>
[***alpha***=&lt;alpha-value&gt;](#alpha),<br>
[***level***=&lt;level-value&gt;](#level),<br>
[***digit***=&lt;decimal-place-for-CI&gt;](#digit),<br>
[***missval***=&lt;missing-value-display-text&gt;](#missval),<br>
[***outds***=&lt;output-dataset&gt;](#outds),<br>
[***debug***=&lt;Y|N&gt;](#debug)<br>
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
Eg.|`anl` <br>`work.anl`

#### adsl
specifies big N to be displayed in case when big N is different from denominator used in percentage calculation (counted from inds dataset).

Item|Contents
:---|:---
Default|
Value| A one or two level dataset name.
Requirement|Optional
Restriction|
Interaction| 
Eg.|`adsl` <br> `adam.adsl`

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

## Control analysis

#### byvar
specifies the name of treatment group variable.<br>

Item|Contents
:---|:---
Default|
Value| 
Requirement|Mandatory
Restriction|The type of `byvar` must be numeric. 
Interaction|
Eg.|`trt01a`
 
#### group_number
specifies the numeric value of the treatment group that user wants to analyze on.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction| 
Interaction|  
Eg.|`1`


#### group_name
specifies the group name of the treatment group that user wants to analyze on. 

Item|Contents
:---|:---
Default| 
Value| 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Drug1`

  
#### ord
specifies the order of the content of the treatment group information, for sorting use in later steps. 

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|Input type of `ord` must be numeric
Interaction|
Eg.|`1`


#### alpha
specifies the alpha level for binomial confidence interval. 

Item|Contents
:---|:---
Default|.05
Value| 
Requirement|Optional
Restriction|
Interaction|  
Eg.|`.05`

#### level
specifies the level for binoial proportion.

Item|Contents
:---|:---
Default| 1
Value| 
Requirement|Optional
Restriction|
Interaction|
Eg.|`1`

#### digit
specifies the decimal place for the calculated confidence interval. 

Item|Contents
:---|:---
Default|1
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`1`


#### missval
specifies the display value when confidence interval is unable to be calculated and returns missing value.

Item|Contents
:---|:---
Default|`NC`.
Value|
Requirement|Optional
Restriction|
Interaction|  
Eg.|`NA`
 
## Control debug

#### debug
specifies whether need to debug or not, if not "Y" then intermediate datasets will be deleted. If leave it as null or not to state it, the default values will be used.<br>

Item|Contents
:---|:---
Default|`N`
Value|`Y, N` (not case sensitive)
Requirement|Optional
Restriction|
Interaction|
Eg.|`N`

---