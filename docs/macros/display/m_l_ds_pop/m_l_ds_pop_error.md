# Common Error
**Mandatory and Conditional values**<br>
Note: Mandatory parameters `anaset`,`xlvar`, are required and should be stated.<br>
>ERROR: (M_L_DS_POP) (m_u_parmchk) Required parameter anaset is missing<br>

>ERROR: (M_L_DS_POP) (m_u_parmchk) Required parameter xlvar is missing<br>

**Check exist dataset and variables**<br>
Note: input data `inds` must exist and can be open to check the valid values.<br>
>ERROR:(M_L_DS_POP) (M_U_CHKVARS) Dataset `inds` does not exist<br>

>ERROR:(M_L_DS_POP) (M_U_CHKVARS) Open for dataset `inds` failed<br>

Note: all variables in `xlvar` and `subjid` must exist in `dsin` dataset. Otherwise, will trigger the following alert(&&strl&chkvarsI. is the variable name being checked).. <br>
>ERROR: (M_L_DS_POP) Variable &&strl&chkvarsI. does not exist in &inds<br>

**Check where condition**<br>
Note: If `pop_flag` and `whr` are populated, fiter conditons should be correctly applied in `dsin` dataset. Otherwise, will trigger the following alert. <br>
>ERROR: (M_L_DS_POP) (M_U_CHKWHERE)  WHERE=`pop_flag` is not correct, check variables<br>

>ERROR: (M_L_DS_POP) (M_U_CHKWHERE)  WHERE=`whr` is not correct, check variables<br>

**Check others**<br>
>ERROR: (M_L_DS_POP) Number of different values of parameter 'anaset'[&anaset.] are not the same with 'xlvar'[&xlvar.];<br>




