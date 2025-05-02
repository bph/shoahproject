<!--- Inserts data from the HTML form <catadd.cfm --->
<cfinsert datasource="books" tablename="categories" dbtype="ODBC">
 <!--- 
    uuuuh, careful, if CF tells you the form.variable cannot be found
    but it is referenced properly, maybe you just forgot the little 
    method=post in the form
  --->  

<font size="+1"><b>Catergory added:<br>

</b></font><p>

<cfoutput>
#form.catname#
#form.cattitle#
</cfoutput>


</html>
