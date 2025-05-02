


<cfquery name="linksmaintain" datasource="spbb" dbtype="ODBC">
Select code FROM html WHERE Name='linksmaintain'
</cfquery>
<cfinclude template="headspbb.cfm">
<cfinclude template="catname.cfm">

<cfif #weiter# IS true>
<cfoutput query="linksmaintain">#code#</cfoutput>

</cfif>



<font size="+1"><b>Maintaining the Book Review</b></font><p>
<cfif #weiter# IS true>
Dear NFN Buddy:-))
<p>
It should be very easy to open your own corner in our virtual book community.
<p>
<a href="catedit.cfm">Create you own Category</a><p>
<a href="addbook.cfm">Add books</a><p>
<a href="bookmaint.cfm">change or delete books</a>




<p align="right"><font size="-2"><a href="htmlshow.cfm">&lt;/html&gt;</a><br>change<br> the<br> layout</font></p>
<cfelse>
<cfoutput>
<table width="300"><tr><td><font size="-1" face="Verdana"><font size="+1"><b>sorry, wrong password.</b></font><br>
<p align="right"> <a href="maintain.cfm">Try it again.</a></p>
Your comments are highly appreciated, so please 
<a href="mailto:birgit@naples.net">send Birgit an email
</font></a></td></tr></table>
</cfoutput>
</cfif>


<cfinclude template="footspbb.cfm">