# Common Error
**Mandatory and Conditional values**<br>
Note: `clusterBy` parameter is required and should be stated<br>
>ERROR: (M_U_CROSS_OCCN) (m_u_parmchk) Required parameter clusterBy is missing. <br>

**Check exist dataset and variables**<br>
Note: Verifies that the specified variable exists in the data set.<br>
>ERROR: (M_U_CROSS_OCCN) (M_U_CHKVARS) Variable clusterBy does not exist in &inds<br>

>ERROR: (M_U_CROSS_OCCN) (M_U_CHKVARS) Dataset `inds` does not exist.
 
**Check where condition**<br>
Note: If `whr` is populated, fiter conditons should be correctly applied in `dsin` dataset. Otherwise, will trigger the following alert. <br>
>ERROR: (M_U_CROSS_OCCN) (M_U_CHKWHERE)  WHERE=`whr` is not correct, check variables<br>
 
**Check format**<br>
>ERROR: (M_U_CROSS_OCCN)Parameter 'clusterByFmt' [fmd.] is not a valid SAS format or cannot be found in the format catalog.<br>
Check if `&clusterByFmt.` is valid.

**Check others**<br>
>ERROR: (M_U_CROSS_OCCN) Parameter 'pop_mvar'[saspopb] should exist in the environment. <br>
`pop_mvar` parameter is required and should be stated, and need to verify that `&pop_mvar` and `&pop_mvar.n` exist

>ERROR: (M_U_CROSS_OCCN) The last item in format of colfmt[>=2XULN ] should be 'Total' when colTot is 'Y'.<br>
if `colTot=Y` then the `colfmt` should include 'Total' as the last value








