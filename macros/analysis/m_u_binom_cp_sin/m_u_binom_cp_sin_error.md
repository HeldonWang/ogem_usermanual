# Common Error
**Mandatory and Conditional values**<br>
Note: `inds`,`byvar`,`group_number`,`group_name`,`ord`,`outds` must be provided. <br>
>ERROR: INDS is missing .<br>
>ERROR: BYVAR is missing .<br>
>ERROR: GROUP_NUMBER is missing .<br>
>ERROR: GROUP_NAME is missing .<br>
>ERROR: ORD is missing .<br>
>ERROR: OUTDS is missing .<br>

**Check exist dataset and variables**<br>
Note: input data `inds` must exist and can be open to check the valid values.<br>
>ERROR:(M_U_BINOM_CP_SIN) (M_U_CHKVARS) Dataset `inds` does not exist<br>

>ERROR:(M_U_BINOM_CP_SIN) (M_U_CHKVARS) Open for dataset `inds` failed<br>

Note: variable in `byvar` must exist in `inds` dataset if `byvar` is provided. For example, if `inds`=ANL and `byvar`=TRT01A not exist, will cause following error.<br>
>ERROR: (M_U_BINOM_CP_SIN) Variable trt01a does not exist in inds.<br>
---

