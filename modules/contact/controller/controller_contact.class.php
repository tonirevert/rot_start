<?php
  class controller_contact{

    public function __construct() {
      include(UTILS. "common.inc.php");
      include LOG_DIR;
      include(UTILS. "response_code.inc.php");
    }

    public function begin(){
        require_once(VIEW_PATH_INC. "/header.php");
        require_once(VIEW_PATH_INC. "/menu.php");

        loadView('modules/contact/view/', 'contact.php');

        require_once(VIEW_PATH_INC."footer.html");
    }

  }//End controller_main
