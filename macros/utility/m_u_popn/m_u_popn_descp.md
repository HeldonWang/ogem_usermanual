# m_u_popn

### Purpose 

This utility macro is designed to process a dataset to calculate and generate summary counts for different treatment groups. It allows filtering of the population using a specified condition and can generate formatted macro variables as headers in further analysis or reporting.
<br>

The purposes include:<br>
>（1）Calculate the number of subjects in each treatment group.<br>
>（2）Create macro variables for display headers according to treatment format. Optionally adding (N=XXX) and/or other optional text(e.g., n, n (%)) below the display treatment format.<br>

>Note: Treatment format should be created before calling `m_u_popn` macro.<br>

>More details of usage are in [Parameter](m_u_popn_param.md) and [Example](m_u_popn_examp.md)<br>

### Output files
 
After calling this macro, series of global macro variables for BigN and treatment display format are generated and these macro variables can be used across TLF. In this macro, `(*ESC*)n` is used to split the header.<br>
For example if `&gmacro.=saspopb` and assume 3 treatments (including total group) need to be displayed. <br> 

（1）Output regardless of `BigN` and `nformat` options:<br>
> &saspopbN. = 3 [number of treatment groups] <br>

（2）If `BigN`=N and `nformat` is not populated:<br>
> &saspopb1. = Group A <br>
> &saspopb2. = Group B <br>
> &saspopb3. = Total<br>

（3）If `BigN`=N and `nformat=n`:<br>
> &saspopb1. = Group A`(*ESC*)n`n<br>
> &saspopb2. = Group B`(*ESC*)n`n<br>
> &saspopb3. = Total`(*ESC*)n`n<br>

（4）If `BigN`=Y and regardless of `nformat`, will create three series macro variables:<br>
> (4.1) Output variables stored counts of each treatment group.
>>  &saspopbBigN1. = XXX<br>
>>  &saspopbBigN2. = XXX<br>
>>  &saspopbBigN3. = XXX<br>

> (4.2) Output variables used `(*ESC*)n` as the split character.
>>  &saspopbBigNv1. = Group A`(*ESC*)n`N=XXX<br>
>>  &saspopbBigNv2. = Group B`(*ESC*)n`N=XXX<br>
>>  &saspopbBigNv3. = Total`(*ESC*)n`N=XXX<br>

> (4.3) Output variables used a space as the separated character.
>>  &saspopbBigNh1. = Group A N=XXX<br>
>>  &saspopbBigNh2. = Group B N=XXX<br>
>>  &saspopbBigNh3. = Total N=XXX<br>

（5）If `BigN`=Y and `nformat` options are not populated:<br>

>  &saspopb1. = Group A`(*ESC*)n`N=XXX<br>
>  &saspopb2. = Group B`(*ESC*)n`N=XXX<br>
>  &saspopb3. = Total`(*ESC*)n`N=XXX<br>

 （6）If `BigN`=Y and `nformat=%str(n (%%))`, %str(n (%%)) will be displayed as n (%) in rtf output:<br>

> &saspopb1. = Group A`(*ESC*)n`N=XXX`(*ESC*)n`n (%) <br>
> &saspopb2. = Group B`(*ESC*)n`N=XX`(*ESC*)n`n (%) <br>
> &saspopb3. = Total`(*ESC*)n`N=XXX`(*ESC*)n`n (%)<br>

（7） Output `&gmacro.trtlist` is based on `trtlev` [eg. (1|2|1 2) means `trtgrpN=1`, `trtgrpN=2`, `trtgrpN in (1,2)`] and `gmacro`, and regardless of `BigN` and `nformat` options. Total treatment equal to treatment 1 and treatment 2, using space as a seperated. The `&gmacro.trtlist` could be used to calculate per column groups.<br>
> &saspoptrtlist1. =1 <br>
> &saspoptrtlist2. =2 <br>
> &saspoptrtlist3. =1 2 <br>

---

### Macros used

  - %m_u_parmchk
  - %m_u_chkvars
  - %m_u_chkwhere

>Note: entimICE macros, including %m_u_parmchk, %m_u_chkvars, and %m_u_chkwhere are referred when developed O-GEM macros. See [entimICEAZ_Mapping_Macros_User_Guide.pdf](https://azcollaboration.sharepoint.com/sites/SS365/AD253/Clinical%20Data%20Standards%20Library/Guidelines%20and%20Training/SDTM/entimICEAZ_Mapping_Macros_User_Guide.pdf?csf=1&web=1&e=A0JuRZ) for further details.
  
### Used in

  - [%m_t_dm](../../display/m_t_dm/m_t_dm_descp.md)
  - [%m_t_dv](../../display/m_t_dv/m_t_dv_descp.md)
  - [%m_t_ae_sum](../../display/m_t_ae_sum/m_t_ae_sum_descp.md)
  - [%m_t_ex_dur](../../display/m_t_ex_dur/m_t_ex_dur_descp.md)
  - [%m_t_nested](../../display/m_t_nested/m_t_nested_descp.md)
  - [%m_t_nested_cont](../../display/m_t_nested_cont/m_t_nested_cont_descp.md)
  - [%m_t_lb_shift](../../display/m_t_lb_shift/m_t_lb_shift_descp.md)
  - [%m_t_lb_hyslaw](../../display/m_t_lb_hyslaw/m_t_lb_hyslaw_descp.md)

---


