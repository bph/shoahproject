<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<cfquery name="draws" datasource="lotto" dbtype="ODBC">
Select *
from draws
Order by drawdate desc
</cfquery>
<!--- 
==============================================================
test of using a date, oming from a form and will be compared to a date in the database

database
numbers.mdb = lotto
            tables: draws, towins

varibales:

form.wishdate = parsed into variables.wishdate

 --->
<cfif IsDefined ("URL.drawid")>
<cfquery name="wishdate" datasource="lotto" dbtype="ODBC">
SELECT      *
FROM         draws 
WHERE       drawid = #URL.drawid#
</cfquery> 


<cfelse>
<html>
<head>
	<title>Untitled</title>
</head>
<body>
irgend was brauch ich schon:-))
<form action="draws.cfm" method="post">
Enter a date: <input type="text" name="wishdate">
<input type="hidden" name="wishdate_date" value="please enter date as: mm/dd/yy">
<br> and hit [ENTER]
</form>
oder:

<cfoutput query="draws">
<a href="draws.cfm?drawid=#drawid#">#DateFormat(drawdate, 'mmmm dd, yyyy')#</a><br>
</cfoutput>


<cfabort>

</cfif>
 
<!--- <cfset wishdate=ParseDateTime(form.wishdate)> --->
<cfquery name="draws" datasource="lotto" dbtype="ODBC">
Select *
from draws
Order by drawdate desc
</cfquery>


<!--- <cfquery name="wishdate" datasource="lotto" dbtype="ODBC">
SELECT      *
FROM         draws 
WHERE       drawdate = #form.wishdate# </cfquery>  
<hr>

<cfquery name="test2" datasource="lotto" dbtype="ODBC">
SELECT 
count(*) AS hits
FROM         draws 
WHERE       drawdate = #form.wishdate#
</cfquery> --->


<!--- <cfoutput query="test2"> (#hits#)</cfoutput><p>

<!--- <cfset hits = #test2.hits#> --->

<!--- <cfif test2.hits eq 0>
da war keine Ziehung!
(what about a list to choos from?)
<cfoutput query="draws">
<a href="draws.cfm?drawid=#drawid#">#DateFormat(drawdate, 'mmmm dd, yyyy')#</a><br>
</cfoutput>
<cfelse>
treffer! da war eine Ziehung!
hten we could display those numbers, couldn't we?
</cfif> --->
<!--- <cfelse>
Sorry, no drawing in this day....

</cfif>  --->                                          

<!--- <cfoutput> 
geformtesdatum:#Dateformat(form.wishdate, 'mmmm dd,yy')#<p>
<!--- geparstes datum :#Dateformat(variables.wishdate, 'mmmm dd,yy')# --->

</cfoutput>  --->

 
The numbers of the drawing on  
<cfoutput query="wishdate">#DateFormat(drawdate, 'mmmm dd, yyyy')#


have been:
<p>



[#do1#] [#do2#] [#do3#] [#do4#] [#do5#] [#do6#]<p>
</cfoutput>
<!--- 
<cfelse>
<cfoutput query="wishdate">
Sorry, there wasn't a drawing on <cfoutput>#DateFormat(form.wishdate, 'mmmm dd, yyyy')#
</cfoutput>!

</cfif>
 --->


</body>
</html>
