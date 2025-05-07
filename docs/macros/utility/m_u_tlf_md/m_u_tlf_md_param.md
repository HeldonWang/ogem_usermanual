# Syntax

%m_u_tlf_md (<br>
[***filein***=&lt;path-of-toc&gt;](#filein), <br>
[***sheet***=&lt;sheet-name&gt;](#sheet), <br>
[***&#95;all&#95;***=&lt;Y|N (add 'title1' and 'title2' or not)&gt;](#all), <br>
[***title1***=&lt;description-text-of-title1&gt;](#title1), <br>
[***title2***=&lt;description-text-of-title2&gt;](#title2), <br>
[***pgmgen***=&lt;Y|N (generate TLF generation codes or not)&gt;](#pgmgen), <br>
[***prgmpath***=&lt;path-of-generation-codes&gt;](#prgmpath), <br>
[***repopath***=&lt;path-of-reference-codes&gt;](#repopath), <br>
[***batch***=&lt;Y|N (generate batch_tlf.sas or not)&gt;](#batch), <br>
[***error_override***=&lt;Y|N (stop master program halting or not)&gt;](#erroroverride), <br>
[***deBug***=&lt;Y|N&gt;](#debug)<br>
);<br>

---

# Parameter

## Control input

#### filein
specifies the full location, file name and extension of the input file.

Item|Contents
:---|:---
Default|  
Value| 
Requirement|Mandatory
Restriction|This macro uses `dbms = xlsx`, so excel format is required.
Interaction| 
Eg.|`root/cdar/xxx/xxxx/ar/xx/tlf/doc/toc_index.xlsx`

 
> **Note:**<br>
>Mandatory column in toc_index.xlsx <br>
 Title 4: Title4 display table/figure/lisitng number. <br>
 Title 5: Title5 display the title description of table/figure/lisitng.<br>
 Title7 (Optional) : j=l "#byval(byvar)"<br>
 Program: Name of TLF code<br>
 Suffix: A suffix is used to distinguish different output datasets and rtf files generated within the same program code.<br>
 Outfile: Used as the name for tlf data and rtf files (typically the program name followed by the suffix).<br>


#### sheet
specifies the name of the sheet within the toc index file.

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction|Sheetname of `filein.`
Eg.|`Index`
 
#### \_all\_
specifies whether to add 'title1' and 'title2' (title1 and title2 usually are common in one reporting event.). If `_all_= N` (default), it will use the 'title1' and 'title2' in `toc index file`. If `_all_= Y`, the values from macro parameter text `title1` and `title2` will be used. (eg., title1 = j=L'AstraZeneca', title2 = j=L'DXXXXXXXX - DB YYMMDD10'). If leave it as null or not to state it, the default values will be used.

Item|Contents
:---|:---
Default| `N`
Value|`Y, N `(not case sensitive)
Requirement|Optional
Restriction|
Interaction|If `_all_= N` then  `title1` and `title2` must exist in toc index file.
Eg.|`Y`

#### title1
specifies title1 to be used in rtf. Typically set it as the sponsor name, such as "j=L'AstraZeneca'" or "AstraZeneca". (no need to include "page X of Y").

Item|Contents
:---|:---
Default|
Value|
Requirement|Conditional
Restriction|
Interaction| `title1` must be provided when `_all_ = Y`.
Eg.|`j=L'AstraZeneca'`

#### title2
specifies title2 to be used in rtf. Title2 describes the study/protocol information and/or database information(extraction date,cutoff date, or database lock date), such as j=L'DXXXXXXXX - DB YYMMDD10'.

Item|Contents
:---|:---
Default|
Value|
Requirement|Conditional
Restriction|
Interaction| `title2` must be provided when `_all_ = Y`.
Eg.|`j=L'D0000C00001'`

#### pgmgen
specifies whether to generate codes for TLF (Tables, Listings, and Figures). If `pgmgen=Y`, then (1) the parameters ("prgmpath", "repopath", "batch", and "error_override") need to be filled. (2) u_blank.sas should exist in macro folder at the same level as `repopath`. If leave it as null or not to state it, the default values will be used.

Item|Contents
:---|:---
Default|`N`
Value|`Y, N `
Requirement|Optional
Restriction|
Interaction| Use [%u_blank](../../../other/u_blank.md) as blank sas code template.
Eg.|`N`
> Note: If `pgmgen=Y` the non existing program.sas in `prgmpath` will be generated.

#### prgmpath
specifies location of the generated codes, default is the location of the program which invokes this macro. If leave it as null or not to state it, the default values will be used.

Item|Contents
:---|:---
Default|`&_exec_programpath`
Value|
Requirement|Optional
Restriction|
Interaction|  
Eg.|`root/cdar/xxx/xxxx/ar/xx/tlf/dev/program`

#### repopath
specifies the location of O-GEM developed TLF generation codes from central repository (root/global_tools/oncology/o_gem/pgm/v1/tlf/prod/program). Default is location of the program which invokes this macro. If leave it as null or not to state it, the default values will be used.

Item|Contents
:---|:---
Default|`&_exec_programpath`
Value|
Requirement|Optional
Restriction|
Interaction|
Eg.|`root/cdar/xxx/xxxx/ar/xx/tlf/dev/program`

#### batch
specifies whether to generate batch_tlf.sas. If leave it as null or not to state it, the default values will be used.

Item|Contents
:---|:---
Default|`N`
Value|`Y, N `
Requirement|Optional
Restriction|
Interaction| 
Eg.|`N`

#### error_override
specifies parameter of %runpgm. Set to "Y" if user would like to stop master program halting after first error. If leave it as null or not to state it, the default values will be used. 

Item|Contents
:---|:---
Default|`N`
Value|`Y, N `(not case sensitive)
Requirement|Optional
Restriction|
Interaction| required when `batch=Y`
Eg.|`N`

## Control debug

#### deBug
specifies whether need to debug or not, if not "Y" then intermediate datasets will be deleted. If leave it as null or not to state it, the default values will be used.<br>

Item|Contents
:---|:---
Default|`N`
Value|`Y, N `(not case sensitive)
Requirement|Optional
Restriction|
Interaction|
Eg.|`N`

