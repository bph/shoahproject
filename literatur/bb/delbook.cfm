<CFIF IsDefined("Bookid") IS "No">
<cfinclude template=nobookid.cfm>
<CFABORT>
</cfif>

<CFQuery datasource="spbb">
Delete FROM books
WHERE Bookid=#Bookid#
</cfquery>

<!--- Query to create the links of our category based pages :cattest.cfm --->
<cfquery name="cats" datasource="spbb" dbtype="ODBC">
SELECT * 
FROM categories
</cfquery>


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
<!--- content column headline --->

<div align="center"><font size="+1"><b>Book deleted!</b></font></div>

        


<!--- end of content --->


<!--- end: content table cell --->
<cfoutput query="contentfoot">#code#</cfoutput>



<cfoutput query="foot">#code#</cfoutput>
