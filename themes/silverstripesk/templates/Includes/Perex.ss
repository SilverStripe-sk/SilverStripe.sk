<% if Perex %>
	$Perex
<% else %>
	<% if Content %>
		<p>$Content.LimitWordCount(25)</p>
	<% end_if %>
<% end_if %>