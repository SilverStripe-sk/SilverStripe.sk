<?php
global $project;
$project = 'mysite';

global $database;
$database =  "silverstripesk";
require_once("conf/ConfigureFromEnv.php");
MySQLDatabase::set_connection_charset('utf8');
//
//Force redirect to www.
Director::forceWWW();
//
FulltextSearchable::enable();
//
SSViewer::set_theme('simples');
//
GD::set_default_quality(90);
//
//enable nested URLs for this site (e.g. page/sub-page/)
SiteTree::enable_nested_urls();
//
Validator::set_javascript_validation_handler('none');
//
Object::add_extension('Page','MainImagePageDecorator');
Object::add_extension('Image','MainImageImageDecorator');
//Object::add_extension('Page','PerexDecorator');
//Object::add_extension('Page','SideBarDecorator');
Object::add_extension('Page','SideBarDecorator');
Object::add_extension('Page_Controller', 'CssCompressingExtension');
//
ZendSearchLuceneSearchable::enable(array('SiteTree'));
Object::add_extension('Post',"ZendSearchLuceneSearchable('Content')");
//Object::add_extension('ForumThread',"ZendSearchLuceneSearchable('Title')");
Object::add_extension('BlogEntry',"ZendSearchLuceneSearchable('"
    ."Title,MenuTitle,MetaTitle,MetaDescription,MetaKeywords,"
    ."Tags')");
//
// Maxneed config
//Object::add_extension("SiteTree", "MyMetaTagsDecorator");
//Object::add_extension('SiteConfig', 'SiteConfigMeta');
//Object::add_extension("SiteTree", "JsUrlChangerSiteTreeDecorator");
//Object::add_extension("LeftAndMain", "JsUrlChangerLeftAndMainDecorator");
//Object::add_extension("LeftAndMain", "HtmlEditorConfigDecorator");
//
if (class_exists("GoogleAnalyzer")) {
	GoogleLogger::activate('SiteConfig');
	GoogleAnalyzer::activate('SiteConfig');
}
//
//(v2.4) Log errors to an email address
SS_Log::add_writer(new SS_LogEmailWriter('silverstripesk.errors@webmax.sk'), SS_Log::ERR);
//(v2.4) Log errors to a file
//SS_Log::add_writer(new SS_LogFileWriter(Director::baseFolder().'/assets/error_log.txt'), SS_Log::ERR); 
//
//
i18n::set_locale("sk_SK"); 
setlocale(LC_TIME, i18n::get_locale() . ".utf8"); 
// alebo
//Translatable::set_default_locale('sk_SK');
//Object::add_extension('SiteTree','Translatable');
//Object::add_extension('SiteConfig','Translatable');
//Translatable::set_allowed_locales(array('sk_SK','en_US','de_DE'));
//
//Force enviroment to Dev ** REMOVE FOR LIVE SITES **
Director::set_environment_type("dev");
//
//
//Force cache to flush on page load if in Dev mode (prevents needing ?flush=1 on the end of a URL)
if (Director::isDev()) {
    //SSViewer::flush_template_cache();
} 
//
Email::setAdminEmail('silverstripesk@webmax.sk');
//
// EOF
