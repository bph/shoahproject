<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>
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
<body>
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


</body>
</html>
