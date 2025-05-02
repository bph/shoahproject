<!--- this is somehow the heart of the application:

 --->

<!--- Query to create the links of our category based pages :cattest.cfm --->
<cfquery name="cats" datasource="spbb" dbtype="ODBC">
SELECT * 
FROM categories
</cfquery>


<cfquery name="cattitle" datasource="spbb" dbtype="ODBC">
SELECT *
FROM categories
WHERE catname = '#URL.catname#'

</cfquery>


<cfquery name="catname" datasource="spbb" dbtype="ODBC">
SELECT *
FROM books
WHERE categories = '#URL.catname#'
ORDER BY indate DESC
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
<!--- special cat.cfm links!
      with the if command it is possible to show in 
      bold which of the categories is in display. 
      there is also no link behind and it is indent and in italic
        --->

<cfoutput query="cats">
<cfif #URL.catname# IS catname>
<i><b>#cattitle#</b></i><br>
<cfelse>
<tt><a href="cat.cfm?catname=#catname#">#cattitle#</a></tt><br>
</cfif>
</cfoutput>
<hr noshade>


<cfif #URL.catname# EQ "members">
<font size="+0">What book are you reading right now?</font>
<cfelse>
<a href="add.cfm?catname=<cfoutput>#URL.catname#</cfoutput>">

<tt><font size="+0">Add books</a> 
about &quot;<cfoutput query="cattitle">#cattitle#</cfoutput>&quot;
</font></tt>

</cfif>

<cfoutput query="linksaddcomm">#code#</cfoutput>

<cfoutput query="linksfoot">#code#</cfoutput>

<cfoutput query="contenthead">#code#</cfoutput>
<!--- content column headline --->


<cfoutput query="cats">
<cfif #URL.catname# IS catname>
<font size="+1" color="##FF8080"><b>#cattitle#</b></font><br>
<cfelse>
</cfif>
</cfoutput>

<table>

<cfoutput query="catname">
        
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
        </font>
        <p align="right">
        <a href="http://www.amazon.com/exec/obidos/ASIN/#ISBN#/naplesfreenet">order</a>
        </p>
        </font>
        </td>
        <td>
    
      <font size="-1" face="Verdana">      <!--- display image with the review:
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
        <img src="images/#image#" border=0 alt="cover"></a>
        
<!---         <cfelse>
         <a href="http://www.amazon.com/exec/obidos/ASIN/#ISBN#/naplesfreenet">
        <img src="images/edup.gif" width=50 height=50 border=0 alt="" align="right"></a> --->
        </cfif>
        <br>
        <cfif #inname# IS NOT "">
       <i> Reviewed by:<br>
       
             <cfif #inemail# IS NOT "">
            <a href="mailto:#inemail#"><i>#inname#</i></a>
            <cfelse>

        <i>#inname#</i>
        </cfif>
        </cfif>
        <br>
</font>
        </td>
       
        </tr>
        </cfoutput>
        </table>

      
<!--- end of content --->


<!--- end: content table cell --->
<cfoutput query="contentfoot">#code#</cfoutput>



<cfoutput query="foot">#code#</cfoutput>
