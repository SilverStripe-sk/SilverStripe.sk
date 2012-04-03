<div id="sidebar">
<% if Menu(2) %>
            
        <h3>$Level(1).Title</h3>    
            
        <ul class="menu2">           
            <% control Menu(2) %>       
            <li>
                <a class="$LinkingMode" href="$Link" title="Go to $Title Page">$MenuTitle</a>
                <% if LinkOrSection = section %>
                    <% if Children %>
                    <ul class="menu3">    
                        <% control Children %>              
                            <li class="$FirstLast">
                                <a class="$LinkingMode" href="$Link">$MenuTitle</a>
                            </li> 
                        <% end_control %>     
                    </ul>              
                    <% end_if %>
                <% end_if %>
            </li>
            <% end_control %>
        </ul>
       
<% else %>
<% include Social %>			
<% end_if %>
$SideBar
</div> <!-- /Sidebar -->