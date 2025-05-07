# Common Error
**Mandatory and Conditional values**<br>

Note: `inds` parameter is required and should be stated<br>
>ERROR: (M_U_DESC_STAT_SIN_MIX) m_u_chkvars called with INTAB missing. <br>

Note: `datout` parameter is required and should be stated<br>
>MPRINT(M_U_DESC_STAT_SIN_MIX):   proc append base= data=dat_cat1_1_2 run;<br>
ERROR 22-322: Syntax error, expecting one of the following: BASE, DATA, NEW, OUT.<br>
ERROR 76-322: Syntax error, statement will be ignored.<br>

**Check exist dataset and variables**<br>

Note: Verifies that the specified variable exists in the data set. For example, if `varlist_cat=AGEGR1N_` not exist, will cause following error. <br>
>ERROR: (M_U_DESC_STAT_SIN_MIX) (M_U_CHKVARS) Variable AGEGR1N_ does not exist in WORK.temp_data_sub1<br>




