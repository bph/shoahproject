<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfquery name="head" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE name='head'
</cfquery>

<cfquery name="linkshead" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE Name='linkshead'
</cfquery>

<cfquery name="linksaddcomm" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE Name='linksaddcomm'
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
<!--- 
        put in some other links here like
        table:html:linksaddcomm
        or
        table:html:linksmaintain
        or some individuell links for a particular page

 --->
<cfoutput query="linksaddcomm">#code#</cfoutput>
 
<cfoutput query="linksfoot">#code#</cfoutput>
<cfoutput query="contenthead">#code#</cfoutput>
<font size="+1"><b>Maintaining the Book Review</b></font><p>

<form action="maintain1.cfm" method="post">
<font face="Verdana">
Please enter the password<p>
<input type="password" name="user" size="4" maxlength="4" readonly>
<input type="submit" value="go!">
</font>
</form>

<cfoutput query="contentfoot">#code#</cfoutput>



<cfoutput query="foot">#code#</cfoutput>
