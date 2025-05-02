<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfquery name="head" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE name='head'
</cfquery>

<cfquery name="linkshead" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE Name='linkshead'
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
<cfoutput query="linksfoot">#code#</cfoutput>
<cfoutput query="contenthead">#code#</cfoutput>
<font size="+1"><b>Add your book recommendation here!</b></font>
<table border="0" cellspacing="0">
<form action="membersinn.cfm" method="post">
<input type="hidden" name="categories" value="members">
<!--- <input type="hidden" name="indate" value="Now()"> --->
<tr>
<td><font size="-1" face="Verdana">Your Name:
</font></td><td><input type="text" name="inname" size="40" maxlength="50"></td>
</tr>
<td>
<font size="-1" face="Verdana">
Your email address</font>
</td>
<td><input type="text" name="inemail" size="40" maxlength="40"><br>
<hr noshade></td>
<tr>
<td valign="top">
<font face="Verdana">Title: </font>
</td><td><input type="text" name="Title" size="40" maxlength="100"></td>
</tr>
<tr>
<td valign="top">
<font face="Verdana">Author(s):</font>
</td>
<td><input type="text" name="Author" size="40" maxlength="100"></td>
</tr>
<tr>
<td valign="top">
<font face="Verdana">Description</font>
</td>
<td><textarea cols=38 rows=3 name="Notes"></textarea></td>
</tr>
<tr>
<td valign="top">
<font face="Verdana">ISBN:</font>
</td><td><input type="text" name="ISBN" size="40" maxlength="40"></td>
</tr>
<tr>
<td><input type="reset" value="clear form"></td>
<td align="right"><input type="submit" value="insert data"></td>
</tr>
</form>

</table>

<cfoutput query="contentfoot">#code#</cfoutput>



<cfoutput query="foot">#code#</cfoutput>
