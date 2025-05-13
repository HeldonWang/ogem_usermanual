# Syntax

%m_u_binom_adjrate (<br>
[***inds***=<input-dataset>](#inds), <br>
[***outds***=<output-dataset>](#outds),<br>
[***trtgrpn***=<numeric-treatment-group-variable>](#trtgrpn),<br>
[***strata***=<stratification-variable>](#strata),<br>
[***where***=<where-condition>](#where),<br> 
[***popfl***=<population-flag-condition>](#popfl),<br>
[***var***=<analysis-variable>](#var),<br>
[***event***=<positive-event-value>](#event),<br>
[***alpha***=<alpha-level>](#alpha),<br>
[***missval***=<missing-value-display-text>](#missval),<br>
[***cidecim***=<confidence-interval-decimal-place>](#cidecim),<br>
[***debug***=<Y|N>](#debug)<br>
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

#### outds
specifies the output data set name. If not specified, the output will be named `final_adjrate` by default.

Item|Contents
:---|:---
Default|final_adjrate
Value|A valid SAS dataset name
Requirement|Optional
Restriction|
Interaction|
Eg.|`test`

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
Default|0.05
Value| 
Requirement|Optional
Restriction|
Interaction|  
Eg.|`0.05`

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

## Control debug

#### debug
specifies whether need to debug or not. If not "Y" (case-insensitive), the intermediate datasets will be deleted. Default is N.

Item|Contents
:---|:---
Default|N
Value|Y, N (not case sensitive)
Requirement|Optional
Restriction|
Interaction|
Eg.|N

---
