<% if Children %>
	<% require themedCSS(content_children) %> 
	<div id="Content_children"> 
		<% control Children %>		
			<% include Content_children_item %>
	    <% end_control %>
	</div>
<% end_if %>