<!--- the following variables are required for the CF_AMAZON tag. --->
<CFPARAM NAME="mode" DEFAULT="top_books">
<CFPARAM NAME="keyword" DEFAULT="">
<CFPARAM NAME="tag" DEFAULT="naplesfreenet">
<CFPARAM NAME="limit" DEFAULT="10">

<CF_AMAZON
	mode="#mode#"
	tag="#tag#"
	keyword="#keyword#"
	limit="#limit#">

<!--- 		<CENTER><H2>Custom Tags Gallery</H2></CENTER>
		<FONT FACE="ARIAL,HELVETICA" SIZE="2">
		<UL>
		<LI><B>&lt;CF_AMAZON&gt;</B>
			<UL>
			<LI><A HREF="index.cfm">Main</A>
			<LI><A HREF="example.cfm">Example</A>
			<LI><A HREF="documentation.cfm">Documentation</A>
			<LI><A HREF="download.cfm">Download</A>
			<LI><A HREF="license.cfm">License</A>
			<LI><A HREF="source.cfm">Source Availability</A>
			</UL>
		<LI><A HREF="../index.cfm">Back to Custom Tag Gallery Home</A>
		</UL>
		<P>
		<FONT SIZE="+1"><B>Example</B></FONT>
		<P>
		The tag was implemented with the following options:
		<P>
 ---><CFOUTPUT>
<FONT FACE="Courier New,Courier" SIZE="3"><B>
<BLOCKQUOTE>
&lt;CF_AMAZON <BR>
&nbsp;&nbsp;&nbsp;&nbsp;mode="#mode#"<BR>
&nbsp;&nbsp;&nbsp;&nbsp;tag="#tag#"<BR>
&nbsp;&nbsp;&nbsp;&nbsp;keyword="#keyword#"<BR>
&nbsp;&nbsp;&nbsp;&nbsp;limit="#limit#"&gt;
</B></FONT>
</BLOCKQUOTE>
</CFOUTPUT>
		<P>
		For documentation about this tag, <A HREF="documentation.cfm">click here</A>.  
		The tag outputs the ASIN, title, author, and price into a query which can then
		be output however you want, such as the following table:
		<P>
		
		<TABLE CELLSPACING="0" CELLPADDING="2" BORDER="1" BGCOLOR="ffffcc">
		<TR>
			<TD>
				<FONT FACE="SANS SERIF,ARIAL,HELVETICA" SIZE="4"><B><CENTER>
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
				<FONT FACE="SANS SERIF,ARIAL,HELVETICA" SIZE="2">
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
						<FONT FACE="SANS SERIF,ARIAL,HELVETICA" SIZE="2">
						<A HREF="http://www.amazon.com/exec/obidos/ASIN/#ASIN#/#tag#">#Title#</A>
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
<!--- <!--- <CF_WAKEBRANDING PART="bottom" HEADER="customtags"> ---> --->
