<!--- Query to create the links of our category based pages :cattest.cfm --->
<cfquery name="cats" datasource="books" dbtype="ODBC">
SELECT * 
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
<!--- special cat.cfm links!
      with the if command it is possible to show in 
      bold which of the categories is in display. 
      there is also no link behind and it is indent and in italic
        --->

<cfoutput query="cats">
<cfif #URL.catname# EQ " ">
<tt><a href="cat.cfm?catname=#catname#">#cattitle#</a></tt><br>
<cfelse>
<i><b>#cattitle#</b></i><br>
</cfif>
</cfoutput>
<hr noshade>

<cfoutput query="linksaddcomm">#code#</cfoutput>

<cfoutput query="linksfoot">#code#</cfoutput>

<cfoutput query="contenthead">#code#</cfoutput>
<!--- content column headline --->


<cfoutput query="cats">
<cfif #URL.catname# IS " ">
<font size="+1"><b>List of all books</b></font>
<cfelse>
<font size="+1"><b>#cattitle#</b></font><br>
</cfif>
</cfoutput>






<cfif #URL.name# IS " ">
    <cfquery name="all" datasource="books" dbtype="ODBC">
SELECT *
FROM books
ORDER BY indate 
</cfquery>
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
<cfelse>
         <cfquery name="cats" datasource="books" dbtype="ODBC">
        SELECT *
        FROM books
        WHERE categories = '#URL.catname#'
        ORDER BY indate DSC
        </cfquery>
        
        <table>
        <cfoutput query="cats">
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
</cfif>         

<!--- end of content --->


<!--- end: content table cell --->
<cfoutput query="contentfoot">#code#</cfoutput>



<cfoutput query="foot">#code#</cfoutput>
