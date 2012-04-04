<div class="blogSummary $FirstLast">
	
	<h2 class="postTitle"><a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h2>
	
	<p class="authorDate"><% _t('POSTEDBY', 'Posted by') %> <strong>$Author.XML</strong>  <% _t('POSTEDON', 'on') %> $Date.Format(d.m.Y)<% if ProvideComments %> | $disqusCountLink<% end_if %></p>
	
	<% if TagsCollection %>
		<p class="tags">
			Tagy:
			<% control TagsCollection %>
				<a href="$Link" title="Všetky články s tagom '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
			<% end_control %>
		</p>
	<% end_if %>
	
	<% if MainImage %>
		<div class="BlogImage">
			<a href="$Link" title="$Title.XML">$MainImage.setHeight(100)</a>
		</div>
	<% end_if %>
	
	<p>$Content.FirstParagraph</p>
	
	<p class="blogVitals"><% if ProvideComments %>$disqusCountLink | <% end_if %><a href="$Link" class="readmore" title="Read Full Post">Celý článok</a></p>
</div>
