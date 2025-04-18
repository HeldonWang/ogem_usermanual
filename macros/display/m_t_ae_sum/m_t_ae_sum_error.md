# Common Error

**Mandatory and Conditional values**<br>
Note: Mandatory parameters `inds`, `merge_adsl`，`trtgrpn`, `pop_mvar`, `label_list` are required and should be stated.<br>

>ERROR: [M_T_AE_SUM] Parameter 'inds' should have value.<br>

>ERROR: [M_T_AE_SUM] Parameter 'merge_adsl' should have value.<br>

>ERROR: [M_T_AE_SUM] Parameter 'trtgrpn' should have value.<br>

>ERROR: [M_T_AE_SUM] Parameter 'pop_mvar' should have value.<br>

>ERROR: [M_T_AE_SUM] Parameter 'label_list' should have value.<br>

**Check exist dataset and variables**<br>
Note: input data `inds` must exist and can be open to check the valid values.<br>
>ERROR:(M_T_AE_SUM)Input dataset %kupcase(&inds) does not exist.<br>

**Check others**<br>
Note: For parameter `where_list`, if specified, the number of values which separated by "|" must be equal to the number of `label_list`.<br>

>ERROR: (M_T_AE_SUM) Parameter 'label_list' and 'where_list' should have same length.<br>

Note: For parameter `flg_list`, if specified, the number of values which separated by "|" must be equal to the number of `label_list`.<br>

>ERROR: (M_T_AE_SUM) Parameter 'label_list' and 'flg_list' should have same length.<br>
 