<% require themedCSS(navigation_vertical) %>
<% require themedCSS(navigation_vertical_expandable) %>
<% require themedCSS(navigation_vertical_addon) %>
<div class="navigation_vertical navigation_expandable">
	<ul>
       <% control Menu(1) %>
	   	<li<% if LinkOrSection = section %> class="expand"<% end_if %>>
			<a href="{$Link}" title="{$Title}" class="{$LinkingMode}">$MenuTitle</a>
			<% if Children %>
				<ul class="acitem">
				<% control Children %>
					<li class="{$LinkingMode}<% if First %> first<% end_if %>">
						<a class="level3" href="{$AbsoluteLink}" title="{$Title}">$MenuTitle</a>
					</li>
				<% end_control %>
				</ul>
			<% end_if %>
		</li>
	 <% end_control %>
    </ul>
</div>