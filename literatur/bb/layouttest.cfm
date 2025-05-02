<!--- Head from the very top  ---> 
<html>
<!--- 
      Query to create the links of our category based pages :cattest.cfm 
      we nee it later for the links-template (see table:html:linkhead)
--->
<cfquery name="cats" datasource="spbb" dbtype="ODBC">
SELECT * 
FROM categories
</cfquery>

<head>
<title>NFN Book Review</title>
</head>
<body bgcolor="#000040" text="#FFFFFF" link="#80FFFF" vlink="#9EF5D2">

<!--- we need this line to get some distance to the main frame --->
<table><tr><td><br></td></tr></table><p>
<!--- end distance line --->

<div align="center">
<table width="600" border="0" cellspacing="2" cellpadding="5">
<tr>
<td colspan="2" align="right" valign="top">
<a href="default2.cfm">
<font face="Verdana" size="+2"><b>The Naples Free-Net Book Review</b></font></a>
</font>
</td>
</tr>
<!--- End of head --->

<!--- start: linkshead 
      
      for all pages except cattest.cfm
      don't forget to put in the end linkshead (table:html:linksfoot), too!
      
      --->
<tr>
<!--- linkscolunm  rowspan = 2 it goes all the way down... --->
<td width="151" valign="top" bgcolor="#333366">
<font size="-1" face="Verdana">
<font face="Verdana" color="#FF8080">
<b>The NFN Picks</b>
</font>
<hr noshade>

<!--- link to the category based pages: cattest.cfm --->
<cfinclude template="catname.cfm">

<!--- end linkshead --->

<!--- static links, should be checked once in a while:-)) --->
<a href="members.cfm">add your favorite book</a> as well!<p>

<a href="comment.cfm">send us your comment</a> <br>about the NFN Book Review</p>
<hr noshade>
<a href="testall.cfm">see all books</a><br>
<a href="addcat.cfm">Add Categories</a><br>
<a href="insert2.cfm">Add books</a><br>
<hr noshade>
<!--- linksfoot
        I know it looks akward, but I wanted to separate 
        the endtags of this particular table cell so 
        you can use the links template in combination 
        with individuell content together in one column.
        
        So this linksfoot shouldn;t go alone at all. 
        The accompanying parent is at least table:html:linkshead
         --->
</font>
</td>
<!--- end linksfoot 
        should be followed by contenthead
--->

<!--- contenthead
      Start: content table cell 
      including standard font tag
      is to be followed by table:html:contentfoot
      --->
<td width="449" valign="top">
<font size="-1" face="Verdana">
<!--- end of start --->


<!--- Content comes here! --->



Welcome to our new service: the Naples Free-Net Book Review!<br>
Especially during the Holiday Season this service provides you with some book recommendations of the Naples Free-Net officers.
Support the Naples Free-Net with our online book order with amazon.com at no additional costs and with a surprisingly good 
delivery service from the &quot;Earth's biggest store&quot;.
<p>&nbsp;<p>&nbsp;<p>&nbsp;<p>&nbsp;<p>&nbsp;


<!--- end of content --->

<!--- contentfoot
      not without contenthead
      should be followed by table:html:foot

--->
</font>
</td></tr>
<!--- end contentfoot --->


<!--- this is the footer html code  --->
<tr><td colspan="2"><hr></td></tr>
<tr>
<td align="left">
<a href="http://www.amazon.com/exec/obidos/redirect-home/naplesfreenet"><img src="90X29-b-logo.gif" width=90 height=29 alt="amazon.com" border="0"></a></td>
<td align="right">
<font size="-2"><a href="maintain.cfm">maintained</a> by <br>
<a href="mailto:birgit@naples.net">birgit@naples.net</a></font>
</p>
</font>
</td>
</tr>
</table>

</body>
<!--- the open font-tag, 
      as well as these breaks and nonbreakingspaces are only there 
      to hide the ColdFusion debugger display.
 --->
<font color="#000040">
&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>
&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>&nbsp;<br>
</html>
<!--- end of footer  --->