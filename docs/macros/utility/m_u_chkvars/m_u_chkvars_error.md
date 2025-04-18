# Common Error

**Check Mandatory and Conditional values**<br>

Note: Mandatory parameters `inMacroName`, `intab` are required and should be stated.<br>

>ERROR: (&inMacroName) m_u_chkvars called with STRLST missing. <br>
 
>ERROR: (&inMacroName) m_u_chkvars called with INTAB missing. <br>

Note: parameters `CONTINUE` value should be YES or NO, else will tigger the issue below.

>ERROR: (&inMacroName) (m_u_chkvars) CONTINUE = &CONTINUE, should be YES or NO. m_u_chkvars aborts. <br>

**Check exist dataset and variables**<br>

Note: input data `inds` must exist and can be open to check the valid values for the checking macro.<br>

>ERROR:(&inMacroName) (M_U_CHKVARS) Dataset `inds` does not exist<br>

>ERROR:(&inMacroName) (M_U_CHKVARS) Open for dataset `inds` failed<br>

>ERROR:(&inMacroName) (M_U_CHKVARS) Input dataset closing error<br>

Note: input variable &&strl&chkvarsI. must exist in `dsin` dataset for the checking macro. Otherwise, will trigger the following alert (&&strl&chkvarsI. is the variable name being checked). <br>

>ERROR: (&inMacroName) (M_U_CHKVARS) Variable &&strl&chkvarsI.does not exist in &inds<br>




