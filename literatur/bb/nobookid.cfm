<!--- 
That happens when there is no bookid..
We give a list with links:
                link under 
                - #title # leads back to this file
                   where the user finds the [update] and/or [delete] functions accordingly.
                - [update] leads to <bookmaint.cfm> 
                - [delete] deletes the book accordingly

                
 --->

           
            
<font size="+1"><b>List of all books</b></font><br>
please choose the book in question...<p>

<table border="0" cellspacing="0" cellpadding="2"><cfoutput query="booklist">
<tr><td><font size="-1" face="Arial"><a href="book.cfm?bookid=#bookid#">#title#</a> by #author#</font></td>
<td bgcolor="##333366"><font size="-1" face="Arial"><a href="bookmaint.cfm?bookid=#bookid#">[update]</a></font></td>
<td>
<font size="-1" face="Arial">
&nbsp;
<a href="delbook.cfm?bookid=#bookid#">[delete]</a>
</font>
</td>
</tr>
</cfoutput>
</table>


             <!--- LAYOUT --->
         <cfoutput query="foot">#code#</cfoutput> 
