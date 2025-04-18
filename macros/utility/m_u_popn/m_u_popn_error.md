# Common Error
**Check Mandatory and Conditional values**<br>
Note: Mandatory parameters `inds`, `trtgrpn`，`trtfmtC`, `trtlev`, `gmacro` are required and should be stated.<br>
>ERROR: (M_U_POPN) (m_u_parmchk) Required parameter inds is missing<br>

>ERROR: (M_U_POPN) (m_u_parmchk) Required parameter trtgrpn is missing<br>

>ERROR: (M_U_POPN) (m_u_parmchk) Required parameter trtfmtC is missing<br>

>ERROR: (M_U_POPN) (m_u_parmchk) Required parameter trtlev is missing<br>
 
>ERROR: (M_U_POPN) (m_u_parmchk) Required parameter gmacro is missing<br>

**Check exist dataset and variables**<br>
Note: input data `inds` must exist and can be open to check the valid values.<br>
>ERROR:(M_U_POPN) (M_U_CHKVARS) Dataset `inds` does not exist<br>

>ERROR:(M_U_POPN) (M_U_CHKVARS) Open for dataset `inds` failed<br>

Note: input variable `UniqueIDVars` and `trtgrpn` must exist in `dsin` dataset. Otherwise, will trigger the following alert (&&strl&chkvarsI. is the variable name being checked). <br>
>ERROR: (M_U_POPN) Variable &&strl&chkvarsI.does not exist in &inds<br>

**Check where condition**<br>
Note: If `pop_flag` is populated, fiter conditons should be correctly applied in `dsin` dataset. Otherwise, will trigger the following alert. <br>
>ERROR: (M_U_POPN) (M_U_CHKWHERE)  WHERE=`pop_flag` is not correct, check variables<br>
  
**Check others**<br>
 Note: `trtfmtC` is the display header for outputs, and the level should be keep consistent with `trtlev`, `trtlev=1|2|1 2|3|1 2 3` as an example, there are 5 levels in the header, then `trtfmtC` should also has 5 display header format. <br>
>ERROR: (M_U_POPN) Parameter 'trtfmtC' has fewer levels than 'trtlev'[&trtlev.]. Please check input values.<br>

 Note: The order of `trtfmtC` format should be created as sequence. `trtlev=1|2|1 2|3|1 2 3` as an example, there are 5 levels in the header, Level of `trtfmtC` starts from 1 to 5, 3 stands for subtotal(treatment: 1 2) and 5 stands for totol(treatment: 1 2 3 ). The Maximum number of treatment group is 5. If other level number is assigned for total group, such as 99, for example the number of levels of trtfmtC is 5, but Maximum level of parameter is 99, this suitation will trigger this error.<br>
>ERROR: (M_U_POPN) Maximum level of parameter 'trtfmtC'[&max__grpn_.] is different from the number of levels[&_trtfmtC_N.].<br>

