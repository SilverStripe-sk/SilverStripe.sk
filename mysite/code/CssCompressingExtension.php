<?php
class CssCompressingExtension extends Extension {
		
	function onAfterInit(){ 
		$this->register_css();
		$this->process_registered_css();
	}
	
	var $registered_css = array("");
	var $all_registered_css = array();
		
	function register_css($top=0) {
		$css = array_keys(Requirements::backend()->get_css());
		$new_css = array_diff($css, $this->all_registered_css);
		$this->all_registered_css = array_merge($this->all_registered_css, $new_css);
		
		if ($top) {
			$this->registered_css[0] = $new_css;
		} else {
			$this->registered_css[] = $new_css;
		}
		
	}
	
	function register_top_css() {
		$this->register_css(1);
		$this->process_registered_css();
	}
	
	function register_process_css() {
		$this->register_css();
		$this->process_registered_css();
	}
		
	function process_registered_css() {
				
		foreach ($this->registered_css as $rcss) {
			$css = $rcss;
			
			if (is_array($css)) {
				// un-call called css from template/php (will be called via combine_files function), so we get our desired order
				foreach ($css as $css_path) {
					Requirements::clear($css_path);
				}
			
				$css_combination = md5(serialize($css));
				$theme = SSViewer::current_theme();
		        Requirements::combine_files($theme."_".$css_combination.'.css', $css);
			}
		}
	}
				
}
//EOF
