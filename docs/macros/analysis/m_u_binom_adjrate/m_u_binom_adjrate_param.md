# Syntax

%m_u_binom_adjrate (<br>
[***inds***=&lt;input-dataset&gt;](#inds), <br>
[***outds***=&lt;output-dataset&gt;](#outds),<br>
[***trtgrpn***=&lt;numeric-treatment-group-variable&gt;](#trtgrpn),<br>
[***strata***=&lt;statification-variable&gt;](#strata),<br>
[***where***=&lt;where-condition&gt;](#where),<br> 
[***popfl***=&lt;population-flag-condition&gt;](#popfl),<br>
[***var***=&lt;analysis-variable&gt;](#var),<br>
[***event***=&lt;positive-event-value&gt;](#event),<br>
[***alpha***=&lt;alpha-level&gt;](#alpha),<br>
[***missval***=&lt;missing-value-display-text&gt;](#missval),<br>
[***cidecim***=&lt;confidence-interval-decimal-place&gt;](#cidecim),<br>
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

#### where
specifies the where condition applied on `inds` analysis dataset.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction| 
Eg.|`paramcd='TRORESPU'` 

#### popfl
specifies the population flag and condition that will be applied onto adsl and `inds` analysis dataset.

Item|Contents
:---|:---
Default|
Value| 
Requirement|Mandatory
Restriction|
Interaction| 
Eg.|`ittfl='Y'` <br>



## Control analysis

#### trtgrpn
specifies the variable name of numeric value of treatment group.

Item|Contents
:---|:---
Default|
Value| 
Requirement|Mandatory
Restriction|The variable type of `trtgrpn` must be numeric.
Interaction| 
Eg.|`trt01pn` <br> 

#### strata
specifies the stratification variables if stratification is required for analysis.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|Variables specified by `strata` must have type of numeric.
Interaction|
Eg.|`strata1n strata2n` 

#### var
specifies the variable that will be analyzed on.

Item|Contents
:---|:---
Default|aval
Value|
Requirement|Optional
Restriction|Variable specified by `var` must have value of 1/0.
Interaction|
Eg.|`aval`

#### event
specifies the event value that will be considered positive.

Item|Contents
:---|:---
Default|1
Value|
Requirement|Optional
Restriction|Variable specified by `event` must have value of 1/0.
Interaction|
Eg.|`1`

#### alpha
specifies the alpha level for confidence interval. 

Item|Contents
:---|:---
Default|.05
Value| 
Requirement|Optional
Restriction|
Interaction|  
Eg.|`.05`

#### cidecim
specifies the decimal places to keep for confidence intervals.

Item|Contents
:---|:---
Default|2
Value| 
Requirement|Optional
Restriction|
Interaction| 
Eg.|`3`

## Control output

#### missval
specifies the display value when confidence interval is unable to be calculated and returns missing value.

Item|Contents
:---|:---
Default|NA
Value|
Requirement|Optional
Restriction|
Interaction| 
Eg.|`NE` <br>

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
