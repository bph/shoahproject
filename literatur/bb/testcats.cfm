<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>
<cfquery name="bookscats" datasource="spbb" dbtype="ODBC">
SELECT  Books.BookID, 
        Books.Title, 
        Books.categories, 
        Books.Author, 
        Books.inname, 
        Books.inemail, 
        categories.cattitle,
        categories.catname
        
FROM        Books, categories 
WHERE       Books.categories = categories.catname

ORDER BY    categories.cattitle, 
            Books.indate DESC

</cfquery>
<cfoutput query="bookscats" group="cattitle">
<cfif catname IS "members">
Categorie is member
<a href="book.cfm?bookid=#bookid#"><i>#cattitle#</i></a><p>
<cfelseif catname IS "pickweek">
This is pickweek:-))
<cfoutput group="cattitle" maxrows=1>
<a href="book.cfm?bookid=#bookid#"><i>#cattitle#</i></a>
#title#<br>
<i>#author#</i><br>
#inname#<p>
</cfoutput>
<br>
</cfif>
</cfoutput>


</body>
</html>
