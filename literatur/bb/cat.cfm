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
        <a href="http://www.amazon.com/exec/obidos/redirect-home/shoahproject05">#title#</a>
        <cfelse>
         <a href="http://www.amazon.com/exec/obidos/ASIN/#ISBN#/shoahproject05">
        #title#</a>
        </cfif>
        
       
        </b></font><br>
        <i>by #author#</i><p>
        </tr><tr>

 
        <td>
        <font size="-1" face="Verdana">#Paragraphformat(notes)#
        </font>
        <p align="right">
        <a href="http://www.amazon.de/exec/obidos/ASIN/#ISBN#/shoahproject">order</a>
        </p>
        </font>
        </td>
        <td>
    
      <font size="-1" face="Verdana">  <cfif #image# EQ "">
        <a href="http://www.amazon.de/exec/obidos/ASIN/#ISBN#/shoaproject">
        <img src="images/edup.gif" width=50 height=50 border=0 alt=""></a>
        
        <cfelse>
        <a href="http://www.amazon.de/exec/obidos/ASIN/#ISBN#/shoaproject">
        <img src="images/#image#" border=0 alt="cover"></a>
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
