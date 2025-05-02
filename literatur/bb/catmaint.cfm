<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfquery name="cats" datasource="spbb" dbtype="ODBC">
SELECT catname, cattitle, catid
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


<font size="+1"><b>Maintain the categories...</b></font><p>
<!--- 
    I try to display the list of categories in list box to choose from 
    the data come from the table:categories (query=cats above) 
    and will be put in the table:book:categories
    --->
    <table border="0" cellspacing="1" cellpadding="3">
 
<cfoutput query="cats">
<tr>
<td bgcolor="##333366">#cattitle#</td>
<td bgcolor="##333366"><a href="catedit.cfm?catid=#catid#">edit</a></td>
<td><font size="-1"><a href="catdel.cfm?catid=#catid#">delete</a></font></td></tr>
</cfoutput>
</table>
<p align="right"><font size="+1"><b><a href="catedit.cfm">Add a new Category</a></b></font></p>

<hr>
If your category is already there, you might add some 
of your book recommendation to the database:<br>
<font size="+1"><b>Go to <a href="addbook.cfm">Add book</a></b></font>
</font>



<cfoutput query="contentfoot">#code#</cfoutput>



<cfoutput query="foot">#code#</cfoutput>


