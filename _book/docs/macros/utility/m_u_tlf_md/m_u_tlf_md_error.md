# Common Error
**Check Mandatory columns in excel sheet**<br>
Note: `PROGRAM`, `SUFFIX`,`OUTFILE` columns are required and must exist in toc index file.<br>

>ERROR: [m_u_tlf_md]NO Mandatory column PROGRAM in "&filein."<br>

>ERROR: [m_u_tlf_md]NO Mandatory column SUFFIX in "&filein."<br>

>ERROR: [m_u_tlf_md]NO Mandatory column OUTFILE in "&filein."<br>


**Check Mandatory values in excel sheet**<br>
Note: `PROGRAM` column is required and value can not be missing.<br>
>ERROR: (m_u_tlf_md)PROGRAM has missing value.<br>

Note: `TITLE3` column should not be exist in toc index file. If exist, then title3 should be null.<br>
>ERROR: (m_u_tlf_md)TITLE3 should be null.<br>

**Check number of titles and footnote**<br>
Note: If a subtitle is needed by page, then total titles can be >6, otherwise, Maximum number of TITLEs should not be greater than 6. Maximum number of footnotes should not be greater than 9. Otherwise, will trigger the following alert. 
>WARNING: Maximum number of TITLEs is>6 (without by page). Please check.<br>

>WARNING: Maximum number of FOOTNOTEs is>9. Please check.<br>

**Check Others**<br>
Note: Macro check folder of &prgmpath (usually location of generated codes) or &repopath (usually location of the developed O-GEM codes) should be exist. Otherwise, will trigger the following alert. 
>ERROR: Macro variable dir is empty, please include folder path.<br>
 


