# Common Error
**Mandatory and Conditional values**<br>
Note: Mandatory parameters `inds`, `varlist`，`headerlist` are required and should be stated. Condition Parameter 'pageByFmt' should be stated when 'pageByN' is populated.<br>
>ERROR: (M_L) (m_u_parmchk) Required parameter inds is missing<br>

>ERROR: (M_L) (m_u_parmchk) Required parameter varlist is missing<br>

>ERROR: (M_L) (m_u_parmchk) Required parameter headerlist is missing<br>

>ERROR: (M_L) (m_u_parmchk) Required parameter pageByFmt is missing<br>

**Check exist dataset and variables**<br>
Note: input data `inds` must exist and can be open to check the valid values.<br>
>ERROR:(M_L) (M_U_CHKVARS) Dataset `inds` does not exist<br>

>ERROR:(M_L) (M_U_CHKVARS) Open for dataset `inds` failed<br>

Note: all variables in `varlist` and `pageByN`(if applicable) must exist in `dsin` dataset. Otherwise, will trigger the following alert(&&strl&chkvarsI. is the variable name being checked).. <br>
>ERROR: (M_L) Variable &&strl&chkvarsI. does not exist in &inds<br>

**Check where condition**<br>
Note: If `pop_flag` and `whr` are populated, fiter conditons should be correctly applied in `dsin` dataset. Otherwise, will trigger the following alert. <br>
>ERROR: (M_L) (M_U_CHKWHERE)  WHERE=`pop_flag` is not correct, check variables<br>

>ERROR: (M_L) (M_U_CHKWHERE)  WHERE=`whr` is not correct, check variables<br>

**Check format**<br>
>ERROR:(M_L) Parameter 'pageByFmt' [&pageByFmt..] is not a valid numeric SAS format or cannot be found in the format catalog.;
 
**Check others**<br>
>ERROR: (M_L) Number of variables(varlistN) is not the same with headers(headerlistN)<br>

 




