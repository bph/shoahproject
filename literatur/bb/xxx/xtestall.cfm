<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfquery name="all" datasource="books" dbtype="ODBC">
SELECT *
FROM books
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
<!--- 
        put in some other links here like
        table:html:linksaddcomm
        or
        table:html:linksmaintain
        or some individuell links for a particular page

 --->
<cfoutput query="linksaddcomm">#code#</cfoutput>


<cfoutput query="linksfoot">#code#</cfoutput>
<cfoutput query="contenthead">#code#</cfoutput>

<table>
        <cfoutput query="all">
        <tr>
        <td colspan="2" valign="top">
        <font size="-1" face="Verdana">
        <font size="+1"><b>
        <a href="http://www.amazon.com/exec/obidos/ASIN/#ISBN#/naplesfreenet">
        #title#</a>
        </b></font><br>
        <i>by #author#</i><p>
        </tr><tr>
        <td>
        <font size="-1" face="Verdana">#notes#
        </font>
        <p align="right">
        <a href="http://www.amazon.com/exec/obidos/ASIN/#ISBN#/naplesfreenet">order</a>
        </p>
        </font>
        </td>
        <td><cfif #image# EQ "">
        <a href="http://www.amazon.com/exec/obidos/ASIN/#ISBN#/naplesfreenet">
        <img src="edup.gif" width=50 height=50 border=0 alt="" align="right"></a>
        
        <cfelse>
        <a href="http://www.amazon.com/exec/obidos/ASIN/#ISBN#/naplesfreenet">
        <img src="#image#" border=0 alt="cover" align="right"></a>
        </cfif></td>
        
        </tr>
        </cfoutput>
        </table>

<cfoutput query="contentfoot">#code#</cfoutput>



<cfoutput query="foot">#code#</cfoutput>


