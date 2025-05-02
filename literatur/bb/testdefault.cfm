<!--- 
--------------------------------------------------------------------------------
Naples Free Net Book Review DEC 1999 birgit@naples.net
--------------------------------------------------------------------------------
database:   books

tables:     books
            categories
            html

varibales:  today = now()
                    we display today's date in the first line
--------------------------------------------------------------------------------                                

This page is self generated with the latest entries in different categories
 --->

<!--- Start: LAYOUT QUERIES --->
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

        <cfoutput query="head">#code#</cfoutput>
        <cfoutput query="linkshead">#code#</cfoutput>
        
        <cfinclude template="catname.cfm">
        
        <cfoutput query="linksaddcomm">#code#</cfoutput>
        
        

        
<cfoutput query="bookscats" startrow=1 maxrows=1>
<cfif #image# IS NOT "">
<div align="center"><a href="http://www.amazon.com/exec/obidos/ASIN/#ISBN#/naplesfreenet">
<img src="images/#image#" border=0 alt="cover"></a></div>
</cfif>
</cfoutput>

        <!--- layout continues... --->
        <cfoutput query="linksfoot">#code#</cfoutput>
        <cfoutput query="contenthead">#code#</cfoutput>


<!--- we love to have today's date in the first line: --->
<cfset today = now()>
<table border="0" cellspacing="0" cellpadding="5">
<tr>
   <td width="300" valign="top" bgcolor="#333366">
<!--- This is the complete middle column --->

       <font face="Verdana" color="#FF8080">
       <!--- First line: we show today's date: full month, day and four digit year --->
      NEWS    <cfoutput>#DateFormat(today, 'mmmm dd, yyyy')#</cfoutput></font>
        </td>
        </tr>
<!---  --->
	<CFFORM ACTION="results.cfm">
		<TR>
		    <TD>
				<font size="-1" face="Verdana">		
						<b>Search:</b>
						<SELECT NAME="mode">
						<OPTION VALUE="search_books" SELECTED>Books
						<OPTION VALUE="search_music">Popular Music
						<OPTION VALUE="search_video">Video
						<OPTION VALUE="search_dvd">DVD
						<OPTION VALUE="search_isbn">by ISBN
						</SELECT>
						<B>for</B>
						<CFINPUT TYPE="text" NAME="keyword" SIZE=15 VALUE="" REQUIRED="Yes" MESSAGE="In order to search, you must enter a search criteria.">
						<INPUT TYPE=hidden NAME=tag VALUE="naplesfreenet">
						<INPUT TYPE="submit" NAME="SUBMIT_ACTION" VALUE="Go">	
</font>
		
			
			</TD>
		</TR>
		</CFFORM>
<!---  --->
<tr>
<td>
<font size="-1" face="Verdana">
<p align="right">Founded in association with <a href="http://www.amazon.com/exec/obidos/redirect-home/naplesfreenet">amazon.com</a></p> 
<table cellpadding="3"><tr><td bgcolor="#400040">
<font size="-1" face="Verdana">Share your <a href="add.cfm">your reading recommendations</a> with the Naples Free-Net Members and other visitors of our site!
</font>
</td><td bgcolor="#004040">
<font size="-1" face="Verdana"> Or leave us a <a href="feedback.cfm">note with your opinion</a> about our new service and your ideas. We are sure, we can improve this book review site with your help.
</font>
</td></tr></table>
</td></tr>
<tr><td bgcolor="#000000"><font face="arial" size="+1"><A HREF="results.cfm?mode=top_books&limit=25">Top 25 <b>Best selling books</b></A></font></td></tr>
   
       <tr>  
        <td valign="top"><font size="-1" face="Verdana">
<font size="+1"><b>Or just look at our newest reviews!</b></font><br>
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
        <td align="right">
<!--- this is the the searchbox of Amazon.com --->
<!--- Start: Do not change, under not circumstances! --->        
<!--books browse box-->
            <form method="get" action="http://www.amazon.com/exec/obidos/redirect">
            <input type=hidden name=tag value=naplesfreenet>
            <table border="0" cellspacing="0" cellpadding="2">
            <tr>
            <td colspan="2" height="20" valign="bottom" align="center" valign="middle" bgcolor="#000000">
            <a href="http://www.amazon.com/exec/obidos/redirect-home/naplesfreenet"><img src="images/logo-150x20.gif" border="0"
            width="150" height="20" align="center" valign="middle"></a>
            </td>
            </tr>
            <tr>
            <td colspan="2" height="50" valign="bottom" align="center" bgcolor="#33CC66">
            <img src="images/find-books-now-148x50.gif" border="0" width="148" height="50" align="center">
            </td>
            </tr>
            <tr>
            <td bgcolor="#33CC66" align="left">
            <font size="-1">
            <select name="path">
            <option value="ts/browse-books/1">Art & Architecture
            <option value="ts/browse-books/44">Audiobooks
            <option value="subst/lists/best/bestsellers.html">Bestsellers
            <option value="ts/browse-books/45">Bargains
            <option value="ts/browse-books/2">Biographies
            <option value="ts/browse-books/3" selected>Business
            <option value="ts/browse-books/4">Children's
            <option value="ts/browse-books/12290">Christian
            <option value="subst/books/computers/computers.html">Computers
            <option value="ts/browse-books/6">Cooking
            <option value="ts/browse-books/86">Entertainment
            <option value="ts/browse-books/25">Fantasy
            <option value="ts/browse-books/17">Fiction
            <option value="ts/browse-books/10">Health/Mind/Body
            <option value="ts/browse-books/9">History
            <option value="ts/browse-books/48">Home & Garden
            <option value="ts/browse-books/49">Horror
            <option value="ts/browse-books/18">Mysteries
            <option value="ts/browse-books/53">Nonfiction
            <option value="ts/browse-books/20">Parenting
            <option value="ts/browse-books/173507">Professional & Technical
            <option value="ts/browse-books/21">Reference
            <option value="ts/browse-books/22">Religion
            <option value="ts/browse-books/23">Romance
            <option value="ts/browse-books/75">Science & Nature
            <option value="ts/browse-books/25">Sci-Fi & Fantasy
            <option value="ts/browse-books/1622">Sheet Music
            <option value="ts/browse-books/26">Sports
            <option value="ts/browse-books/27">Travel
            <option value="ts/browse-books/28">Teens
            </select>
            </font>
            </td>
            <td bgcolor="#33CC66" align="right"><font size="-1"><input type="submit" value="Go!" border="0"></font></td></tr>
            </table>
            </form>
            <!--end books browse box -->
            <!--- END: Do not change, under not circumstances! --->
</td>
</tr>
</table>
         <!--- Last set of Layout --->
        <cfoutput query="contentfoot">#code#</cfoutput>
        <cfoutput query="foot">#code#</cfoutput>
<!--- EOF --->
