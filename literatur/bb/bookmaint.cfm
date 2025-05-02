<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!--- CHANGE & DELETE Facilities in Maintenance:
files involved in this process:
bookmaint.cfm
    with #URL.bookid# a form with the book's data in a form ready to edit.
book.cfm 
    with #URL.bookid# all the data of single book will be displayed with links to update or delete
delbook.cfm
    with #URL.bookid# the data of the specified book are deleted.


        all files need the variable #URL.bookid#
        if no bookid is provided the file <nobookid.cfm> will be <cfinclude>-ed
        which shows a list of all books in the database with links to look at, 
        update or delete the data.    
 --->
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

<cfquery name="booklist" datasource="spbb" dbtype="ODBC">
SELECT categories, title, author, bookid
FROM books
ORDER BY categories
</cfquery>

<cfif IsDefined('URL.BookID') IS "No">
<!--- 
That happens when there is no bookid..
We give a list with links:
                link under 
                - #title # leads to an single output of one books data
                   where the user finds the [update] and/or [delete] functions accordingly.
                - [update] come back to this file <bookmaint.cfm> but now with an bookid
                - [delete] deletes the book accordingly

                
 --->

           
            
<b>To update a book review, please choose the book in question from this list:</b><p>

<table><cfoutput query="booklist">
<tr><td><font size="-1" face="Arial"><a href="book.cfm?bookid=#bookid#">#title#</a> by #author#</font></td>
<td bgcolor="##808080">
<font size="-1" face="Arial">
<a href="bookmaint.cfm?bookid=#bookid#">[update]</a>&nbsp;
<a href="delbook.cfm?bookid=#bookid#">[delete]</a>
</font>
</td>
</tr>
</cfoutput>
</table>


             <!--- LAYOUT --->
         <cfoutput query="foot">#code#</cfoutput> 
<CFABORT>
<!--- we abort any process --->
</cfif>


<cfquery name="allbooks" datasource="spbb" dbtype="ODBC">
SELECT *
FROM books
WHERE BookId = #URL.BookId#
</cfquery>


<font size="+1"><b>Update a book to the database.</b></font>
<cfoutput query="allbooks">
<form action="bookupdate.cfm" method="post">
<input type="hidden" name="BookId" value="#BookId#">
<table border="0" cellspacing="0" cellpadding="5">

<tr>
<td valign="top"><font face="Verdana">Category:</font></td>
<td>
<input type="text" name="categories" size="20" maxlength="40" value="#TRIM(categories)#"><br>
<font size="-1" face="Verdana"><i><a href="addcat.cfm">need a new category?</a></i><p>
</font></td>
</tr>
<tr><td valign="bottom">
<font size="-1" face="Verdana">
Name:
</font>
</td><td valign="bottom">
<input type="text" name="inname" size="20" maxlength="40" value="#TRIM(inname)#">

</font>
</td></tr>
<tr><td><font size="-1" face="Verdana">email:
</font></td><td><input type="text" name="inemail" size="20" maxlength="40" value="#TRIM(inemail)#"><hr></td></tr>
<tr>
<td valign="top">
<font face="Verdana">Title: </font>
</td><td><input type="text" name="Title" size="40" maxlength="100" value="#TRIM(title)#"></td>
</tr>
<tr>
<td valign="top">
<font face="Verdana">Author(s):</font>
</td>
<td><input type="text" name="Author" size="40" maxlength="100" value="#TRIM(author)#"></td>
</tr>
<tr>
<td valign="top">
<font face="Verdana">Description</font>
</td>
<td><textarea cols=40 rows=3 name="Notes"> #TRIM(notes)#</textarea></td>
</tr>
<tr>
<td valign="top">
<font face="Verdana">ISBN:</font>
</td><td><input type="text" name="ISBN" size="20" maxlength="40" value="#TRIM(ISBN)#"></td>
</tr>
<tr><td>image:</td><td><input type="text" name="image" size="40" value="#TRIM(image)#"></td></tr>
<tr><td>entry date:</td><td><input type="text" name="indate" value="#TRIM(indate)#"></td></tr>
<tr>
<td><input type="reset" value="clear form"></td>
<td align="right"><input type="submit" value="insert data"></td>
</tr>
</form>

</table>
</cfoutput>
            <cfoutput query="contentfoot">#code#</cfoutput>
            <cfoutput query="foot">#code#</cfoutput>


