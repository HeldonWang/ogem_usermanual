# Common Error
**Check Mandatory and Conditional values**<br>

Note: `inMacroName` parameter is required and should be stated<br>
>ERROR: () Macro m_u_parmchk called without value for parameter inMacroName. <br>

Note: The 'M_T_LB_HYSLAW' parameter that appears in the log needs to be checked, and the `INLIST_IGNORE` and `INLIST_CHECK` parameters also need to be checked.<br>
>ERROR: (M_T_LB_HYSLAW) (m_u_parmchk) Required parameter POP_FLAG is missing.<br>
>ERROR: (M_T_LB_HYSLAW) (m_u_parmchk) Required parameter HEADERLIST is missing.<br>

**Check exist dataset and variables**<br>

Note: `sfx1` dose not exist
>ERROR: (M_T_LB_HYSLAW) (m_u_parmchk) Variable sfx1 in INLIST_CHECK is not a macro parameter. <br>

Note: `sfx1` dose not exist
>WARNING: (M_T_LB_HYSLAW) (m_u_parmchk) Variable sfx1 in INLIST_IGNORE is not a macro parameter.<br>












