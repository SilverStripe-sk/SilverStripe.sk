<% include BlogSideBar %>

<div id="BlogContent" class="blogcontent typography">
	
	<% include BreadCrumbs %>
	
	<% include BlogBy %>
	
	<% if BlogEntries %>
		<% control BlogEntries %>
				<% include BlogSummary %>
		<% end_control %>
	<% else %>
		<h3><% _t('NOENTRIES', 'There are no blog entries') %></h3>
	<% end_if %>
	
	<% include BlogPagination %>
	
</div>