<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfquery name="head" datasource="books" dbtype="ODBC">
Select code FROM html WHERE name='head'
</cfquery>

<cfquery name="mlinks" datasource="books" dbtype="ODBC">
Select code FROM html WHERE Name='mlinks'
</cfquery>

<cfquery name="foot" datasource="books" dbtype="ODBC">
Select code FROM html WHERE Name='foot'
</cfquery>
<html>

<cfoutput query="head">#code#</cfoutput>
<cfoutput query="mlinks">#code#</cfoutput>



<font size="+1"><b>Update the data base!</b></font><p>
<table border="0" cellspacing="0">
<form action="insbooks.cfm" method="post">
<tr>
<td valign="top"><font face="Verdana">Category</font></td>
<td><input type="text" name="recommended"></td>
</tr>
<tr>
<td valign="top">
<font face="Verdana">Title: </font>
</td><td><input type="text" name="Title" size="50" maxlength="100"></td>
</tr>
<tr>
<td valign="top">
<font face="Verdana">Author(s):</font>
</td>
<td><input type="text" name="Author" size="50" maxlength="100"></td>
</tr>
<tr>
<td valign="top">
<font face="Verdana">Description</font>
</td>
<td><textarea cols=48 rows=5 name="Notes"></textarea></td>
</tr>
<tr>
<td valign="top">
<font face="Verdana">ISBN:</font>
</td><td><input type="text" name="ISBN"></td>
</tr>
<tr>
<td valign="top">
<font face="Verdana">image file</font>
</td>
<td><input type="text" name="image"></td>
</tr>
<tr>
<td><input type="reset" value="clear form"></td>
<td align="right"><input type="submit" value="insert data"></td>
</tr>
</form>

</table>

<cfoutput query="foot">#code#</cfoutput>

&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>
&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>

</html>
