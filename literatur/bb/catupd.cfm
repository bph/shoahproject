<!--- 
        this is the ultimate update file! 
        coming from <catedit.cfm>
        either it updates the table:catregories
        or it insertes new date into it.
        That depends if there is a catid=from.catid provided.
--->

<cfif IsDefined("Form.catid")>
    <cfupdate datasource="spbb" tablename="categories" dbtype="ODBC">
<cfelse>
    <cfinsert datasource="spbb" tablename="categories" dbtype="ODBC">
</cfif>

    <cflocation URL="catmaint.cfm">
    <!--- 
    this function leads you back to the category-maintenance file 
    where the new/updated categories are already visible.
     --->