<?php

class Rhema_View_Helper_PrintUserMessage extends Zend_View_Helper_Abstract
{

    /**
     * Shows an user message (error, success, warning)
     *
     * @param UserMessage|Array|String $message
     * @param String $type
     * @param String $title
     */
    public function printUserMessage($message, $type = Rhema_Dto_UserMessageDto::TYPE_WARNING, $title = '', $hide = true)
    {
    	if ($message instanceof Rhema_Dto_UserMessageDto) {
            $title = $message->getTitle();
            $type = $message->getType();
            $hide    = $message->getAutoHide();
            $message = $message->getMessage();

    	} else if (is_array($message)) {
    		$title = $message['title'];
    		$type = $message['type'];
    		$message = $message['message'];
    	}

    	$valid = array(
            Rhema_Dto_UserMessageDto::TYPE_ERROR,
            Rhema_Dto_UserMessageDto::TYPE_SUCCESS,
            Rhema_Dto_UserMessageDto::TYPE_WARNING,
    	);
        if (!(in_array($type, $valid) && $message)) {
            return;
        }

        $this->view->title = $title;
        $this->view->message = $message;
        $this->view->type = $type;
        $this->view->autoHide = $hide;

        return $this->view->layout()->render("partials/user-message");
    }
}
?>