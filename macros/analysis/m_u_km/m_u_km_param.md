# Syntax

%m_u_km (<br>
[***inds***=&lt;input-dataset&gt;](#inds), <br>
[***whr***=&lt;additional-filtered-condition&gt;](#whr),<br>
[***alpha***=&lt;alpha-value&gt;](#alpha),<br>
[***method***=&lt;curve-generation-method&gt;](#method),<br>
[***conftype***=&lt;confidence-interval-computation-type&gt;](#conftype),<br>
[***trtgrpn***=&lt;numeric-treatment-group-variable&gt;](#trtgrpn),<br>
[***trtgrpnorder***=&lt;numeric-treatment-group-variable-order&gt;](#trtgrpnorder),<br>
[***pair***=&lt;treatment-group-pair&gt;](#pair),<br>
[***trtgrpn2***=&lt;numeric-treatment-group-variable-for-subsetting&gt;](#trtgrpn2),<br>
[***var_time***=&lt;time-to-event-variable&gt;](#var_time),<br> 
[***var_status***=&lt;event-variable&gt;](#var_status),<br> 
[***cen_num***=&lt;CENS-non-event-constant&gt;](#cen_num),<br> 
[***evnt_num***=&lt;CIF-event-of-interest-constant&gt;](#evnt_num),<br> 
[***step_list***=&lt;time-point-list&gt;](#step_list),<br> 
[***step_unit***=&lt;step-unit&gt;](#step_unit),<br> 
[***xdivisor***=&lt;time-unit-transform-constant&gt;](#xdivisor),<br> 
[***median_decimal***=&lt;decimal-places-for-median&gt;](#median_decimal),<br>
[***plot***=&lt;print-plot-Y/N&gt;](#plot),<br>
[***outdat_median***=&lt;median-dataset-name&gt;](#outdat_median),<br>
[***median_label***=&lt;median-dataset-display-label&gt;](#median_label),<br>
[***outdat_timelist***=&lt;timelist-dataset-name&gt;](#outdat_timelist),<br>
[***timelist_label***=&lt;timelist-dataset-display-label&gt;](#timelist_label),<br>
[***debug_u***=&lt;Y|N&gt;](#debug_u),<br>
[***qrtl***=&lt;Y|N&gt;](#qrtl)<br>
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
specifies filtered condition used in where statement. <br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|Filter input dataset `inds`.
Eg.|`TRTEMFL="Y"`


## Control output

#### plot
specifies whether to turn priting the plot off (0) or on (1).

Item|Contents
:---|:---
Default|1
Value|`1, 0` 
Requirement|Optional
Restriction|
Interaction|
Eg.|`1`

#### outdat_median
specifies the median dataset output name.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`final_median`

#### median_label
specifies the col_blocklabel in median dataset.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Progression-free survival (days)`

#### outdat_timelist
specifies the timelist dataset output name.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`final_timelist`

#### timelist_label
specifies the first row value of col_blocklabel in median dataset.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Progression-free survival rate`


## Control analysis

#### alpha
specifies the alpha level for confidence interval. 

Item|Contents
:---|:---
Default|0.05
Value| 
Requirement|Optional
Restriction|
Interaction|  
Eg.|`.05`

#### method
specifies the method used to generate the curves. <br>
Please choose method based on SAP and after confirming with statistician.

Item|Contents
:---|:---
Default|KM
Value|`KM`,`CIF` 
Requirement|Optional
Restriction|
Interaction|  
Eg.|`KM`

#### conftype
specifies the method used to compute confidence intervals for Kaplan-Meier survival estimate. <br>
Please choose method based on SAP and after confirming with statistician.

Item|Contents
:---|:---
Default|LOG
Value|`LOG`,`ASINSQRT`,`LOGLOG`,`LINEAR`,`LOGIT`
Requirement|Optional
Restriction|
Interaction|  
Eg.|`ASINSQRT`

#### trtgrpn
specifies the variable name of treatment group.

Item|Contents
:---|:---
Default|
Value| 
Requirement|Mandatory
Restriction|
Interaction| 
Eg.|`trt01pn` <br> 

#### trtgrpnord
specifies the preferred order of the alphabetically sorted `trtgrpn` <br>
eg: Within variable `trtgrpn` there are values: A B C. <br>
If input `trtgrpnord` to be 2 1 3 will reorder to be B A C.

Item|Contents
:---|:---
Default|
Value| 
Requirement|Optional
Restriction|
Interaction| 
Eg.|`2 3 1` <br> 

#### pair
specifies the pair sequence for pairwise statistics.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|

#### trtgrpn2
specifies the variable used to subset the `trtgrpn` variable furthur

Item|Contents
:---|:---
Default|
Value| 
Requirement|Optional
Restriction|
Interaction| 
Eg.|`trt02an` <br> 

#### var_time
specifies the variable containing time to event information

Item|Contents
:---|:---
Default|AVAL
Value| 
Requirement|Optional
Restriction|
Interaction| 
Eg.|`AVAL` <br> 

#### var_status
specifies the numeric variable containing event

Item|Contents
:---|:---
Default|CNSR
Value| 
Requirement|Optional
Restriction|The type of `var_status` must be numeric
Interaction| 
Eg.|`CNSR` <br> 

#### cen_num
specifies the value of a non-event in CENS

Item|Contents
:---|:---
Default|1
Value| 
Requirement|Optional
Restriction|`cen_num` must be a numeric constant
Interaction| 
Eg.|`1` <br> 

#### evnt_num
specifies the value representing event of interest in a competing risks analysis <br>

Item|Contents
:---|:---
Default|
Value| 
Requirement|Optional
Restriction|`evnt_num` must be a numeric constant
Interaction|Only required when `method` is CIF
Eg.|`1` <br> 

#### step_list
specifies the time-points to collect Kaplan-Meier survial estimates with confidence intervals

Item|Contents
:---|:---
Default|
Value| 
Requirement|Optional
Restriction|Can be entered as numeric values separated by spaces OR in a list format
Interaction| 
Eg.|`0 to 60 by 10` <br>

#### step_unit
specifies the unit of the timepoints

Item|Contents
:---|:---
Default|
Value| 
Requirement|Optional
Restriction|
Interaction| 
Eg.|`days` <br>

#### xdivisor
specifies the value to transform time variable into other unit

Item|Contents
:---|:---
Default|
Value| 
Requirement|Optional
Restriction|`xdivisor` must be a numeric constant
Interaction| 
Eg.|`7` <br>

#### median_decimal
specifies the decimal places to keep for median statistic

Item|Contents
:---|:---
Default|1
Value| 
Requirement|Optional
Restriction|`median_decimal` must be a numeric
Interaction| 
Eg.|`2` <br>
 
## Control debug

#### debug_u
specifies whether need to debug or not, if not "Y" then intermediate datasets will be deleted. If leave it as null or not to state it, the default values will be used.<br>

Item|Contents
:---|:---
Default|`N`
Value|`Y, N` (not case sensitive)
Requirement|Optional
Restriction|
Interaction|
Eg.|`N`

#### qrtl
Controls output of 25th & 75th percentiles for survival time distribution.

Item|Contents
:---|:---
Default|N
Value|`Y`, `N`
Requirement|Optional
Restriction|Determines whether 25th and 75th percentiles are included in the output
Interaction|Provides additional insights into survival time distribution
Eg.|`Y` <br> `N`

---