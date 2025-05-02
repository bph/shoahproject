<!--- <CF_WAKEBRANDING PART="top" HEADER="customtags"> --->
		<CENTER><H2>Custom Tags Gallery</H2></CENTER>
		<FONT FACE="ARIAL,HELVETICA" SIZE="2">
		<UL>
		<LI><B>&lt;CF_AMAZON&gt;</B>
			<UL>
			<LI>Main
			<LI><A HREF="example.cfm">Example</A>
			<LI><A HREF="documentation.cfm">Documentation</A>
			<LI><A HREF="download.cfm">Download</A>
			<LI><A HREF="license.cfm">License</A>
			<LI><A HREF="source.cfm">Source Availability</A>
			</UL>
		<LI><A HREF="../index.cfm">Back to Custom Tag Gallery Home</A>
		</UL>
		<P>
		<P>
		<FONT SIZE="+1"><B>&lt;CF_AMAZON&gt;</B></FONT>
		<P>
		<TABLE>
		<TR>
			<TD VALIGN="top">
				<FONT FACE="ARIAL,HELVETICA" SIZE="2">
				Tag Name:
			</TD>
			<TD VALIGN="top">
				<FONT FACE="ARIAL,HELVETICA" SIZE="2">
				&lt;CF_AMAZON&gt;
			</TD>
		</TR>
		<TR>
			<TD VALIGN="top">
				<FONT FACE="ARIAL,HELVETICA" SIZE="2">
				Version:
			</TD>
			<TD VALIGN="top">
				<FONT FACE="ARIAL,HELVETICA" SIZE="2">
				2.13 (Released 12/8/1999)
			</TD>
		</TR>
		<TR>
			<TD VALIGN="top">
				<FONT FACE="ARIAL,HELVETICA" SIZE="2">
				Recent Changes:
			</TD>
			<TD VALIGN="top">
				<FONT FACE="ARIAL,HELVETICA" SIZE="2">
				<B>12/8/99 v2.13</B> - 
				Amazon changed the font of the product titles.  Damn them!
				<P>
				<B>11/30/99 v2.12</B> - 
				Amazon moved the location of the product images.  The tag was adjusted
				accordingly.  Damn them!
				<P>
				<B>9/7/99 v2.11</B> - 
				Amazon changed the design of the following pages: top selling vhs,
				top selling dvd, coming soon vhs, and coming soon DVD.  You can now see
				up to 100 items in each of these categories.  I've adjusted the tag
				to match Amazon's new design.
				<P>
				<B>9/1/99 v2.1</B> - 
				When individual results were returned, either via a normal search or an
				ISBN search, the tag did not return any author information.  It now returns
				authors in such cases.  This was not a bug, merely a lack of a feature. =)
				<P>
				<B>8/17/99 v2.0</B> - 
				CF_AMAZON now returns list price, product status (such as "special order" or "out of stock"),
				image URL (when available).  It also returns data for one search result (previously it
				when a search resulted in only one product, the user was linked directly to that product).
				<P>
				You can also search by ISBN now, or even multiple ISBN's.
				<P>
				We also noticed that the "limit" attribute was broken.  It never returned more than 25 results.
				It will now return up to 100 items in certain cases (top_books, top_music, etc..).
			</TD>
		</TR>
		<TR>
			<TD VALIGN="top">
				<FONT FACE="ARIAL,HELVETICA" SIZE="2">
				Author:
			</TD>
			<TD VALIGN="top">
				<FONT FACE="ARIAL,HELVETICA" SIZE="2">
				Rick Root (<A HREF="mailto:ric@arborsites.com">ric@arborsites.com</A>)
			</TD>
		</TR>
		<TR>
			<TD VALIGN="top">
				<FONT FACE="ARIAL,HELVETICA" SIZE="2">
				Licensing Status:
			</TD>
			<TD VALIGN="top">
				<FONT FACE="ARIAL,HELVETICA" SIZE="2">
				Freeware (<A HREF="license.cfm">view license</A>)
			</TD>
		</TR>
		<TR>
			<TD VALIGN="top">
				<FONT FACE="ARIAL,HELVETICA" SIZE="2">
				Purpose:
			</TD>
			<TD VALIGN="top">
				<FONT FACE="ARIAL,HELVETICA" SIZE="2">
				Amazon's affiliate program can help you make money on your web site.  But
				unless you spend a lot of work creating the links, you're only going to get
				5% of most purchases made from your web site because they're not direct links.
				In other words, a search box or a link to Amazon's home page is only going
				to get you 5%.
				<P>
				The affiliate program becomes more valuable when you can link directly to
				products.  There are over 400,000 products which will get you a 15% commission,
				but <I>only</I> if you link directly to those products.
				<P>
				So I've created a "low-maintenance" way for you to get those direct links
				without having to spend a lot of time creating the HTML for those links.
				<P>
				The &lt;CF_AMAZON&gt; custom tag pulls information in a variety of categories
				directly from Amazon's web site, and provides you with the information
				requested as a Query dataset, so you can output the results however you want.
				The data it retrieves is the ASIN, Title, Author (except for DVD's and video),
				List Price, Price, Image URL (when available), and Status.
			</TD>
		</TR>
		</TABLE>
<!--- <CF_WAKEBRANDING PART="bottom" HEADER="customtags"> --->
