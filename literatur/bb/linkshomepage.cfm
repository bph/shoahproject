<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>
<!--- linkscolunm  rowspan = 2 it goes all the way down... --->
<td width="151" rowspan="2" valign="top" bgcolor="#004040">
<font size="-1" face="Verdana">
<!--- link to the category based pages: cattest.cfm --->
<font face="Verdana" color="#FF8080">
<b>From the NFN Lists:</b>
</font>
<hr noshade>
<cfoutput query="cats">
<tt><a href="cattest.cfm?catname=#catname#">#cattitle#</a></tt><br>
</cfoutput>
<hr noshade>
<!--- static links, should be checked once in a while:-)) --->
<p align="right"><font size="+0"><font color="#FF0000">NEW: </font><br>See the NFN 
<b><a href="cattest.cfm?catname=members">Member's favorites!</a> </b><br>
and </font><br>
<a href="insert2.cfm">add your favorite book</a> as well!</p>
<hr noshade>
<a href="comment.cfm">send us your comment</a> <br>about the NFN Book Review<p>
<a href="http://hoosier.naples.net/bb/default.cfm">no frames please..</a>
</font>
</td>


</body>
</html>
