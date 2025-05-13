# Common Error
**Mandatory and Conditional values**<br>
Note: `inds`, `trtgrpn` must be provided.<br>
>ERROR: INDS can not be null.<br>
>ERROR: TRTGRPN can not be null.<br>

**Other possible issues**<br>
- If `strata` is specified, the variable(s) must be numeric.<br>
- If `var` or `event` are specified, they must be valid in the input dataset and have values 0/1.<br>
- If unable to calculate the confidence interval, the macro will display the value defined by `missval`.<br>
---