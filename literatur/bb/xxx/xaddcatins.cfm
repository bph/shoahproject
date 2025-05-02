<!--- Inserts data from the HTML form <catadd.cfm --->
<cfinsert datasource="books" tablename="categories" dbtype="ODBC">
 <!--- 
    uuuuh, careful, if CF tells you the form.variable cannot be found
    but it is referenced properly, maybe you just forgot the little 
    method=post in the form
  ---> <cfquery name="head" datasource="books" dbtype="ODBC">
Select code FROM html WHERE name='head'
</cfquery>

<cfquery name="linkshead" datasource="books" dbtype="ODBC">
Select code FROM html WHERE Name='linkshead'
</cfquery>

<cfquery name="linksaddcomm" datasource="books" dbtype="ODBC">
Select code FROM html WHERE Name='linksaddcomm'
</cfquery>

<cfquery name="linksmaintain" datasource="books" dbtype="ODBC">
Select code FROM html WHERE Name='linksmaintain'
</cfquery>

<cfquery name="linksfoot" datasource="books" dbtype="ODBC">
Select code FROM html WHERE Name='linksfoot'
</cfquery>

<cfquery name="contenthead" datasource="books" dbtype="ODBC">
Select code FROM html WHERE Name='contenthead'
</cfquery>

<cfquery name="contentfoot" datasource="books" dbtype="ODBC">
Select code FROM html WHERE Name='contentfoot'
</cfquery>

<cfquery name="foot" datasource="books" dbtype="ODBC">
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
<font size="+1"><b>Catergory added:<br>

</b></font><p>

<cfoutput>
<font size="+0">short name: <b>#form.catname#</b><br>
full titel: <b>#form.cattitle#</b></font>
</cfoutput>
<p align="right"><font size="+1"><b>
<a href="cat.cfm?catname=<cfoutput>#form.catname#</cfoutput>">
That's how the page will look like</a>
</b></font></p>
<cfoutput query="contentfoot">#code#</cfoutput>



<cfoutput query="foot">#code#</cfoutput>


