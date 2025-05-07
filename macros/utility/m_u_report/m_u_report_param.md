# Syntax

%m_u_report (<br>
[***table***=&lt;input-dataset&gt;](#table), <br>
[***lenlist***=&lt;list-of-column-width&gt;](#lenlist), <br>
[***justlist***=&lt;list-of-l|c|r (alignment column: c="center", l="left", r="right")&gt;](#justlist), <br>
[***justlist_header***=&lt;list-of-l|c|r (alignment header: c="center", l="left", r="right")&gt;](#justlistheader), <br>
[***nolblist***=&lt;list-of-Y|N (suppress the display of header text or not)&gt;](#nolblist), <br>
[***orderlist***=&lt;list-of-Y|N (order option used or not)&gt;](#orderlist), <br>
[***idlist***=&lt;list-of-Y|N (id option used or not)&gt;](#idlist), <br>
[***grouplist***=&lt;list-of-Y|N (group option used or not)&gt;](#grouplist), <br>
[***idpage***=&lt;list-of-Y|N (page option used or not)&gt;](#idpage), <br>
[***defcol***=&lt;description-text-of-rules-for-subtitles-or-columns-name&gt;](#defcol), <br>
[***blank_after***=&lt;variable-insert-blank-line-after&gt;](#blankafter), <br>
[***pg***=&lt;maximum-rows-per-page&gt;](#pg)<br>
[***pg_byvar***=&lt;Y|N (perform the dynamic pg display according to col0 or not)&gt;](#pgbyvar),<br>
);
 

# Parameter


#### table
specifies the input data set.<br>

Item|Contents
:---|:---
Default|
Value| A one or two level dataset name. 
Requirement|Mandatory
Restriction| 
Interaction|
Eg.|`adsl` <br>`adam.adsl`

#### lenlist
specifies the width proportion for each column. The lengths should be separated by "#" and their sum should be less than or equal to 99 per page. If this parameter is not provided, then column length will be calculated in macro automatically. The current algorithm for automatically calculating column widths is not yet mature enough. It is recommended that users manually adjust based on the output situation of RTF.<br>

Item|Contents
:---|:---
Default|Auto-assigned based on the length of header/content for each column
Value|
Requirement|Optional
Restriction|If specified, all columns must be assigned with value respectively, the number of values separated by "#" must be equal to the number of columns.
Interaction|
Eg.|`5#2#2#2`

#### justlist
specifies the content alignment for each column, separated by "#". "l" means left-alignment, "c" means center-alignment, "r" means right-alignment.<br>

Item|Contents
:---|:---
Default|
Value|`l, c, r` for each column.
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`l#c#c#c`

#### justlist_header
specifies the header alignment for each column, separated by "#". "l" means left-alignment, "c" means center-alignment, "r" means right-alignment.<br>

Item|Contents
:---|:---
Default|
Value|`l, c, r` for each column.
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`l#c#c#c`

#### nolblist
specifies whether suppress the display of header name for each column, separated by "#". "Y" means do not display header name.<br>

Item|Contents
:---|:---
Default|
Value|`Y, N` for each column.
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Y#N#N#N`

#### orderlist
specifies whether to apply the ORDER option for each column, separated by "#". "Y" means order variable, which does not repeat the value from one row to the next if the value does not change. <br>

Item|Contents
:---|:---
Default|
Value|`Y, N` for each column.
Requirement|Mandatory
Restriction|
Interaction|
Eg.|`Y#N#N#N`

#### idlist

specifies whether to apply the ID option for each column, separated by "#". "Y" means ID variable, an ID variable and all columns to its left appear at the left of every page of a report. If leave it as null or not to state it, the default values will be used.<br>

Item|Contents
:---|:---
Default|`N` for each column.
Value|`Y, N` for each column.
Requirement|Optional
Restriction|
Interaction|
Eg.|`Y#N#N#N`

#### grouplist

specifies whether to apply the GROUP option for each column, separated by "#". "Y" means group variable. The observations from the dataset that have a unique combination of formatted values for all group variables will be consolidated into one row. If leave it as null or not to state it, the default values will be used.<br>

Item|Contents
:---|:---
Default|`N` for each column.
Value|`Y, N` for each column.
Requirement|Optional
Restriction|
Interaction|
Eg.|`N#N#N#N`

#### idpage
specifies whether inserts a page break for each column, separated by "#". "Y" means this column and all columns to its right will appear on a new page. If leave it as null or not to state it, the default values will be used. <br>

Item|Contents
:---|:---
Default|`N` for each column.
Value|`Y, N` for each column.
Requirement|Optional
Restriction|
Interaction|When "Y" exist in the `idlist`, these "Y"-columns are used as the identification columns and appear first in the new page, and followed by the `idpage=Y` column. Otherwise, the `idpage=Y` column will appear as this fisrt column in the new page.
Eg.|`N#N#N#N`

#### defcol
specifies the columns that need to be displayed with each column name separated by a space, or add subtitles between columns (which will be used in proc report column statement). If leave it as null or not to state it, the default values will be used.<br>

Item|Contents
:---|:---
Default|display all columns
Value|
Requirement|Optional
Restriction|The column name is the variable name in input dataset `table` which should be character variables and starts from "col".
Interaction|
Eg.|`col1 col2 col3`<br>`(col1)("(*ESC*)S={just = center borderbottomwidth=0pt MARGINBOTTOM= 2pt } SUBTITLE (*ESC*)n (N = 100)(*ESC*)S={}" col2 col3) `

#### blank_after
specifies the variable on which "insert blank line" is based.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Optional
Restriction|The variable should exist in input dataset `table`.
Interaction|
Eg.|`ORDER1`

#### pg
specifies the maximum number of rows displayed per page in the report.<br>

Item|Contents
:---|:---
Default|
Value|
Requirement|Mandatory
Restriction|
Interaction| When `pg_byvar=Y`, will recalculate the maximum number of rows by the page-by variable (eg. byvar).
Eg.|`18`

#### pg_byvar
specifies whether to perform the dynamic pg display according to the page-by variable (eg. byvar). If "Y", then will recalculate maximum number of rows by page. If leave it as null or not to state it, the default values will be used. 

Item|Contents
:---|:---
Default|`N`
Value|`Y, N`
Requirement|Mandatory
Restriction|
Interaction| 
Eg.|`N`



