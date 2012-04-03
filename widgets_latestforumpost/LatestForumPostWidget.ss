<% control getPosts %>
	<p>
	<a href="$Link" title="$Title.EscapeXML">$Title</a>
	<br />$Content.LimitWordCount(10)
	</p>
<% end_control %>