<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html lang="$ContentLocale" xml:lang="$ContentLocale" xmlns="http://www.w3.org/1999/xhtml">
    <head>
		<% base_tag %>
		<title>$MetaTitle | $SiteConfig.Title</title>
		$MetaTags(false)
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
		<!--[if lte IE 7]>
			<link href="/yaml/core/slim_iehacks.css" rel="stylesheet" type="text/css" />
			<link href="$themedir/css/iepatch.css" rel="stylesheet" type="text/css" />
		<![endif]-->
		{$register_css}
		<% require css(yaml/core/slim_base.css) %>
		<% require themedCSS(basemod) %>
		<% require themedCSS(content) %>
		<% require themedCSS(form) %>		
		<% require themedCSS(typography) %>	
		<% require themedCSS(print) %> 
		{$register_top_css}
    </head>
    <body class="$ClassName">
 		<% include Skiplinks %>
   		<div class="page_margins">
    		<div class="page">
	   			<div id="header">
	   				<div id="logo">
	   					<a href="$BaseHref" title="$SiteConfig.Title">
	   						<img src="$themedir/images/logo.png" alt="$SiteConfig.Title" />
						</a>
					</div>
				</div>
				<div id="main">
					<div id="col1">
						<div id="col1_content" class="clearfix">
							$SkitterSlidesRecursive
		                   	$Layout
		                   	<% include Social %>
						</div>
					</div>
					<div id="col3">
						<div id="col3_content" class="clearfix">
							<% include Navigation_vertical_expandable %>
						</div>
						<div id="ie_clearing">&nbsp;</div>
					</div>
				</div>
				<div id="footer">
					<% include Footer %>
				</div>
			</div>
		</div>
		{$register_process_css}
	</body>
</html>
