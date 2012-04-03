<?php
class PerexDecorator extends DataObjectDecorator {
	
	function extraStatics() {
		return array(
			'db' => array("Perex" => "HTMLText")
		);
	}
	
	function updateCMSFields(&$fields) {        
        $fields->addFieldToTab("Root.Content.Main", new HtmlEditorField("Perex","Perex",5),"Content");
	}
				
}
//EOF
