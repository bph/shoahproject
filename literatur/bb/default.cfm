<!--- 
--------------------------------------------------------------------------------
Shoah Project Buecher Datenbank Februar 2000
--------------------------------------------------------------------------------
database:   spbb

tables:     books
            categories
           

varibales:  today = now()
                    we display today's date in the first line
--------------------------------------------------------------------------------                                

This page is self generated with the latest entries in different categories
 --->
<cfinclude template="headspbb.cfm">
<!--- END: LAYOUT QUERIES --->
<cfquery name="bookscats" datasource="spbb" dbtype="ODBC">
SELECT  Books.BookID, 
        Books.Title, 
        Books.categories, 
        Books.Author, 
        Books.inname, 
        Books.inemail, 
        Books.image,
        Books.ISBN,
        Books.notes,
        categories.cattitle,
        categories.catname
        
FROM        Books, categories 
WHERE       Books.categories = categories.catname 
ORDER BY    categories.cattitle DESC, 
            Books.indate DESC

</cfquery>

        
<!--- END: Content Queries --->  
<html>

<!--- 
We start displaying some web page:-))
 --->
        <!--- display layout --->


        
        <cfinclude template="catname.cfm">
        

        
        

     
<cfoutput query="bookscats" startrow=1 maxrows=1>
<cfif #image# IS NOT "">
<div align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/#ISBN#/shoahproject05">
<img src="images/#image#" border=0 alt="cover"></a></div>
</cfif>
</cfoutput> 

        <!--- layout continues... --->



<!--- we love to have today's date in the first line: --->
<cfset today = now()>
<table border="0" cellspacing="0" cellpadding="5">
<tr>
   <td width="300" valign="top">
<!--- This is the complete middle column --->

       <font face="Verdana" color="#DBDBDB">
       <!--- First line: we show today's date: full month, day and four digit year --->
     <font size="+1"><b>B&uuml;cher & Rezensionen </b></font> </font>
</td>
        </tr>
<tr>
<td>
<font size="-1" face="Verdana">
<p align="right">zusammen mit <a href="http://www.amazon.com/exec/obidos/redirect-home/shoahproject05">amazon.de</a>&nbsp;<cfoutput><i>#DateFormat(today, 'dd.mm.yyyy')#</i></cfoutput></p> 
<table cellpadding="3"><tr><td >
<font size="-1" face="Verdana">Wir freuen uns ueber <a href="feedback.cfm">jeden Kommentar und Anregung</a> . Sicherlich koennen wir an diesem Service noch etwas verbessern.
</font>
</td></tr></table>
</td></tr>

   
       <tr>  
        <td valign="top"><font size="-1" face="Verdana">
<font size="+0"><b>Die neusten Rezensionen und Eintraege:</b></font><br>
<cfoutput query="bookscats" group="cattitle">

  
       <font face="Verdana" color="##FF8080">
       #cattitle#<br></font>
  
       <cfoutput group="cattitle" maxrows=1>
        <font face="Verdana" size="-1">
        <a href="cat.cfm?catname=#catname#">#Title#</a><br>
        by <i>#Author#</i>     
         #Left(notes, 100)#...
       <p align="right">
      <a href="cat.cfm?catname=#catname#">...read more</a> 
               <cfif #inname# IS NOT "">
        by 
       
             <cfif #inemail# IS NOT "">
            <a href="mailto:#inemail#"><i>#inname#</i></a>
            <cfelse>

        <i>#inname#</i>
        </cfif>
        </cfif></p>
  
        </font>
        </cfoutput>
     </cfoutput>
</td>
    </tr>
       
           <tr>  
        
</tr>
</table>
         <!--- Last set of Layout --->
    
<!--- EOF --->
<cfinclude template="footspbb.cfm">