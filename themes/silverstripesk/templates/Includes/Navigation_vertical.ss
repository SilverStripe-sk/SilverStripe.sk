<% require themedCSS(navigation_vertical) %>
<div class="navigation_vertical">
	<ul class="start">
       <% control Menu(1) %>
	   	<li>
			<a href="{$Link}" title="{$Title}" class="$LinkingMode">$MenuTitle</a>
		</li>
	 <% end_control %>
    </ul>
</div>
