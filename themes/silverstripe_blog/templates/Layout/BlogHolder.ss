<% require themedCSS(content_children) %> 

<% include BlogSideBar %>

<div id="BlogContent" class="blogcontent typography">
	
	<% include BlogBy %>
	
	<h1>$Title</h1>
	
	$Content
	
	<% include BreadCrumbs %>
	
		
	<% if BlogEntries %>
		<% control BlogEntries %>
				<% include BlogSummary %>
		<% end_control %>
	<% else %>
		<h3><% _t('NOENTRIES', 'There are no blog entries') %></h3>
	<% end_if %>
	
	<% include BlogPagination %>
	
</div>

