<!--- 
--------------------------------------------------------------------------------
Naples Free Net Book Review DEC 1999 birgit@naples.net
--------------------------------------------------------------------------------
database:   books

tables:     books
            categories
            html

CF_Amazon   Tag to show content from the amazon.com search with the links of the associate(naplesfreenet)

--------------------------------------------------------------------------------                                

This page is self generated with the latest entries in different categories
 --->

<!--- the following variables are required for the CF_AMAZON tag. --->
<CFPARAM NAME="mode" DEFAULT="top_books">
<CFPARAM NAME="keyword" DEFAULT="">
<CFPARAM NAME="tag" DEFAULT="shoahproject">
<CFPARAM NAME="limit" DEFAULT="10">

<CF_AMAZON
	mode="#mode#"
	tag="#tag#"
	keyword="#keyword#"
	limit="#limit#">



<!--- END: LAYOUT QUERIES --->
<cfquery name="bookscats" datasource="spbb" dbtype="ODBC">
SELECT  Books.BookID, 
        Books.Title, 
        Books.categories, 
        Books.Author, 
        Books.inname, 
        Books.inemail, 
        Books.image,
        Books.ISBN,
        Books.notes,
        categories.cattitle,
        categories.catname
        
FROM        Books, categories 
WHERE       Books.categories = categories.catname 
ORDER BY    categories.cattitle DESC, 
            Books.indate DESC

</cfquery>

        
<!--- END: Content Queries --->  
<html>

<!--- 
We start displaying some web page:-))
 --->
        <!--- display layout --->
        
        <font face="arial" size="-1">
        <b>Best selling Books:</b><br>
        <A HREF="results.cfm?mode=top_books&limit=25">Top 25</A> |<br>
       Fiction: <br>
        <A HREF="results.cfm?mode=top_hardcover_fiction&limit=25">Hard cover </A>|
        <A HREF="results.cfm?mode=top_paperback_fiction&limit=25">Paperback</A><br>
        Non-fiction: <br>
        <A HREF="results.cfm?mode=top_hardcover_nonfiction&limit=25">Hard cover</A> | 
        <A HREF="results.cfm?mode=top_paperback_nonfiction&limit=25">Paperback</A>
        
        </font>
        

        



<!--- we love to have today's date in the first line: --->
<cfset today = now()>
<table border="0" cellspacing="0" cellpadding="5">
<tr>
   <td width="300" valign="top" bgcolor="#333366">
<!--- This is the complete middle column --->

       <font face="Verdana" color="#FF8080">
       <!--- First line: we show today's date: full month, day and four digit year --->
      NEWS    <cfoutput>#DateFormat(today, 'mmmm dd, yyyy')#</cfoutput></font>
        </td>
        </tr>
<!---  --->
	<CFFORM ACTION="results.cfm">
		<TR>
		    <TD>
				<font size="-1" face="Verdana">		
						<b>Search:</b>
						<SELECT NAME="mode">
						<OPTION VALUE="search_books" SELECTED>Books
						<OPTION VALUE="search_music">Popular Music
						<OPTION VALUE="search_video">Video
						<OPTION VALUE="search_dvd">DVD
						<OPTION VALUE="search_isbn">by ISBN
						</SELECT>
						<B>for</B>
						<CFINPUT TYPE="text" NAME="keyword" SIZE=15 VALUE="" REQUIRED="Yes" MESSAGE="In order to search, you must enter a search criteria.">
						<INPUT TYPE=hidden NAME=tag VALUE="shoahproject">
						<INPUT TYPE="submit" NAME="SUBMIT_ACTION" VALUE="Go">	
</font>
		
			
			</TD>
		</TR>
		</CFFORM>
