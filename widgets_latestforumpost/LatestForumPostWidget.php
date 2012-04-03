<?php
	
	class LatestForumPostWidget extends Widget{

		//The widget info
		static $title = "Nové príspevky vo fóre";
		static $cmsTitle = "Latest Forum Posts";
		static $description = "This widget displays latest forum post on the side bar, you need to install the Forum module to make use of this widget";




		//Return the latest
		function getPosts(){
			$posts = DataObject::get("Post", "", "Created DESC", "" , 3);
			if($posts){
				return $posts;
			}
			else{
				return null;
			}
		}
	}

?>