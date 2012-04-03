<div class="SearchResults">
	<h1><% _t("Page_results.RESULTS", "Search results") %></h1>
	<% if Results %>
		<% require themedCSS(content_children) %> 
		<% control Results %>
			<% include Content_children_item %>
		<% end_control %>
	<% else %>
	    <p><% _t("Page_results.NORESULTS", "Sorry, your search query did not return any results.") %></p>
	<% end_if %>
	
	<% if Results.MoreThanOnePage %>
	    <div id="PageNumbers">
	      <% if Results.NotLastPage %>
	        <a class="next" href="$Results.NextLink" title="<% _t("Page_results.NEXTVIEW", "View the next page") %>"><% _t("Page_results.NEXT", "Next") %></a>
	      <% end_if %>
	      <% if Results.NotFirstPage %>
	        <a class="prev" href="$Results.PrevLink" title="<% _t("Page_results.PREVVIEW", "View the previous page") %>"><% _t("Page_results.PREV", "Prev") %></a>
	      <% end_if %>
	      <span>
	        <% control Results.SummaryPagination(5) %>
	          <% if CurrentBool %>
	            $PageNum
	          <% else %>
	            <a href="$Link" title="<% _t("Page_results.NUMVIEW", "View page number") %> $PageNum">$PageNum</a>
	          <% end_if %>
	        <% end_control %>
	      </span>
      
	    </div>
	<% end_if %>
</div>