<!---  --->
		
		<table border="1" cellspacing="0" cellpadding="2">
		<TR>
			<TD>
				<font face="Verdana" size="+1"><B><CENTER>
				<CFIF #mode# eq "top_books">			Best Selling Books
				<CFELSEIF #mode# eq "top_music">			Best Selling Compact Discs
				<CFELSEIF #mode# eq "top_video">			Best Selling Videos
				<CFELSEIF #mode# eq "top_dvd">			Best Selling DVDs
				<CFELSEIF #mode# eq "top_hardcover_fiction">			Best Sellers in Hardcover Fiction
				<CFELSEIF #mode# eq "top_hardcover_nonfiction">			Best Sellers in Hardcover Non-Fiction
				<CFELSEIF #mode# eq "top_paperback_fiction">			Best Sellers in Paperback Fiction
				<CFELSEIF #mode# eq "top_paperback_nonfiction">			Best Sellers in Paperback Non-Fiction
				<CFELSEIF #mode# eq "new_vhs">			New VHS Releases
				<CFELSEIF #mode# eq "new_dvd">			New DVD Releases
				<CFELSEIF #mode# eq "coming_vhs">			Coming Soon on VHS
				<CFELSEIF #mode# eq "coming_dvd">			Coming Soon on DVD
				<CFELSEIF #mode# eq "reduced_vhs">			Recently Reduced on VHS
				<CFELSEIF #mode# eq "new_music">			New CD Releases
				<CFELSEIF #mode# eq "coming_music">			Coming Soon on CD
				<CFELSEIF #mode# eq "breakthrough_music">			Breakthrough Artists
				<CFELSE>			Search Results
				</CFIF>
				</CENTER></B></FONT>
			</TD>
		</TR>
		<TR>
			<TD>
				<font face="SANS SERIF,ARIAL,HELVETICA" size="-1">
				<TABLE WIDTH="100%" CELLSPACING="2" CELLPADDING="0">
				<TR>
					<TD VALIGN="top">
						<FONT FACE="SANS SERIF,ARIAL,HELVETICA" SIZE="2">
						&nbsp;
					</TD>
					<TD VALIGN="top">
						<FONT FACE="SANS SERIF,ARIAL,HELVETICA" SIZE="2">
						<B><U>Product</U></B>
					</TD>
					<TD VALIGN="top">
						<FONT FACE="SANS SERIF,ARIAL,HELVETICA" SIZE="2">
						<B><U>List</U></B>
					</TD>
					<TD VALIGN="top">
						<FONT FACE="SANS SERIF,ARIAL,HELVETICA" SIZE="2">
						<B><U>Price</U></B>
					</TD>
					<TD VALIGN="top">
						<FONT FACE="SANS SERIF,ARIAL,HELVETICA" SIZE="2">
						<B><U>Save</U></B>
					</TD>
				</TR>
				<CFSET Counter = 0>
				<CFOUTPUT Query="SearchResults">
				<CFSET Counter = Counter + 1>
				<TR>
					<TD VALIGN="top">
						<FONT FACE="SANS SERIF,ARIAL,HELVETICA" SIZE="2">
						#Counter#.
					</TD>
					<TD VALIGN="top">
						<font face="SANS SERIF,ARIAL,HELVETICA" size="-1">
						<A HREF="http://www.amazon.de/exec/obidos/ASIN/#ASIN#/#tag#">#Title#</A>
						<CFIF #Trim(Author)# neq ""><BR><I>by #Author#</I></CFIF>
					</TD>
					<CFIF STATUS eq 1 OR STATUS eq 2 OR STATUS eq 5>
						<TD VALIGN="top" COLSPAN="3">
							<FONT FACE="SANS SERIF,ARIAL,HELVETICA" SIZE="2">
							<CFIF STATUS eq 1>
								<I>Publisher out of stock.</I>
							<CFELSEIF STATUS eq 2>
								<I>Currently not available.</I>
							<CFELSEIF STATUS eq 5>
								<I>Item out of print.</I>
							</CFIF>
						</TD>
					<CFELSE>
						<TD VALIGN="top">
							<FONT FACE="SANS SERIF,ARIAL,HELVETICA" SIZE="2">
							<CFIF #ListPrice# neq "0"><STRIKE>$#Trim(NumberFormat(ListPrice,'__________.00'))#</STRIKE></CFIF>
						</TD>
						<TD VALIGN="top">
							<FONT FACE="SANS SERIF,ARIAL,HELVETICA" SIZE="2">
							<CFIF #Price# neq "0">$#Trim(NumberFormat(Price,'__________.00'))#</CFIF>
						</TD>
						<TD VALIGN="top">
							<FONT FACE="SANS SERIF,ARIAL,HELVETICA" SIZE="2">
							<CFIF #Price# neq "0" AND ListPrice neq "0"><CFSET Savings = Round((ListPrice - Price)/ListPrice * 100)><FONT COLOR="990000"><B><I>#Trim(NumberFormat(Savings,'__________.00'))#%</I></B></FONT></CFIF>
						</TD>
					</CFIF>
				</TR>
				</CFOUTPUT>
				</TABLE>
			</TD>
		</TR>
		</TABLE>
<!--- OUTPUT Search Results --->

<!--- EOF --->

