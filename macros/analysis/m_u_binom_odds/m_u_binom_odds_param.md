# Syntax

%m_u_binom_odds (<br>
[***inds***=&lt;input-dataset&gt;](#inds), <br>
[***whr***=&lt;where-condition&gt;](#whr),<br> 
[***pop_flag***=&lt;population-flag-condition&gt;](#pop_flag),<br>
[***trtgrpn***=&lt;numeric-treatment-group-variable&gt;](#trtgrpn),<br>
[***trtgrp***=&lt;treatment-group-variable&gt;](#trtgrp),<br>
[***trtpair***=&lt;comparison-group-pair&gt;](#trtpair),<br>
[***trtfmt***=&lt;treatment-display-format&gt;](#trtfmt),<br>
[***trtref***=&lt;reference-treatment-group&gt;](#trtref),<br>
[***strata***=&lt;statification-variable&gt;](#strata),<br>
[***var***=&lt;analysis-variable&gt;](#var),<br>
[***event***=&lt;positive-event-value&gt;](#event),<br>
[***alpha***=&lt;alpha-level&gt;](#alpha),<br>
[***pvalside***=&lt;pvalue-sides&gt;](#pvalside),<br>
[***pvdecim***=&lt;pvalue-decimal-place&gt;](#pvdecim),<br>
[***cidecim***=&lt;confidence-interval-decimal-place&gt;](#cidecim),<br>
[***relcal***=&lt;relaive-risk-display-Y/N&gt;](#relcal),<br>
[***cltype***=&lt;CI-calculation-type&gt;](#cltype),<br>
[***supds***=&lt;dummy-dataset-Y/N&gt;](#supds),<br>
[***missval***=&lt;missing-value-display-text&gt;](#missval),<br>
[***ord***=&lt;value-of-order&gt;](#ord),<br>
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

#### whr
specifies the where condition applied on `inds` analysis dataset.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction| 
Eg.|`paramcd='TRORESPU'` 

#### pop_flag
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

#### trtgrp
specifies the variable name of treatment group.

Item|Contents
:---|:---
Default|
Value| 
Requirement|Mandatory
Restriction|The variable type of `trtgrp` must be chracter.
Interaction| 
Eg.|`trt01p` <br> 

#### trtpair
specifies the comparison treatment groups that needs to be analyzed.

Item|Contents
:---|:---
Default|
Value| 
Requirement|Required
Restriction|The treatment groups specified must be within the analysis dataset.
Interaction| 
Eg.|`str(1,2)` <br> `1 2` 

#### trtfmt
specifies the format applied to the numeric treatment group if trtgrpn != trt01pn.

Item|Contents
:---|:---
Default|
Value|Predefined format name
Requirement|Optional
Restriction|
Interaction| 
Eg.|`example_format` 

#### trtref
specifies the reference treatment group.

Item|Contents
:---|:---
Default|
Value|
Requirement|Required
Restriction|Variable type for `trtref` must be numeric.
Interaction|
Eg.|`3` 

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

#### pvalside
specifies the number of sides for P-value calculatoin.

Item|Contents
:---|:---
Default|2
Value| 
Requirement|Optional
Restriction|
Interaction| 
Eg.|`1` <br> 

#### pvdecim
specifies the decimal places to keep for P-value.

Item|Contents
:---|:---
Default|2
Value| 
Requirement|Optional
Restriction|
Interaction| 
Eg.|3

#### cidecim
specifies the decimal places to keep for confidence intervals.

Item|Contents
:---|:---
Default|2
Value| 
Requirement|Optional
Restriction|
Interaction| 
Eg.|3

#### relcal
specifies whether or not to calculate and display relative risk calculation.

Item|Contents
:---|:---
Default|N
Value|
Requirement|Optional
Restriction|Y/N
Interaction| 
Eg.|`Y` <br> 

#### cltype
specifies the type for confidence intervals calculation.

Item|Contents
:---|:---
Default|mn
Value|
Requirement|Optional
Restriction|Value of `cltype` can only be chose from the following: AC,EXACT,HA,MN,NEWCOMBE,WALD
Interaction| 
Eg.|`AC` <br>

#### supds
specifies whether or not to crreate dummy dataset when some treatment group or aval has value of 0.

Item|Contents
:---|:---
Default|N
Value|
Requirement|Optional
Restriction|Y/N
Interaction| 
Eg.|`Y` <br>

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
