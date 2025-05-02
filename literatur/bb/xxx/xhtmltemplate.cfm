<cfquery name="htmlhead" datasource="books" dbtype="ODBC">
Select code FROM html WHERE name='htmlhead'
</cfquery>

<cfquery name="htmllinks" datasource="books" dbtype="ODBC">
Select code FROM html WHERE name='htmllinks'
</cfquery>

<cfquery name="htmlfoot" datasource="books" dbtype="ODBC">
Select code FROM html WHERE name='htmlfoot'
</cfquery>

<cfoutput query="htmlhead">#code#</cfoutput>

<cfoutput query="htmllinks">#code#</cfoutput>

<!--- ENTER TEXT HERE! --->

<cfoutput query="htmlfoot">#code#</cfoutput>

