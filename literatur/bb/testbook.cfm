

<!--- Query to create the links of our category based pages :cattest.cfm --->
<cfquery name="cats" datasource="spbb" dbtype="ODBC">
SELECT * 
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
<!--- content column headline --->

<cfquery name="booklist" datasource="spbb" dbtype="ODBC">
SELECT categories, title, author, bookid
FROM books
ORDER BY categories
</cfquery>

<cfif IsDefined('URL.BookID') IS "No">
<cfinclude template=nobookid.cfm>
<CFABORT>
<!--- we abort any process --->
</cfif>


<cfquery name="single" datasource="spbb" dbtype="ODBC">
SELECT *
FROM books
Where Bookid = #URL.bookid#
</cfquery>

<table border="0" cellspacing="0" cellpadding="5">

        <tr bgcolor="#004080">
        <td>
        <cfoutput query="single">
        <font size="-1" face="Verdana"><i>#inname#</i>
</font>
        </td><td>
       <font size="-1" face="Verdana"> <i><a href="mailto:#inemail#">#inemail#</a></i>
</font>
        </td></tr>
    
        <tr>
        <td colspan="2" valign="top">
        <font size="-1" face="Verdana">
        <font size="+0"><b>
         <cfif #ISBN# EQ "">
        <a href="http://www.amazon.com/exec/obidos/redirect-home/naplesfreenet">#title#</a>
        <cfelse>
         <a href="http://www.amazon.com/exec/obidos/ASIN/#ISBN#/naplesfreenet">
        #title#</a>
        </cfif>
        
       
        </b></font><br>
        <i>by #author#</i><p>
        </tr><tr>

        <td>
        <font size="-1" face="Verdana">#Paragraphformat(notes)#
        
  <p align="right">#DateFormat(indate, 'mm/dd/yy')#<br>
<a href="bookmaint.cfm?bookid=#bookid#">  update</a></p>
    <a href="delbook.cfm?bookid=#bookid#">[delete]</a>

        </font>
        </td>
        <td>
        <!--- display image with the review:
                System changed with more knowledge:-))
                If there is an entry in column 'image' and the file exists
                the image will be displayed.
                If the column is empty we look the image up (referring to the ISBN number)
                at the amazon site...
                (hopefully the path doesn't change to often)
                All bets are off, we display a dummy file; edup.gif 
                
                thinking things further is appears that the field 'image' is obsolete because we just 
                crab the image from amazon.
                
                and we'll do that in the file 'cat.cfm', too
                --->
        <cfif FileExists(#image#)>
        <a href="http://www.amazon.com/exec/obidos/ASIN/#ISBN#/naplesfreenet">
        <img src="images/#image#" border=0 alt="cover" align="right"></a>
        
        <cfelseif #image# EQ "">
        <a href="http://www.amazon.com/exec/obidos/ASIN/#ISBN#/naplesfreenet">
        <img src="http://images.amazon.com/images/P/#ISBN#.01.MZZZZZZZ.gif" border=0></a>
        <cfelse>
         <a href="http://www.amazon.com/exec/obidos/ASIN/#ISBN#/naplesfreenet">
        <img src="images/edup.gif" width=50 height=50 border=0 alt="" align="right"></a>
        </cfif>
        </cfoutput>     
 
        
        </td>
       
        </tr>
        
        </table>


<!--- end of content --->


<!--- end: content table cell --->
<cfoutput query="contentfoot">#code#</cfoutput>



<cfoutput query="foot">#code#</cfoutput>
