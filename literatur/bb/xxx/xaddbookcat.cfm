<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">


<cfquery name="head" datasource="books" dbtype="ODBC">
Select code FROM html WHERE name='head'
</cfquery>

<cfquery name="linkshead" datasource="books" dbtype="ODBC">
Select code FROM html WHERE Name='linkshead'
</cfquery>

<cfquery name="linksaddcomm" datasource="books" dbtype="ODBC">
Select code FROM html WHERE Name='linksaddcomm'
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

<cfoutput query="linksfoot">#code#</cfoutput>
<cfoutput query="contenthead">#code#</cfoutput>

<cfquery name="cats" datasource="books" dbtype="ODBC">
Select *
FROM categories
WHERE catname = '#URL.catname#'
</cfquery>

<font size="-1" face="Verdana">
<font size="+1"><b>Add a book to the 
<cfoutput query="cats">#cattitle#</cfoutput> - Page.</b></font>
</font>
<table border="0" cellspacing="0">
<form action="addbookcatins.cfm" method="post">
<input type="hidden" name="categories" value="<cfoutput>#URL.catname#</cfoutput>">
                   

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
<td><textarea cols=40 rows=3 name="Notes"></textarea></td>
</tr>
<tr>
<td valign="top">
<font face="Verdana">ISBN:</font>
</td><td><font size="-1" face="Verdana">
<input type="text" name="ISBN" size="20" maxlength="40">
<br>
please skip the dashes...
</font>
</td>
</tr>
<tr><td><font face="Verdana">Your Name:
</font></td><td><input type="text" name="inname" size="20" maxlength="40"></td></tr>

<tr><td><font face="Verdana">Your Email:
</font></td><td><input type="text" name="inemail" size="20" maxlength="40"></td></tr><tr>
<td><input type="reset" value="clear form"></td>
<td align="right"><input type="submit" value="insert data"></td>
</tr>
</form>

</table>

<cfoutput query="contentfoot">#code#</cfoutput>



<cfoutput query="foot">#code#</cfoutput>


