<div class="Content_children_item<% if Even %> even<% end_if %>">			
	<% if MainImage %>
		<div class="subcolumns">
			<div class="cImage">
				<div class="subcr">
					<a href="$Link" title="$Title.XML">$MainImage.Thumb</a>
				</div>
			</div>
			<div class="cContent">
				<div class="subcl">
	<% end_if %>
					<h2><a href="$Link" title="$Title.XML">$MenuTitle</a></h2>
					<% include BlogVitals %>
					$Content.LimitWordCount(50)
					<p>
				   	<a href="$Link" title="$Title.XML">Viac informácií</a>
					</p>
	<% if MainImage %>
				</div>
			</div>
		</div>
	<% end_if %>
</div>
