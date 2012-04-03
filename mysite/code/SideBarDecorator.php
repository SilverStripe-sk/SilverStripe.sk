<?php
class SideBarDecorator extends DataObjectDecorator {
	
	function extraStatics() {
		return array(
			'db' => array(),
			'has_one' => array('SideBar' => 'WidgetArea')
		);
	}
	
	function updateCMSFields(&$fields) {        
        $fields->addFieldToTab("Root.Content.Widgets", new WidgetAreaEditor("SideBar"));
	}
				
}
//EOF
