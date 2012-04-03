<% include BlogSideBar %>
<div id="BlogContent" class="typography">
	
	<div class="blogEntry">
		<h1 class="postTitle">$Title</h1>
		<% include BreadCrumbs %>
		<% include BlogVitals %>
		$Content
		<br />
	</div>
	
	<% if IsOwner %><p><a href="$EditURL" id="editpost" title="<% _t('EDITTHIS', 'Edit this post') %>"><% _t('EDITTHIS', 'Edit this post') %></a> | <a href="$Link(unpublishPost)" id="unpublishpost"><% _t('UNPUBLISHTHIS', 'Unpublish this post') %></a></p><% end_if %>
	
	<% if TrackBacksEnabled %>
		<% include TrackBacks %>
	<% end_if %>
	$DisqusPageComments
</div>
