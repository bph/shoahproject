    <!--- Inserts data from the HTML form <insert --->
    <cfinsert datasource="books" tablename="books" dbtype="ODBC">
    <!--- that wasn't really complicated, was it? --->
<cfquery name="head" datasource="books" dbtype="ODBC">
Select code FROM html WHERE name='head'
</cfquery>

<cfquery name="links" datasource="books" dbtype="ODBC">
Select code FROM html WHERE Name='links'
</cfquery>

<cfquery name="foot" datasource="books" dbtype="ODBC">
Select code FROM html WHERE Name='foot'
</cfquery>
<html>

<cfoutput query="head">#code#</cfoutput>
<cfoutput query="links">#code#</cfoutput>


<font size="+1"><b>Thanks you very much!</b></font><p>
Your book tip is already online:<br>
<cfoutput>
<a href="http://www.amazon.com/exec/obidos/ASIN/#form.ISBN#/naplesfreenet">#form.title#</a><br>
by #form.author#<p>
<i>#form.notes#</i>

</cfoutput>


<cfoutput query="foot">#code#</cfoutput>
&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>
&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>


</html>
