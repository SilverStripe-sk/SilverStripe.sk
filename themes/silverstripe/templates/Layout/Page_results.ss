<div class="SearchResults">
	<h1>Výsledky hľadania</h1>
	<% if Results %>
		<% require themedCSS(content_children) %> 
		<% control Results %>
			<% include Content_children_item %>
		<% end_control %>
	<% else %>
	    <p>Sorry, your search query did not return any results.</p>
	<% end_if %>
	
	<% if Results.MoreThanOnePage %>
	    <div id="PageNumbers">
	      <% if Results.NotLastPage %>
	        <a class="next" href="$Results.NextLink" title="View the next page">Next</a>
	      <% end_if %>
	      <% if Results.NotFirstPage %>
	        <a class="prev" href="$Results.PrevLink" title="View the previous page">Prev</a>
	      <% end_if %>
	      <span>
	        <% control Results.SummaryPagination(5) %>
	          <% if CurrentBool %>
	            $PageNum
	          <% else %>
	            <a href="$Link" title="View page number $PageNum">$PageNum</a>
	          <% end_if %>
	        <% end_control %>
	      </span>
      
	    </div>
	<% end_if %>
</div>
