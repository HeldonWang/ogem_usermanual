# Common Error
**Mandatory and Conditional values**<br>
Note: Mandatory parameters `inds`, `trtgrpn`, `group_by_missing`, `pop_mvar` are required and should be stated.<br>
>ERROR: (M_T_EX_DUR) Parameter 'inds' should have value<br>
 
>ERROR: (M_T_EX_DUR) Parameter 'trtgrpn' should have value<br>

>ERROR: (M_T_EX_DUR) Parameter 'grp_miss' should have value<br>

>ERROR: (M_T_EX_DUR) Parameter 'pop_mvar' should have value<br>

**Check exist dataset and variables**<br>
Note: input data `inds` must exist and can be open to check the valid values.<br>
>ERROR:(M_T_EX_DUR) Input dataset %kupcase(&inds) does not exist.<br>

Note: variable of `trtgrpn` must exist in `dsin` dataset. Otherwise, will trigger the following alert(&&strl&chkvarsI. is the variable name being checked). <br>

>ERROR: (M_T_EX_DUR) Parameter 'trtgrpn' contains variable[&trtgrpn.] which is not in input dataset %kupcase(&inds).<br>
 