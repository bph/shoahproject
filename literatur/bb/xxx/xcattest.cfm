<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfoutput>#URL.catname#</cfoutput>

<cfquery name="cats" datasource="books" dbtype="ODBC">
SELECT title
FROM books
WHERE categories = '#URL.catname#'
</cfquery>

<cfoutput query="cats">#title#</cfoutput>
<!--- <cfquery name="titel" datasource="books" dbtype="ODBC">
SELECT Title
FROM books
WHERE categories = #URL.catname#
</cfquery>

title<cfoutput query="title">#title#</cfoutput><p> --->
<!--- 
<cfquery name="cattest" datasource="books" dbtype="ODBC">
SELECT *
FROM books 
WHERE categories EQ "URL.catname"
</cfquery>

<cfquery name="title" datasource="books" dbtype="ODBC">
SELECT cattille 
FROM categories 
WHERE catname = URL.catname
</cfquery>

<font size="+1"><b> 
<cfoutput query="title">#cattitle#</cfoutput></b></font><p>
<table width="600" border="0" cellspacing="0">

<cfoutput query="cattest">
<tr>
<td valign="top">
<cfif #image# EQ "">
<img src="bk20.gif" width=45 height=39 alt="" border="0">
<cfelse>
<a href="http://www.amazon.com/exec/obidos/ASIN/#ISBN#/naplesfreenet">
<img src="#image#" border=0 alt=""></a>
</cfif>


</td>
<td>
<font size="-1" face="Verdana">
<font size="+1" color="##9FD9FB">
<b>#Title#</b></font><br>
by <b>#Author#</b><br>
<i>#Notes#</i><br>
<p align="right">
<a href="http://www.amazon.com/exec/obidos/ASIN/#ISBN#/naplesfreenet">order</a>
</p>



</font></td></tr>
</cfoutput>
</table>

</body

</html>
 --->