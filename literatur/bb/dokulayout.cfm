        <!--- 
        We construct the layout of the NFN Book Review
        ===============================================
        Datacource = books 
        table = html
        
            html:head
                       
            html:linkshead
               include <catname.cfm>            
                    these are optional:
                   html:linksaddcomm
                  html:linksmaintain
            
            html:linksfoot
            
            html:contenthead
                Here comes whatever content    
            html:contentfoot
            
            html:foot
            
          --->
          <!--- Queries to get the htmlcode for all layout parts --->  
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
<!--- Give the head of the page including title, body and starting table tags. --->

<cfoutput query="linkshead">#code#</cfoutput>
<!--- gives the start of the left table colum with all the links and navigation 
        file <catname.cfm> shouldn;t be forgotten!
--->


<cfinclude template="catname.cfm">
<!--- This second template  --->


<!--- 
        put in some other links here like
        table:html:linksaddcomm
        or
        table:html:linksmaintain
        or some individuell links for a particular page

 --->


 
<cfoutput query="linksaddcomm">#code#</cfoutput>
<cfoutput query="linksmaintain">#code#</cfoutput>

<!--- linksfoot
        I know it looks akward, but I wanted to separate 
        the endtags of this particular table cell so 
        you can use the links template in combination 
        with individuell content together in one column.
        
        So this linksfoot shouldn;t go alone at all. 
        The accompanying parent is at least table:html:linkshead
         --->
<!--- </font>
</td> --->
<!--- end linksfoot 
        should be followed by contenthead
--->

<cfoutput query="linksfoot">#code#</cfoutput>

<!--- contenthead
      Start: content table cell 
      including standard font tag
      --->
      
<cfoutput query="contenthead">#code#</cfoutput>
<h1>We test it!</h1>
<!--- put here the content of a new page --->

<!--- contentfoot
      not without contenthead
      should be followed by table:html:foot

--->

<cfoutput query="contentfoot">#code#</cfoutput>
<!--- this is the footer html code  --->

<!--- the open font-tag, 
      as well as these breaks and nonbreakingspaces are only there 
      to hide the ColdFusion debugger display.
 --->

<cfoutput query="foot">#code#</cfoutput>


