	<% if SelectedTag %>
		<p class="note"><% _t('VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'</p>
	<% else_if SelectedDate %>
		<p class="note"><% _t('VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedDate.Month $SelectedDate.Year</p>
	<% end_if %>