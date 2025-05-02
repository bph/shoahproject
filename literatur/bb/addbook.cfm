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

<font size="+1"><b>Add a book to the database.</b></font>

<table border="0" cellspacing="0" cellpadding="5">
<form action="addins.cfm" method="post">
<tr>
<td valign="top"><font face="Verdana">Category:</font></td>
<td>
<!--- 
    I try to display the list of categories in list box to choose from 
    the data come from the table:categories (query=cats above) 
    and will be put in the table:book:categories
    --->
<SELECT NAME = "categories">
<cfoutput query="cats">
<OPTION value="#catname#">#cattitle#
</cfoutput>
</select>
<!--- end of list box --->
<font size="-1" face="Verdana"><i><a href="catedit.cfm">need a new category?</a></i><p>
As you already noticed most of the site is controlled by categories, links, pages, and displays.
<hr>
</font></td>
</tr>
<tr><td valign="bottom">
<font size="-1" face="Verdana">
Name:
</font>
</td><td valign="bottom">

<input type="text" name="inname" size="20" maxlength="40">

</font>
</td></tr>
<tr><td><font size="-1" face="Verdana">email:
</font></td><td><input type="text" name="inemail" size="20" maxlength="40"><hr></td></tr>
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
</td><td><input type="text" name="ISBN" size="20" maxlength="40"></td>
</tr>
<tr><td>image:</td><td><input type="text" name="image" size="40"></td></tr>
<tr><td>entry date:</td><td><input type="text" name="indate"></td></tr>
<tr>
<td><input type="reset" value="clear form"></td>
<td align="right"><input type="submit" value="insert data"></td>
</tr>
</form>

</table>

<cfoutput query="contentfoot">#code#</cfoutput>



<cfoutput query="foot">#code#</cfoutput>


