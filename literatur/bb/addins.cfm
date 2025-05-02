<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
  <!--- Inserts data from the HTML form <insert --->
    <cfinsert datasource="spbb" tablename="books" dbtype="ODBC">
    <!--- that wasn't really complicated, was it? ---> 

<cfquery name="head" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE name='head'
</cfquery>

<cfquery name="linkshead" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE Name='linkshead'
</cfquery>

<cfquery name="linksaddcomm" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE Name='linksaddcomm'
</cfquery>

<!--- <cfquery name="linksmaintain" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE Name='linksmaintain'
</cfquery> --->

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

<cfoutput query="linksfoot">#code#</cfoutput>
<cfoutput query="contenthead">#code#</cfoutput>

<font size="+1"><b>Thanks you very much!</b></font><p>
This is what you entered:<br>
<cfoutput>
<a href="http://www.amazon.de/exec/obidos/ASIN/#form.ISBN#/shoahproject">#form.title#</a><br>
by #form.author#<p>
<i>#ParagraphFormat(form.notes)#</i>
</cfoutput>

<cfoutput query="contentfoot">#code#</cfoutput>



<cfoutput query="foot">#code#</cfoutput>


