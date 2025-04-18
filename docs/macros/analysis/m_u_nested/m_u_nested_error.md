# Common Error
**Mandatory and Conditional values**<br>
Note: If parameter `comnvarn` is specified, the `comnvarnfmt` could not be missing.<br>
>ERROR: (M_U_NESTED) (m_u_parmchk) Required parameter comnvarnfmt is missing.<br>

Note: If parameter `lev3` need to specified, the `lev2` must had been specified.
>ERROR: (M_U_NESTED) (m_u_parmchk) Required parameter lev2 is missing. <br>

**Check others**<br>
Note: For parameter `comnvarn_level`, the number of values which separated by "|" must be equal to the number of format which defined in `comnvarnfmt`.  For example: if a defined format contain 7 formatted value (displayed value), `comnvarn_level` must contain 7 groups of values, namely one group per level, which separated by "|", such as "1 2 3 4 5 | 1 | 2 | 3 | 4 | 5 | 3 4 5".<br>
>ERROR: (M_U_NESTED) Number of levels of COMNVARN_LEVEL= is not the same with the format.<br>

Note: For Parameter `pop_mvar`, the value must be pre-defined. which corresponding to the Parameter `gmacro` in macro [%m_u_report](../../utility/m_u_report/m_u_report_descp.md). The macro %m_u_popn usually is called in %localsetup.
>ERROR: (M_U_NESTED) Parameter 'pop_mvar'[saspop] should exist in the environment.<br>

 






