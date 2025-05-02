<!--- 
      Query to create the links of our category based pages :cat.cfm 
      we need it later for the links-template (see table:html:linkhead)
--->
<cfquery name="cats" datasource="spbb" dbtype="ODBC">
SELECT * 
FROM categories
</cfquery>

<font size="-1" face="Verdana">
<hr noshade size=1>
<cfoutput query="cats">
<a href="cat.cfm?catname=#catname#">#cattitle#</a> | 
</cfoutput>
<hr noshade size=1>
</font><br>
<!--- end --->