# Common Error
**Mandatory and Conditional values**<br>
Note: Mandatory parameters `pop_mvar`, `sfx` are required and should be stated.<br>
>ERROR: A character operand was found in the %EVAL function or %IF condition where a numeric operand is required. The condition was: &&&pop_mvar.N 
ERROR: The %TO value of the %DO I loop is invalid.
ERROR: The macro M_U_DESC_STAT_GRP_MIX will stop executing.<br>
 
>ERROR: Intitle TLF.TITLES exist but parameter SUFFIX and PGMOUTPUT is missing. Please enter a valid suffix.<br>

**Check exist dataset and variables**<br>

Note: [%m_u_desc_stat_sin_mix](../../analysis/m_u_desc_stat_sin_mix/m_u_desc_stat_sin_mix_descp.md) is used in this macro. variable of `sub_varXX` must exist in `inds` dataset. Otherwise, will trigger the following alert. For example, if `sub_var1=ENRLFL1` not exist, will cause following error. <br>
>ERROR: (M_U_DESC_STAT_SIN_MIX) (M_U_CHKVARS) Variable ENRLFL1 does not exist in WORK.data2use.
