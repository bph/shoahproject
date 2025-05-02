<!--- 
        UPDATE of book data
        from <bookmaint.cfm>
        
--->
<cfupdate datasource="spbb" tablename="books" dbtype="ODBC">

<cfquery name="head" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE name='head'
</cfquery>

<cfquery name="linkshead" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE Name='linkshead'
</cfquery>

<cfquery name="linksaddcomm" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE Name='linksaddcomm'
</cfquery>

<cfquery name="linksmaintain" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE Name='linksmaintain'
</cfquery>

<cfquery name="linksfoot" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE Name='linksfoot'
</cfquery>

<cfquery name="contenthead" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE Name='contenthead'
</cfquery>

<cfquery name="contentfoot" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE Name='contentfoot'
</cfquery>

<cfquery name="foot" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE Name='foot'
</cfquery>
<html>

<cfoutput query="head">#code#</cfoutput>
<cfoutput query="linkshead">#code#</cfoutput>

<cfinclude template="catname.cfm">
 
<cfoutput query="linksaddcomm">#code#</cfoutput>
<cfoutput query="linksmaintain">#code#</cfoutput>

<cfoutput query="linksfoot">#code#</cfoutput>
<cfoutput query="contenthead">#code#</cfoutput>

<cfoutput>now updated:<p>
<b><a href="book.cfm?bookid=#bookid#">Title: #title#</b></a></font><br>
BookID:#BookID#<p>


</cfoutput>
 <cfoutput query="contentfoot">#code#</cfoutput>
            <cfoutput query="foot">#code#</cfoutput>

