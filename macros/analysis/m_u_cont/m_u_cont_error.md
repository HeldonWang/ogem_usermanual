# Common Error
**Mandatory and Conditional values**<br>
Note: Mandatory parameters `inds`, `outds`, `varlist`, `rowVars`, `decim` are required and should be stated.<br>

>ERROR: (M_U_CONT) (m_u_parmchk) Required parameter inds is missing<br>
 
>ERROR: (M_U_CONT) (m_u_parmchk) Required parameter outds is missing<br>

>ERROR: (M_U_CONT) (m_u_parmchk) Required parameter varlist is missing<br>

>ERROR: (M_U_CONT) (m_u_parmchk) Required parameter rowVars is missing<br>
 
>ERROR: (M_U_CONT) (m_u_parmchk) Required parameter decim is missing<br>

**Check exist dataset and variables**<br>
Note: input data `inds` must exist and can be open to check the valid values.<br>
>ERROR:(M_U_CONT) (M_U_CHKVARS) Dataset `inds` does not exist<br>

>ERROR:(M_U_CONT) (M_U_CHKVARS) Open for dataset `inds` failed<br>

Note: all variables in `varlist`, `rowVars`, `sortBy`, `decimBy` (if applicable) must exist in `dsin` dataset. Otherwise, will trigger the following alert(&&strl&chkvarsI. is the variable name being checked). <br>
>ERROR: (M_U_CONT) Variable &&strl&chkvarsI. does not exist in &inds<br>
   
**Check where condition**<br>
Note: If `whr` is populated, fiter conditons should be correctly applied in `dsin` dataset. Otherwise, will trigger the following alert. <br>
>ERROR: (M_U_CONT) (M_U_CHKWHERE)  WHERE=`whr` is not correct, check variables<br>
 
**Check others**<br>
>ERROR: (M_U_CONT) Parameter 'decim'[&decim.] should have the same number with 'varlist'[&varlist.]<br>

>ERROR: (M_U_CONT) Parameter 'decimBy' should have value when 'decim' includes INDATA<br> 

>ERROR: (M_U_CONT) Parameter 'exclude_stats'  %str(&exclude_stats) is not recognized. Valid values for the exclude_stats option are n Mean SD Min Q1 Median Q3 Max<br> 



