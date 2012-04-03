<div id="header">
	   				<div id="logo">
	   					<a href="$baseurl" title="Home">
	   						<img src="$themedir/images/logo.png" alt="SilverStripe.sk" />
						</a>
					</div>
					<div id="topnav">
						<% if CurrentMember %>
							<a class="login" href="ForumMemberProfile/LOGOUT/">Odhlásiť</a>
							<a class="register" href="ForumMemberProfile/edit/">Profil</a>
						<% else %>
							<a class="login" href="Security/login/">Prihlásiť</a>
							<a class="register" href="ForumMemberProfile/register/">Registrovať</a> 
						<% end_if %>
					</div>					
	   				<div id="search">
		   				$ZendSearchLuceneForm
	            	</div>
				</div>