# Common Error
**Mandatory and Conditional values**<br>
Note: Mandatory parameters `inds` `pop_flag` `trtgrpn` `pop_mvar` is required and should be stated.<br>
>ERROR: (M_T_DM) (m_u_parmchk) Required parameter inds is missing. <br>

>ERROR: (M_T_DM) (m_u_parmchk) Required parameter pop_flag is missing. <br>

>ERROR: (M_T_DM) (m_u_parmchk) Required parameter trtgrpn is missing. <br>

>ERROR: (M_T_DM) (m_u_parmchk) Required parameter pop_mvar is missing. <br>

**Check exist dataset and variables**<br>

Note: input data `inds` must exist and can be open to check the valid values.<br>
>ERROR: File WORK.ADSL.DATA does not exist.<br>

Note: variable of `trtgrpn` must exist in `inds` dataset. Otherwise, will trigger the following alert. e.g. if `trtgrpn=TRT02PN` and TRT02PN not exist in `dsin` then will cause error. <br>

>ERROR: Variable TRT02PN does not exist in WORK.anl.<br>














