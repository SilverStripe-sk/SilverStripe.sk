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
					<p>
					<% if Content %>$Content.LimitWordCount(25)<br /><% end_if %>
				   	<a href="$Link" title="$Title.XML">Viac informácií</a>
				    </p>
	<% if MainImage %>
				</div>
			</div>
		</div>
	<% end_if %>
</div>