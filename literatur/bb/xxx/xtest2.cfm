<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>
<cfquery name="allbooks" datasource="books" dbtype="ODBC">
SELECT *
FROM books
</cfquery>

<cfoutput query="allbooks">
<a href="test.cfm?BookID=#BookId#">#Bookid#</a>
Title: #title#<p>

</cfoutput>
</body>
</html>
