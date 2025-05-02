<!--- <!--- <CF_WAKEBRANDING PART="top" HEADER="customtags"> ---> --->
		<CENTER><H2>Custom Tags Gallery</H2></CENTER>
		<FONT FACE="ARIAL,HELVETICA" SIZE="2">
		<UL>
		<LI><B>&lt;CF_AMAZON&gt;</B>
			<UL>
			<LI><A HREF="index.cfm">Main</A>
			<LI><A HREF="example.cfm">Example</A>
			<LI>Documentation
			<LI><A HREF="download.cfm">Download</A>
			<LI><A HREF="license.cfm">License</A>
			<LI><A HREF="source.cfm">Source Availability</A>
			</UL>
		<LI><A HREF="../index.cfm">Back to Custom Tag Gallery Home</A>
		</UL>
		<P>
		<FONT SIZE="+1"><B>Documentation</B></FONT>
		<P>
		<B>CF_AMAZON</B>
		<BLOCKQUOTE>
			CF_AMAZON retrieves information from Amazon.com and places it
			into a query named "SearchResults" containing four fields 
			named "ASIN", "Title", "Author", and "Price".  When invoked in
			search mode, it may return a value of "1" to the variable
			"TooManyResults" if there are more than 50 results.
		</BLOCKQUOTE>
		<B>SYNTAX</B>
		<BLOCKQUOTE>
			&lt;CF_AMAZON TAG="associate_tag"<BR>
			&nbsp;&nbsp;&nbsp;&nbsp;MODE="mode"<BR>
			&nbsp;&nbsp;&nbsp;&nbsp;KEYWORD="keywords"<BR>
			&nbsp;&nbsp;&nbsp;&nbsp;LIMIT="number"&gt;
			<P>
			<B>TAG</B>
			<P>
			Not used anymore.
			<P>
			<B>LIMIT</B>
			<P>
			The LIMIT attribute allows you to determine the maximum number of records to
			retrieve.  In some cases this will make the CF_AMAZON tag work faster,
			particularly in cases like the major category "Best Seller" lists (books, music,
			dvd, and video), because it has to make one connection to amazon.com for
			each 25 items returned.
			<P>
			The attribute defaults to 10 if you don't include it or if you include an
			invalid value.  If you set it to 0, it will return as many records as possible.
			<P>
			<B>MODE</B>
			<P>
			The MODE attribute determines what data to retrieve.  Basically there are search modes,
			and list modes.  The search modes also require the <A HREF="#keyword">keyword</A>
			attribute.
			<P>
			If you don't include this attribute, it defaults to "top_books".
			<P>
			Valid values for the MODE attribute are:
			<UL>
			<LI>search_books
			<LI>search_music
			<LI>search_video
			<LI>search_dvd
			<LI>search_isbn
			<P>
			<LI>top_books - <I>Best Selling Books</I>
			<LI>top_hardcover_fiction - <I>Best Selling Books in Hardcover Fiction</I>
			<LI>top_hardcover_nonfiction - <I>Best Selling Books in Hardcover Non-Fiction</I>
			<LI>top_paperback_fiction - <I>Best Selling in Books Paperback Fiction</I>
			<LI>top_paperback_nonfiction - <I>Best Selling Books in Paperback Non-Fiction</I>
			<LI>top_music - <I>Best Selling CD's</I>
			<LI>new_music - <I>Newly Released CD's</I>
			<LI>coming_music - <I>Upcoming CD Releases</I>
			<LI>breakthrough_music - <I>Breakthrough Artists</I>
			<LI>top_video - <I>Best Selling Videos</I>
			<LI>new_vhs - <I>Upcoming VHS Releases</I>
			<LI>coming_vhs - <I>VHS Coming Soon</I>
			<LI>reduced_vhs - <I>Recently Reduced on VHS</I>
			<LI>top_dvd - <I>Best Selling DVD's</I>
			<LI>new_dvd - <I>DVD New Releases</I>
			<LI>coming_dvd - <I>Upcoming DVD Releases</I>
			</UL>
			<P>
			<B>KEYWORD</B>
			<P>
			For search modes (search_<I>xxx</I>), this attribute is required.
			Whatever is placed in this attribute will be passed directly to amazon's
			search engine.
			<P>
			If your mode is "search_isbn", you can enter one or more comma-separated ISBN
			numbers into the keyword field, and it will retrieve the information for each
			ISBN.  The ISBN must be in Amazon's ASIN format (no punctuation, no spaces).
			<B>WARNING:</B>  The tag executes one CFHTTP request to Amazon's web site for
			each ISBN.  You can imagine how slow this is going to get if you submit
			100 ISBN numbers for retrieval. =)
		</BLOCKQUOTE>
		<B>EXAMPLE</B>
		<BLOCKQUOTE>
		<A HREF="example.cfm">Click here for an example</A>.
		</BLOCKQUOTE>
		<B>IN THE FUTURE / KNOWN ISSUES</B>
		<BLOCKQUOTE>
		When searching, this tag does not return "Top Results".  Amazon doesn't list prices or any other real information
		for "Top Results", so it's kinda hard to handle that.  A real pain in the butt those
		Amazon people are...
		<P>
		This tag also only returns one search page.  If you do a generic search, for instance,
		the word "kids", Amazon will have hundreds, maybe thousands of matches.  You're only
		getting the first page - about 50 results I think.  I'm not likely to change that but
		I might.
		<P>
<!--- <!--- <CF_WAKEBRANDING PART="bottom" HEADER="customtags"> ---> --->
