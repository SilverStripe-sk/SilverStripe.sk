<?php
class MainImagePageDecorator extends DataObjectDecorator {
	
	function extraStatics() {
		return array(
			'db' => array(),
			'has_one' => array('MainImage' => 'Image')
		);
	}
	
	function updateCMSFields(&$fields) {        
        $fields->addFieldToTab("Root.Content.Foto", new ImageField("MainImage", "Hlavný obrázok"));
	}
				
}

class MainImageImageDecorator extends DataObjectDecorator {
		
	function generateOriginalSize( $gd ) { return $gd; }
	function generateThumbSize( $gd ) { return $gd->resizeByWidth( 120 ); }
	function generateMiniThumbSize( $gd ) { return $gd->resizeByWidth( 90 ); }
	function generateFullSize( $gd ) { return $gd->resizeRatio( 1024, 768 ); }
	
	function Full() {
		 return ($this->owner->Width > 1024 AND $this->owner->Height > 769) ? $this->owner->getFormattedImage('FullSize') : $this->owner->getFormattedImage('OriginalSize'); 
	}
	
	function MiniThumb() {
		return $this->owner->getFormattedImage('MiniThumbSize');
	}	
	
	function Thumb() {
		return $this->owner->getFormattedImage('ThumbSize');
	}	

	function Effect() {
		if (class_exists("Floatbox")) Floatbox::initialize();
		return '<a rel="floatbox" href="'.$this->owner->Full()->Link().'" title="Obrázok"><img src="'.$this->owner->Thumb()->Link().'" alt="Obrázok"></a>';
	}
	
}

// my old class, not used now, but needed for backward compatibiliy
class MyImage extends Image {}
// EOF