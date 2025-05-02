<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<cfquery name="head" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE name='head'
</cfquery>

<cfquery name="links" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE Name='links'
</cfquery>

<cfquery name="foot" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE Name='foot'
</cfquery>
<html>

<cfoutput query="head">#code#</cfoutput>
<cfoutput query="links">#code#</cfoutput>

<cfoutput>#URL.recommended#</cfoutput>

<cfquery name="url" datasource="spbb" dbtype="ODBC">
SELECT *
FROM books 
WHERE recommended = #URL.recommended#
</cfquery>
<font size="+1"><b>New to the Net</b></font><p>
<table width="600" border="0" cellspacing="0">

<cfoutput query="url">
<tr>
<td valign="top">
<cfif #image# EQ "">
<img src="edup.gif" width=50 height=50 alt="" border="0">
<cfelse>
<a href="http://www.amazon.com/exec/obidos/ASIN/#ISBN#/naplesfreenet">
<img src="#image#" border=0 alt=""></a>
</cfif>


</td>
<td>
<font size="-1" face="Verdana">
<font size="+1" color="##CAFFCA"">
<b>#Title#</b></font><br>
by <b>#Author#</b><br>
<i>#Notes#</i><br>
<p align="right">
<a href="http://www.amazon.com/exec/obidos/ASIN/#ISBN#/naplesfreenet">order</a>
</p>



</font></td></tr>
</cfoutput>
</table>

<cfoutput query="foot">#code#</cfoutput>


</html>
