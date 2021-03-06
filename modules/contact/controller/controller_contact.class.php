<?php
  class controller_contact{

    public function __construct() {
      $_SESSION['module'] = "contact";
    }

    public function view_contact(){

        loadView(CONTACT_VIEW_PATH, 'contact.php');

    }


    public function process_contact(){

      if($_POST['token'] === "contact_form"){
        // echo $_POST['inputMessage'];
        /////Email send to the user
        $arrArgument = array(
            'type' => 'contact',
            'token' => '',
            'inputName' => $_POST['inputName'],
            'inputEmail' => $_POST['inputEmail'],
            'inputSubject' => $_POST['inputSubject'],
            'inputMessage' => $_POST['inputMessage']
        );
        set_error_handler('ErrorHandler');
        try{
            echo "<div class='alert alert-success'>".enviar_email($arrArgument)." </div>";
        } catch (Exception $e){
            echo "<div class='alert alert-error'>Server error. Try later...</div>";
        }
        restore_error_handler();

        /////Email send to the admin
        $arrArgument = array(
            'type' => 'admin',
            'token' => '',
            'inputName' => $_POST['inputName'],
            'inputEmail' => $_POST['inputEmail'],
            'inputSubject' => $_POST['inputSubject'],
            'inputMessage' => $_POST['inputMessage']
        );
        set_error_handler('ErrorHandler');
        try{
            sleep(5);
            echo "<div class='alert alert-success'>".enviar_email($arrArgument)." </div>";
        } catch (Exception $e){
            echo "<div class='alert alert-error'>Server error. Try later...</div>";
        }
        restore_error_handler();
      }else{
        echo "<div class='alert alert-error'>Server error. Try later...</div>";
      }
    }//End process contact
  }//End controller_main
