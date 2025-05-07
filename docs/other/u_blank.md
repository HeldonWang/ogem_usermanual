# u_blank
This is a standard template for blank SAS code. When `pgmgen=Y` is required in [%m_u_tlf_md](../macros/utility/m_u_tlf_md/m_u_tlf_md_descp.md), the corresponding programming codes for TLF are generated based on this template. The standard structure includes a program header, study-level setup section, and three predefined step sections.<br>

* Headers are to include the following details.<br>

Item|Contents
:---|:---
Program name      | &filename.
Program path      | &_exec_programpath.
Type              | TLF generation code
Purpose           | 
Author            | &_exec_userid.
Date created      | %scan(&_exec_programlastmodified,1,"T")
Input datasets    | 
Macros used       | 
Output files      | 
Revision history  |

>Note: For generated codes, Program name, Program path, Author, and Date created are automatically generate when calling [%m_u_tlf_md](../macros/utility/m_u_tlf_md/m_u_tlf_md_descp.md).
 

* Study-level setup section<br>
Including %setup macro and a %localsetup macro.<br>


* Three predefined step sections are to include the following details.<br>
```
%** Step1. Proc format used in TLF **;
%** Step2. Data preprocessing **;
%** Step3. Call display macros **;
```