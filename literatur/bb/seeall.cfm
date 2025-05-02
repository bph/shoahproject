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
                <!--- special cat.cfm links!
                      with the if command it is possible to show in 
                      bold which of the categories is in display. 
                      there is also no link behind and it is indent and in italic
                        --->
                
                <cfoutput query="cats">
                <tt><a href="cat.cfm?catname=#catname#">#cattitle#</a></tt><br>
                </cfoutput>
                <hr noshade>
                
                <cfoutput query="linksaddcomm">#code#</cfoutput>
                <cfoutput query="linksmaintain">#code#</cfoutput>
                <cfoutput query="linksfoot">#code#</cfoutput>
                
                <cfoutput query="contenthead">#code#</cfoutput>
<!--- content column headline --->


<font size="+1"><b>List of all books</b></font>
<p>
<cfquery name="bookscats" datasource="spbb" dbtype="ODBC">
SELECT      Bookd.bookid,
            Books.Title, 
            Books.Notes, 
            Books.Author, 
            Books.inname,
            Books.inemail,
            Books.categories,
            categories.cattitle, 
            categories.catname
FROM        Books, categories 
WHERE       Books.categories = categories.catname

ORDER BY    books.indate DESC
</cfquery>


<!--- <cfquery name="all" datasource="spbb" dbtype="ODBC">
SELECT *
FROM books
ORDER BY categories
</cfquery> --->
     <cfoutput query="bookcats" group="categories">
        <font size="+0" color="##FF8080"><b>#cattitle#</b></font>
<table> 
   
        <cfoutput group="categories" maxrows=1>
        <tr>
        <td colspan="2" valign="top">
      
        <font size="-1" face="Verdana">
        <b>
        <a href="book.cfm?bookid=#bookid#">
        #title#</a>
        </b><br>
        <i>by #author#</i><p></td>
       <td>
        <font size="-1" face="Verdana">
        <a href="test.cfm?BookID=#BookId#">[update]</a>
        </font>
        </td>
    <!--- later we can make a check if there is an entry 
    in the image field and if the file is indeed available. --->
        
        </tr>
        </cfoutput>
        </table>
</cfoutput>
<!--- end of content --->


<!--- end: content table cell --->
<cfoutput query="contentfoot">#code#</cfoutput>



<cfoutput query="foot">#code#</cfoutput>
