<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfquery name="cats" datasource="books" dbtype="ODBC">
SELECT catname, cattitle
FROM categories
</cfquery>
<cfquery name="head" datasource="books" dbtype="ODBC">
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


<font size="+1"><b>Add a new category!</b></font><p>
<form action="addcatins.cfm" method="post">
<table border="0" cellspacing="0" cellpadding="5">
<tr>
<td align="right">
short name: 
<input type="text" name="catname" size="10" maxlength="10"><br>

full title: 
<input type="text" name="cattitle" size="20" maxlength="20"><p>
<input type="submit" value="add category">
</td>
<td bgcolor="#808080">

</td>
</tr>
<tr><td>
<hr>
<font size="-1" face="Verdana"><i>Reality Check:<br>
 </i>Categories already in the database:<p>
<!--- 
    I try to display the list of categories in list box to choose from 
    the data come from the table:categories (query=cats above) 
    and will be put in the table:book:categories
    --->
    <table>
 <th>catname</th>  <th>cattitle</th> 
<cfoutput query="cats">
<tr><td><font size="-2">#catname#</font></td><td><font size="-2">#cattitle#</font></td></tr>
</cfoutput>
</table>
</select>
</font>
<!--- end of list box --->
</td><td valign="top" bgcolor="#808080">
<hr>
<font size="-1" face="Verdana">If your category is already there, you might add some 
of your book recommendation to the database:
Go to <a href="addbook.cfm">Add book</a>
</font>
</td></tr></table></form>


<cfoutput query="contentfoot">#code#</cfoutput>



<cfoutput query="foot">#code#</cfoutput>


