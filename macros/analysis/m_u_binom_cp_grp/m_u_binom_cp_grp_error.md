# Common Error
**Mandatory and Conditional values**<br>
Note: `inds`,`byvar`,`final_ds` must be provided. <br>
>ERROR: INDS is missing .<br>
>ERROR: BYVAR is missing .<br>
>ERROR: FINAL_DS is missing .<br>

**Check exist dataset and variables**<br>
Note: input data `inds` must exist and can be open to check the valid values.<br>
>ERROR:(M_U_BINOM_CP_GRP) (M_U_CHKVARS) Dataset `inds` does not exist<br>

>ERROR:(M_U_BINOM_CP_GRP) (M_U_CHKVARS) Open for dataset `inds` failed<br>

Note: variable in `byvar` must exist in `inds` dataset if `byvar` is provided. For example, if `inds`=ANL and `byvar`=TRT01AN not exist, will cause following error.<br>
>ERROR: (M_U_BINOM_CP_GRP) Variable trt01an does not exist in inds.<br>

---

