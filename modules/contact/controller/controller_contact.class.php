<?php
  class controller_contact{

    public function __construct() {
      include LOG_DIR;
    }

    public function begin(){
        require_once(VIEW_PATH_INC. "/header.php");
        require_once(VIEW_PATH_INC. "/menu.php");

        loadView('modules/contact/view/', 'contact.php');

        require_once(VIEW_PATH_INC."footer.php");
    }

  }//End controller_main
