
<!--- 
        maintain and display the categories for the NFN Book Review
            CF WACK, Forta, page 291 ff
 --->
 
 <!--- we look if catid is provided i.e. via an URL...
        If not we will handle the file request as an adding to the database
        the form fields to update the database will be empty.
        If yes we will handle it as a change procedure and the form fields
        will be filled with the database content.
                
 --->
<cfif IsDefined ("catid")>
<CFset NewRecord = "no">
<cfelse>
<CFset NewRecord = "yes">
</cfif>

<cfif NewRecord IS "yes">

<!--- The form will be empty --->    

    <cfset PageTitle = "Add a Category">
    <cfset ButtonText = "add category">
    <cfset catid      = " ">
    <cfset catname    = " ">
    <cfset cattitle   = " ">
    <cfset catexpert  = " ">
    <cfset catexemail = " ">
    
<cfelse>
<!--- the form will be filled --->
    <cfquery name="category" datasource="spbb" dbtype="ODBC">
    Select 
           catid, 
           catname, 
           cattitle,
           catexpert,
           catexemail
    From categories
    Where catid = #catid#
    </cfquery>
    
  
    <cfset PageTitle = "Update the category: <i>" & category.cattitle & "</i>!">
    <cfset buttontext = "update category">
    <cfset catid      = trim(category.catid)>
    <cfset catname    = trim(category.catname)>
    <cfset cattitle   = trim(category.cattitle)>
    <cfset catexpert  = trim(category.catexpert)>
    <cfset catexemail = trim(category.catexemail)>
</cfif>


<!--- Here comes the layout! --->

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
                        
                        <cfinclude template="catname.cfm">
                         
                        <cfoutput query="linksaddcomm">#code#</cfoutput>
                        <cfoutput query="linksmaintain">#code#</cfoutput>
                        
                        <cfoutput query="linksfoot">#code#</cfoutput>
                        <cfoutput query="contenthead">#code#</cfoutput>

<!--- Now we define the output with those variables we gain by <cfset> --->
<cfoutput>

<!--- the page title will be different... --->
<h2>#PageTitle#</h2>

<form action="catupd.cfm" method="post">


<!--- 
        the moment we want to update a record 
        we have to give the id to the nextpage, too 
--->

<cfif NewRecord IS "no">
<input type="hidden" name="catid" value="#catid#">
</cfif>
<p>

<!---
    Now comes the form filled with the variables: 
    either empty (" ") 
    or with the content
--->
<table>
<!--- <tr><td>catid:</td><td><input type="text" name="catid" value="#catid#" size="4" maxlength="4"></td></tr> --->
<tr><td>catname:</td><td><input type="text" name="catname" value="#catname#" size="10" maxlength="10"></td></tr>
<tr><td>cattitle:</td><td><input type="text" name="cattitle" value="#cattitle#" size="50" maxlength="50"></td></tr>
<tr><td colspan="2"><hr>
<font size="-1" face="Verdana">this field will be needed in the future if we might restrict access to each category only for the expert.
</font>
</td></tr>
<tr><td>catexpert:</td><td><input type="text" name="catexpert" value="#catexpert#" size="20" maxlength="20"></td></tr>
<tr><td>catexemail:</td><td><input type="text" name="catexemail" value="#catexemail#" size="20" maxlength="20"></td></tr>
<tr><td colspan="2"><hr></td></tr>
</table>
<p>
<input type="submit" value="#ButtonText#">&nbsp;&nbsp;&nbsp;<input type="reset" value="clear">


</form>

</cfoutput>

  <cfoutput query="foot">#code#</cfoutput> 