<!--- <CF_WAKEBRANDING PART="top" HEADER="customtags"> --->
		<CENTER><H2>Custom Tags Gallery</H2></CENTER>
		<FONT FACE="ARIAL,HELVETICA" SIZE="2">
		<UL>
		<LI><B>&lt;CF_AMAZON&gt;</B>
			<UL>
			<LI><A HREF="index.cfm">Main</A>
			<LI>Example
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
		This page shows the various ways that you can implement the &lt;CF_AMAZON&gt; Cold Fusion custom tag.
		While the tag has defaults for all of it's attributes, you will most likely want to pass at least
		the "mode" attribute and the "tag" attribute.  See the <A HREF="documentation.cfm">tag documentation</A>
		for a list of attributes which can be passed to the tag, and for the defaults.
		<P>
		<I>Note:  If your search returns only one result, you will be automatically transferred to Amazon's web site.</I>
		<P>
		<CENTER>
		<TABLE BGCOLOR="#000099" CELLSPACING="0" CELLPADDING="4" BORDER="0">
		<CFFORM ACTION="example-part2.cfm">
		<TR>
		    <TD>
				<TABLE ALIGN="center" BGCOLOR="#ffffcc" CELLSPACING="0" CELLPADDING="4" BORDER="0">
				<TR>
				    <TD>
						<FONT FACE="ARIAL,HELVETICA" SIZE="3">
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
						<INPUT TYPE=hidden NAME=tag VALUE="naplesfreenet">
						<INPUT TYPE="submit" NAME="SUBMIT_ACTION" VALUE="Go">	
					</TD>
				</TR>
				</TABLE>
			
			</TD>
		</TR>
		</CFFORM>
		</TABLE>
		</CENTER>
		<P>
		<H4>Best Sellers, New Releases, Future Releases, and Sale Items</H4>
		<UL>
		<LI>Best Selling Books - <A HREF="example-part2.cfm?mode=top_books&limit=10">Top 10</A> <A HREF="example-part2.cfm?mode=top_books&limit=25">Top 25</A> <A HREF="example-part2.cfm?mode=top_books&limit=50">Top 50</A> <A HREF="example-part2.cfm?mode=top_books&limit=75">Top 75</A> <A HREF="example-part2.cfm?mode=top_books&limit=100">Top 100</A>
		<P>
		<UL>
		<LI>Best Selling Books in Hardcover Fiction - <A HREF="example-part2.cfm?mode=top_hardcover_fiction&limit=10">Top 10</A> <A HREF="example-part2.cfm?mode=top_hardcover_fiction&limit=25">Top 25</A>
		<LI>Best Selling Books in Hardcover Non-Fiction - <A HREF="example-part2.cfm?mode=top_hardcover_nonfiction&limit=10">Top 10</A> <A HREF="example-part2.cfm?mode=top_hardcover_nonfiction&limit=25">Top 25</A>
		<LI>Best Selling in Books Paperback Fiction - <A HREF="example-part2.cfm?mode=top_paperback_fiction&limit=10">Top 10</A> - <A HREF="example-part2.cfm?mode=top_paperback_fiction&limit=25">Top 25</A>
		<LI>Best Selling Books in Paperback Non-Fiction - <A HREF="example-part2.cfm?mode=top_paperback_nonfiction&limit=10">Top 10</A> <A HREF="example-part2.cfm?mode=top_paperback_nonfiction&limit=25">Top 25</A>
		</UL>
		<P>
		<LI>Best Selling CD's - <A HREF="example-part2.cfm?mode=top_music&limit=10">Top 10</A> <A HREF="example-part2.cfm?mode=top_music&limit=25">Top 25</A> <A HREF="example-part2.cfm?mode=top_music&limit=50">Top 50</A> <A HREF="example-part2.cfm?mode=top_music&limit=75">Top 75</A> <A HREF="example-part2.cfm?mode=top_music&limit=100">Top 100</A>
		<P>
		<UL>
		<LI>New Releases - <A HREF="example-part2.cfm?mode=new_music&limit=20">Top 20</A>
		<LI>Coming Soon - <A HREF="example-part2.cfm?mode=coming_music&limit=20">Top 20</A>
		<LI>Breakthrough Artists - <A HREF="example-part2.cfm?mode=breakthrough_music&limit=20">Top 20</A>
		</UL>
		<P>
		<LI>Best Selling Videos - <A HREF="example-part2.cfm?mode=top_video&limit=10">Top 10</A> <A HREF="example-part2.cfm?mode=top_video&limit=25">Top 25</A> <A HREF="example-part2.cfm?mode=top_video&limit=50">Top 50</A> <A HREF="example-part2.cfm?mode=top_video&limit=75">Top 75</A> <A HREF="example-part2.cfm?mode=top_video&limit=100">Top 100</A>
		<P>
		<UL>
		<LI>VHS New Releases - <A HREF="example-part2.cfm?mode=new_vhs&limit=20">Top 20</A>
		<LI>VHS Coming Soon - <A HREF="example-part2.cfm?mode=coming_vhs&limit=20">Top 20</A>
		<LI>VHS Recently Reduced - <A HREF="example-part2.cfm?mode=reduced_vhs&limit=20">Top 20</A>
		</UL>
		<P>
		<LI>Best Selling DVD's - <A HREF="example-part2.cfm?mode=top_dvd&limit=10">Top 10</A> <A HREF="example-part2.cfm?mode=top_dvd&limit=25">Top 25</A> <A HREF="example-part2.cfm?mode=top_dvd&limit=50">Top 50</A> <A HREF="example-part2.cfm?mode=top_dvd&limit=75">Top 75</A> <A HREF="example-part2.cfm?mode=top_dvd&limit=100">Top 100</A>
		<P>
		<UL>
		<LI>DVD New Releases - <A HREF="example-part2.cfm?mode=new_dvd&limit=20">Top 20</A>
		<LI>DVD Coming Soon - <A HREF="example-part2.cfm?mode=coming_dvd&limit=20">Top 20</A>
		</UL>
		<P>
		</UL>
<!--- <CF_WAKEBRANDING PART="bottom" HEADER="customtags"> --->
