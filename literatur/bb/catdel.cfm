<!--- 
        this is the ultimate delete file! 
        coming from <catedit.cfm>
        it deletes the catid=#catid#
--->

<cfif IsDefined("catid") is "no">
Error! No catid was specified...

<cfabort>
</cfif>

<cfquery name="del" datasource="spbb" dbtype="ODBC">
Delete 
From categories
Where catid = #catid#
</cfquery>

    <cflocation URL="catmaint.cfm">
    <!--- 
    this function leads you back to the category-maintenance file 
    where the new/updated categories are already visible.
     --->