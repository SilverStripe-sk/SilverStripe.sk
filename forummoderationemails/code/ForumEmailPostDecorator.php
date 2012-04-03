<?php
/*
 * code borrowed from https://github.com/gordonbanderson/SilverstripeForumModerationEmails
 * minor changes, so default site admin will be informed, no need to touch mysite/_config.php
 */
	class ForumEmailPostDecorator extends DataObjectDecorator {
		function onAfterWrite() {		
			$email = new Email();
			$email->setFrom(Email::getAdminEmail());
			$email->setTo(Email::getAdminEmail());
			$email->setSubject('Moderation: New Forum Posting - ' . $this->owner->Title);
			$email->setTemplate('Forum_ModeratorNotification');
			$email->populateTemplate(array(
				'AbsoluteLink' => $this->owner->AbsoluteLink(),
				'Content' => $this->owner->Content
			));
			$email->send();
			parent::onAfterWrite();
		}
	}

//EOF

	