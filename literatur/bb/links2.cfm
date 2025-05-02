<!-- Links column comes after 'head'.-->

<a href="http://www.amazon.com/exec/obidos/redirect-home/naplesfreenet">
<img src="90X29-b-logo.gif" width=90 height=29 alt="amazon.com" border="0"></a><p>
<!--- 
    Automatically generated links from the table:categories 
    with which the table:books is connected. 
    categories:catname = books:categories
    -   looks up and put out the list of categories 
        find in table:categories
    -   hands over the variable'catname' to the file cattest.cfm
        which will form a list of books with the category found in catname.
    Both files:links2.cfm and cattest.cfm handle the heart of the site.
    Containing default2.cfm = not yet altered (12/17)
    links2.cfm = contains dynamic and static links
                 dynamically generated links to categories
                 statically links to site management pages
    cattest.cfm = creates list of books for each categories 
                  coming via URL.variables from links2.cfm
    
--->    
<cfquery name="cats" datasource="spbb" dbtype="ODBC">
SELECT * 
FROM categories

</cfquery>
<hr noshade>
<font size="-1" face="Verdana">

<cfoutput query="cats">
<a href="cattest.cfm?catname=#catname#">#cattitle#</a><p>
</cfoutput>
<!--- static links, should be checked once in a while:-)) --->
<a href="default2.cfm">[home]</a><br>
<a href="insert2.cfm">enter new data</a>

<hr noshade>

<table>
<cfoutput query="cats"><tr><td>#catid#</td><td>#catname#</td><td>#cattitle#</td></tr></cfoutput></table>


</font>
