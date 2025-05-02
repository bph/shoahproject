<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">


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
<html>

<cfoutput query="head">#code#</cfoutput>
<cfoutput query="linkshead">#code#</cfoutput>

<cfinclude template="catname.cfm">
 
<cfoutput query="linksaddcomm">#code#</cfoutput>

<cfoutput query="linksfoot">#code#</cfoutput>
<cfoutput query="contenthead">#code#</cfoutput>
<!--- We now look it we already have some variables form the feedback form:
 --->
 <cfif IsDefined ("form.comment")>
<!--- That's what we basically do on this page: sending out the comments we get:-))
        to: birgit@naples.net
                Birgit Pauli-Haack maintains the page right now.
                this hard coded mailto address has to be changed when reponsabilities for this site change.
        from: is the varible email form the form, what ever the user fills in with be put here.
        subject: is hard coded.
        the message itself is withing the <cfmail> </cfmail> and comes form the 'comment' textaera field 
        
 --->
<cfmail to="birgit@naples.net" 
        from="#form.email#" 
        subject="Feedback - NFN Book Review"
        >
        #form.comment#</cfmail>
              
<cfoutput>
<font size="+0">Thank you very much for your feedback!<p>
Your message:<p>
<font size="-1" color="##DBDBDB"><i>#form.comment#</i></font><p>
has been successfully sent.</font>
</cfoutput>

<cfelse>

<font size="+1">Please send us some feedback...</font>

<form action="feedback.cfm" method="post">
<table width="400"><tr>
<td>Your name:</td><td><input type="text" name="name"></td></tr>
<tr><td>Your email:</td><td><input type="text" name="email"></td></tr>
<tr><td colspan="2"><font color="#80FFFF">Comments, complaints or even compliments, all highly appreciated!</font><p>
<textarea cols=35 rows=6 name="comment" wrap="virtual"></textarea><p>

<input type="submit" name="send feedback">
</td></tr></table>


</form>
</cfif>
<cfoutput query="contentfoot">#code#</cfoutput>
<cfoutput query="foot">#code#</cfoutput>
