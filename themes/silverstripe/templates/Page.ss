<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="sk" lang="sk" dir="ltr">
    <head>
		<% base_tag %>
		<title>$MetaTitle | $SiteConfig.Title</title>
		$MetaTags(false)
        <link rel="shortcut icon" href="$themedir/images/favicon.ico" type="image/x-icon" />
		<!--[if lte IE 7]>
			<link href="yaml/core/slim_iehacks.css" rel="stylesheet" type="text/css" />
			<link href="$themedir/css/iepatch.css" rel="stylesheet" type="text/css" />
		<![endif]-->
		{$register_css}<% require css(yaml/core/slim_base.css) %><% require themedCSS(basemod) %><% require themedCSS(basemod_addon) %><% require themedCSS(navigation_vertical) %><% require themedCSS(navigation_vertical_addon) %><% require themedCSS(content) %><% require themedCSS(content_addon) %><% require themedCSS(form) %><% require themedCSS(typography) %><% require themedCSS(print) %>{$register_top_css}
		<link href='http://fonts.googleapis.com/css?family=Ubuntu:light,regular,italic,bold' rel='stylesheet' type='text/css' />
    </head>
    <body class="$ClassName">
 		<% include Skiplinks %>
   		<div class="page_margins">
    		<div class="page">
	   			<% include Header %>
				<div id="main">
					<div id="col1">
						<div id="col1_content" class="clearfix">
							$TeasersRecursive
		                   	$Layout
						</div>
					</div>
					<div id="col3">
						<div id="col3_content" class="clearfix">
							<% include Navigation_vertical_expandable %>
							$SideBar
							<% include Social %>							
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
