<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfinclude template="headspbb.cfm">

<cfinclude template="catname.cfm">
 


<cfquery name="cats1" datasource="spbb" dbtype="ODBC">
Select *
FROM categories
</cfquery>




<cfif IsDefined('URL.catname') IS "No">
<!--- That happens when there is no catname? --->
<font size="+1"><b>Add your reading recommendations!</b></font><p>
Please select a category for your book.<p>
If you are not sure, <a href="add.cfm?catname=members">Members' Favorites</a> would be just fine...
<p>
<cfoutput query="cats1">
<font size="+1"><b><a href="add.cfm?catname=#catname#">#cattitle#</a></b></font><p>
</cfoutput>
            <!--- LAYOUT --->
             <cfoutput query="foot">#code#</cfoutput> 
<CFABORT>
<!--- we abort any process --->
</cfif>

<cfquery name="cats" datasource="spbb" dbtype="ODBC">
Select *
FROM categories
WHERE catname = '#URL.catname#'
</cfquery>

<font size="+1"><b>Add a book to the 
<cfoutput query="cats">#cattitle#</cfoutput> - Page.</b></font>
</font>
<table border="0" cellspacing="0">
<form action="addins.cfm" method="post">
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
<font face="Verdana">ISBN:<br><font size="-1">please skip the dashes..</font><p></font>
</td><td><font size="-1" face="Verdana">
<input type="text" name="ISBN" size="20" maxlength="40">
<br>


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

 
<cfinclude template="footspbb.cfm">

