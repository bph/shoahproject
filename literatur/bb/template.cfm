<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfquery name="head" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE name='head'
</cfquery>

<cfquery name="links" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE Name='links'
</cfquery>

<cfquery name="foot" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE Name='foot'
</cfquery>
<html>

<cfoutput query="head">#code#</cfoutput>
<cfoutput query="links">#code#</cfoutput>

<!--- put here the content of a new page --->

<cfoutput query="foot">#code#</cfoutput>


</html>
