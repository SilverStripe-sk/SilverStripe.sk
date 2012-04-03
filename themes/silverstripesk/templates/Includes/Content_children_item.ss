<div class="Content_children_item<% if Even %> even<% end_if %>">			
	<% if MainImage %>
		<div class="subcolumns equalize">
			<div class="cImage">
				<div class="subcl">
					<a href="$Link" title="$Title.XML">$MainImage.Thumb</a>
				</div>
			</div>
			<div class="cContent">
				<div class="subcr">
	<% end_if %>
					<h2><a href="$Link" title="$Title.XML">$MenuTitle</a></h2>
					<% if Perex %>
						$Perex
					<% else %>
						<% if Content %>
							<p>
								$Content.LimitWordCount(25)
						    </p>
					    <% end_if %>
					<% end_if %>
					<p class="LinkMore"><a href="$Link" title="$Title.XML"><% _t("Page.READMORE", "Read more") %></a></p>
	<% if MainImage %>
				</div>
			</div>
		</div>
	<% end_if %>
</div>