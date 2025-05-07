# Common Error
**Mandatory and Conditional values**<br>
Note: Mandatory parameters `varlist`, `paramVar`, `trtgrpn`, `timepVar`, `headerlist`, `sfx` are required and should be stated.<br>

>ERROR: (M_T_NESTED_CONT) (m_u_parmchk) Required parameter varlist is missing<br>
 
>ERROR: (M_T_NESTED_CONT) (m_u_parmchk) Required parameter paramVar is missing<br>

>ERROR: (M_T_NESTED_CONT) (m_u_parmchk) Required parameter trtgrpn is missing<br>

>ERROR: (M_T_NESTED_CONT) (m_u_parmchk) Required parameter headerlist is missing<br>
 
>ERROR: (M_T_NESTED_CONT) (m_u_parmchk) Required parameter sfx is missing<br>

**Check exist dataset and variables**<br>
Note: input data `inds` must exist and can be open to check the valid values.<br>

>ERROR:(M_T_NESTED_CONT) (M_U_CHKVARS) Dataset `inds` does not exist<br>

>ERROR:(M_T_NESTED_CONT) (M_U_CHKVARS) Open for dataset `inds` failed<br>

Note: variables of `paramVar`, `trtgrpn`, and `paramVarN`, `pageBy`,`pageByN`,`timepVarN` (if applicable) must exist in `dsin` dataset. Otherwise, will trigger the following alert(&&strl&chkvarsI. is the variable name being checked).. <br>
>ERROR: (M_T_NESTED_CONT) Variable &&strl&chkvarsI. does not exist in &inds<br>
   
**Check where condition**<br>
Note: If `pop_flag` and `whr` are populated, fiter conditons should be correctly applied in `dsin` dataset. Otherwise, will trigger the following alert. <br>
>ERROR: (M_T_NESTED_CONT) (M_U_CHKWHERE)  WHERE=`pop_flag` is not correct, check variables<br>

>ERROR: (M_T_NESTED_CONT) (M_U_CHKWHERE)  WHERE=`whr` is not correct, check variables<br>
 
**Check others**<br>
Note: [%m_u_popn](../../utility/m_u_popn/m_u_popn_descp.md) should be run first to create `pop_mvar`. <br>
>ERROR: (M_T_NESTED_CONT) Parameter 'pop_mvar'[&pop_mvar.] should exist in the environment<br>

Note: When the first 2 columns are display prior to analysis columns, then lablist should have 2 values. <br>
>ERROR: (M_T_NESTED_CONT) Parameter 'lablist' should have 2 values<br> 

>ERROR: (M_T_NESTED_CONT) Parameter 'headerlist'[&headerlist.] should the same number of levels with 'varlist'[&varlist.]<br> 

>WARNING: (M_T_NESTED_CONT) If need to display by page, please fill title7 column with 'j=l "#byval(byvar)"' in tlf.titles
