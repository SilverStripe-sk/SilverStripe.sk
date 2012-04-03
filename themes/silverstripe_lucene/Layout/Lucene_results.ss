<h1>Výsledky vyhľadávania</h1>
                <p>Vami hľadaný výraz <strong>&quot;$Query&quot;</strong> zodpovedá $TotalResults <% if TotalResults == 1 %>záznamu<% else %>záznamom<% end_if %>.</p>

<% if Results %>
                <p>Zobrazujem stránku $ThisPage z celkového počtu $TotalPages</p>

                <!-- START search results -->
                <% require themedCSS(content_children) %> 
				<div id="Content_children"> 
                    <% control Results %>
                    	<div class="Content_children_item<% if Even %> even<% end_if %>">			
							<h2><a href="$Link" title="$Title.XML">$Title</a></h2>
							<p>
								<% if Content %>$Content.LimitWordCount(25)<br /><% end_if %>
							   	<a href="$Link" title="$Title.XML">Viac informácií</a>
							</p>
						</div>
                    <% end_control %>
                </div>
                <!-- END search results -->

                <% if SearchPages %>
                <!-- START pagination -->
                    <ul class="pagination">
                        <% if PrevUrl = false %><% else %>
                        <li class="prev"><a href="$PrevUrl" title="Predch.">predch.</a></li>
                        <% end_if %>               
                    <% control SearchPages %>
                        <% if IsEllipsis %>
                        <li class="ellipsis">...</li>
                        <% else %>
                            <% if Current %>
                            <li class="active"><strong>$PageNumber</strong></li>
                            <% else %>
                            <li><a href="$Link" title="Skok na stránku $PageNumber">$PageNumber</a></li>
                            <% end_if %>
                        <% end_if %>
                    <% end_control %>
                        <% if NextUrl = false %><% else %>
                        <li class="next"><a href="$NextUrl" title="ďalšia">ďalšia</a></li>
                        <% end_if %>               
                    </ul>
                <!-- END pagination -->                
                <% end_if %>

<% else %>
                <p>Vami zadaný hľadaný výraz nezodpovedá žiadnemu záznamu v našej databáze.</p>
<% end_if %>

