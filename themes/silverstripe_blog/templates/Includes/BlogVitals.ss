		<p class="BlogVitals"><span class="authorDate"><% _t('POSTEDBY', 'Posted by') %> $Author.XML</span> <span class="postedOn"><% _t('POSTEDON', 'on') %> $Date.Long</span> | <span class="commentsCount"><% if disqusCountLink %>$disqusCountLink<% else %> <a href="$Link#PageComments_holder" class="comments" title="View Comments for this post"><% _t('COMMENTS', 'Comments') %></a>: $Comments.Count<% end_if %></span>
		<% if TagsCollection %>
			| <span class="tags">
				 <% _t('TAGS', 'Tags:') %> 
				<% control TagsCollection %>
					<a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
				<% end_control %>
			</span>
		<% end_if %>
		</p>