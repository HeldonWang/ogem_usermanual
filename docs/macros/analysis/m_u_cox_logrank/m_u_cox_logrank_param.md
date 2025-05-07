# Syntax

%m_u_cox_logrank (<br>
[***inds***=&lt;input-dataset&gt;](#inds), <br>
[***out***=&lt;output-dataset&gt;](#out),<br> 
[***blocklbl***=&lt;block-label&gt;](#blocklbl),<br>
[***modelkey***=&lt;model-key&gt;](#modelkey),<br>
[***transfl***=&lt;transpose-Y/N&gt;](#transfl),<br>
[***trtgrpn***=&lt;numeric-treatment-group-variable&gt;](#trtgrpn),<br>
[***var***=&lt;analysis-variable&gt;](#var),<br>
[***byvar***=&lt;by-variable-name&gt;](#byvar),<br>
[***alpha***=&lt;alpha-value&gt;](#alpha),<br>
[***censor***=&lt;censor-variable&gt;](#censor),<br>
[***indicator***=&lt;censor-indicator&gt;](#indicator),<br>
[***ties***=&lt;ties-handle-method&gt;](#ties),<br>
[***pair***=&lt;pairs-sequence&gt;](#pair),<br>
[***strata***=&lt;stratification-variable&gt;](#strata),<br>
[***pvalside***=&lt;pvalue-sides&gt;](#pvalside),<br>
[***missval***=&lt;missing-value-display-text&gt;](#missval),<br>
[***digit***=&lt;decimal-place-for-ratio-CI&gt;](#digit),<br>
[***cidecimal***=&lt;CI-decimal-place-increase-from-digit&gt;](#cidecimal),<br>
[***hrlbl***=&lt;hazard-ratio-label&gt;](#hrlbl),<br>
[***cilbl***=&lt;confidence-interval-label&gt;](#cilbl),<br>
[***pvallbl***=&lt;p-value-label&gt;](#pvallbl),<br>
[***prefix***=&lt;column-prefix&gt;](#prefix),<br>
[***debug***=&lt;Y|N&gt;](#debug)<br>
);

---
# Parameter
## Control input

#### inds
specifies the input dataset.

Item|Contents
:---|:---
Default|
Value| A one or two level dataset name. 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`anl` <br>`work.anl`

## Control output

#### out
specifies the output dataset name.

Item|Contents
:---|:---
Default|
Value| A one or two level dataset name. 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`final_output`

#### missval
specifies the display value when point estimation is not estimable.

Item|Contents
:---|:---
Default|NC
Value|
Requirement|Optional
Restriction|
Interaction| 
Eg.|`NE` <br>

#### digit
specifies the decimal places to keep for hazard ratio and confidence interval.

Item|Contents
:---|:---
Default|2
Value|
Requirement|Optional
Restriction|`digit` must be numeric constant
Interaction| 
Eg.|`2` <br>

#### cidecimal
specifies the decimal place to add on top of `digit` and will be used as confidence interval's decimal place.

Item|Contents
:---|:---
Default|1
Value|
Requirement|Optional
Restriction|`cidecimal` must be numeric constant
Interaction| 
Eg.|`1` <br>

#### hrlbl
specifies the hazard ratio display label.

Item|Contents
:---|:---
Default|`Hazard ratio`
Value|
Requirement|Optional
Restriction|
Interaction| 
Eg.|`Hazard ratio` <br>

#### cilbl
specifies the confidence interval display label.

Item|Contents
:---|:---
Default|`Hazard ratio`
Value|
Requirement|Optional
Restriction|
Interaction| 
Eg.|`Hazard ratio` <br>

#### pvallbl
specifies the P-value display label.

Item|Contents
:---|:---
Default|`p-value`
Value|
Requirement|Optional
Restriction|
Interaction| 
Eg.|`P-value` <br>

#### prefix
specifies the column prefix in the output dataset.

Item|Contents
:---|:---
Default|`col`
Value|
Requirement|Optional
Restriction|
Interaction| 
Eg.|`column` <br>

## Control analysis

#### blocklbl
specifies the col_blocklabel display text in the output dataset.<br>

Item|Contents
:---|:---
Default|`Comparison of treatment groups`
Value| 
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Comparison of treatment groups`

#### modelkey
specifies the required statistics to calculate.<br>
Input `cox` indicates that hazard ratio and confidence interval are required and will be calculated using proportional hazards model. <br>
Input `logrank` indicates that P-value is required and will be calculated using log-rank test. <br>
Input `cox|logrank` indicates that hazard ratio, confidence interval and P-value are all required. <br>

Item|Contents
:---|:---
Default|
Value|`cox`,`logrank`,`cox|logrank`
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`cox|logrank`

#### transfl
specifies whether to transpose the output dataset or not.<br>

Item|Contents
:---|:---
Default|Y
Value|`Y/N`
Requirement|Optional
Restriction|
Interaction|
Eg.|`N`

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

#### var
specifies the variable that will be analyzed on.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|Variable specified by `var` must be numeric.
Interaction|
Eg.|`aval`

#### byvar
specifies the by variable that will be used for statistical computation.

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|Variable specified by `byvar` must be character.
Interaction|
Eg.|`AGEGR1`

#### alpha
specifies the alpha level for confidence interval. 

Item|Contents
:---|:---
Default|.05
Value| 
Requirement|Optional
Restriction|Numeric value between 0-1 and separated by | if needs to calculate multiple CIs.
Interaction|  
Eg.|`.05`

#### censor
specifies the censor variable name. 

Item|Contents
:---|:---
Default|CNSR
Value| 
Requirement|Optional
Restriction|
Interaction|  
Eg.|`CNSR`

#### indicator
specifies the indicator for censor. 

Item|Contents
:---|:---
Default|1
Value| 
Requirement|Optional
Restriction|Value specified by `indicator` must exisit in `censor` variable
Interaction|  
Eg.|`1`

#### ties
specifies the method used to handle ties in the failure time.<br>

Item|Contents
:---|:---
Default|EFRON
Value|`BRESLOW`,`DISCRETE`,`EFRON`,`EXACT`
Requirement|Optional
Restriction|
Interaction|
Eg.|`BRESLOW`

#### pair
specifies the pair sequence for pairwise statistics.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`1-2|5-2`

#### strata
specifies the stratification variables.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`STRAT1`

#### pvalside
specifies the number of sides for P-value calculatoin in log-rank test.

Item|Contents
:---|:---
Default|2
Value| 
Requirement|Optional
Restriction|
Interaction| 
Eg.|`1` <br> 

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