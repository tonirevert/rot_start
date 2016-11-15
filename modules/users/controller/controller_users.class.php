<?php
	class controller_users {

      public function __construct(){

          include(FUNCTIONS_USERS . "functions.inc.php");
          include(UTILS . "upload.php");
          //include(UTILS . "common.inc.php");
          include LOG_DIR;
          //include(UTILS . "filters.inc.php");
          //include(UTILS . "utils.inc.php");
          //include(UTILS . "response_code.inc.php");

          $_SESSION['module'] = "users";

      }

      public function form_users() {
        require_once(VIEW_PATH_INC."header.php");
        require_once(VIEW_PATH_INC."menu.php");

        echo '<br><br>';
        loadView('modules/users/view/','form_users.php');

        require_once(VIEW_PATH_INC."footer.html");
      }//create users

			public function result_users(){
        require_once(VIEW_PATH_INC."header.php");
        require_once(VIEW_PATH_INC."menu.php");

        echo '<br><br><br><br><br><br><br>';
        loadView('modules/users/view/','result_users.php');

        require_once(VIEW_PATH_INC."footer.html");
      }//result users

			public function upload_users(){
        if ((isset($_GET["upload"])) && ($_GET["upload"] == true)){
              $result_avatar = upload_files();
              $_SESSION['result_avatar'] = $result_avatar;
        }
      }//upload_users

			public function alta_users(){
        if((isset($_POST["alta_users_json"]))){
          $jsondata= array();

          $usersJSON = json_decode($_POST["alta_users_json"], true);
          $result = validate_user($usersJSON);

          if(empty($_SESSION['result_avatar'])){
              $_SESSION['result_avatar'] = array('result'=>true,'error'=>"",'data'=>'./media/default-avatar.png');
          }
          $result_avatar = $_SESSION['result_avatar'];

          if(($result['result']) && ($result_avatar['result'])){
              $arrArgument = array(
                  'dni' => $result['data']['dni'],
                  'name' => $result['data']['name'],
                  'surnames' => $result['data']['surnames'],
									'mobile' => $result['data']['mobile'],
                  'email' => $result['data']['email'],
                  'password' => $result['data']['password'],
                  'date_birthday' => $result['data']['date_birthday'],
                  'type' => $result['data']['type'],
                  'country' => $result['data']['country'],
                  'province' => $result['data']['province'],
                  'city' => $result['data']['city'],
                  'street' => $result['data']['street'],
                  'avatar' => $result_avatar['data']

              );
              $_SESSION['result_avatar'] = array();

              $arrValue = false;

              set_error_handler('ErrorHandler');
              try{
                  $arrValue = loadModel(MODEL_USERS, "users_model", "create_users", $arrArgument);
              }catch (Exception $e){
                  $arrValue = false;
              }
              restore_error_handler();

              if($arrValue){
                  $message="User registration correct, please verify your email using the mail validation instructions";

                  $_SESSION['user']=$arrArgument;
                  $_SESSION['message']=$message;

                  $callback="index.php?module=users&function=result_users";

                  $jsondata['success'] = true;
                  $jsondata['redirect'] = $callback;
                  echo json_encode($jsondata);
                  exit;
              }else{
                  //showErrorPage(1, "", 'HTTP/1.0 503 Service Unavaiable', 503);
									$callback="index.php?module=error&function=error";

                  $jsondata['success'] = true;
                  $jsondata['redirect'] = $callback;
                  echo json_encode($jsondata);
                  exit;
              }
          }else{
              $jsondata["success"] = false;
              $jsondata["error"] = $result['error'];
              $jsondata["error_avatar"] = $result_avatar['error'];

              $jsondata["success1"] = false;
              if($result_avatar['result']){

                  $jsondata['success1'] = true;
                  $jsondata["img_avatar"] = $result_avatar['data'];
              }

              header('HTTP/1.0 404 Not Found', true, 404);
              echo json_encode($jsondata);
              //exit;
          }
        }
      }//End register_users

      public function delete_users(){
        if ((isset($_GET["delete"])) && ($_GET["delete"] == true)){
            //echo json_encode("Hello world from delete in controller_products.class.php");
            $_SESSION['result_avatar'] = array();
            $result = remove_files();
            if($result === true){
              echo json_encode(array("res" => true));
            }else{
              echo json_encode(array("res" => false));
            }
            //echo json_decode($result);
          }
      }//End delete users

      public function load_users(){
        if (isset($_GET["load"]) && $_GET["load"] == true) {
            $jsondata = array();
            if (isset($_SESSION['user'])) {
                //echo debug($_SESSION['user']);
                $jsondata["user"] = $_SESSION['user'];

            }
            if (isset($_SESSION['message'])) {
                //echo $_SESSION['msje'];
                $jsondata["message"] = $_SESSION['message'];
            }

            if($jsondata){
              close_session();
              echo json_encode($jsondata);
              exit;
            }else{
              close_session();
              showErrorPage(1, "", 'HTTP/1.0 404 Not Found', 404);
            }
          }
      }//End load users

      public function load_data_users(){
        if ((isset($_GET["load_data"])) && ($_GET["load_data"] == true)) {
          $jsondata = array();

          if (isset($_SESSION['user'])) {
              $jsondata["user"] = $_SESSION['user'];
              echo json_encode($jsondata);
              exit;
          } else {
              $jsondata["user"] = "";
              echo json_encode($jsondata);
              exit;
          }
        }
      }//end load data users

      public function load_country_users(){
        if(  (isset($_GET["load_country"])) && ($_GET["load_country"] == true)  ){
              $json = array();

              $url = 'http://www.oorsprong.org/websamples.countryinfo/CountryInfoService.wso/ListOfCountryNamesByName/JSON';


              set_error_handler('ErrorHandler');
              try{
                  $json = loadModel(MODEL_USERS, "users_model", "obtain_countries", $url);
              }catch(Exception $e){
                  $json = array();
              }
              restore_error_handler();

              if($json){
                echo $json;
                exit;
              }else{
                $json = "error";
                echo $json;
                exit;
              }
        }
      }//Load country users

      public function load_provinces_users(){
        if(  (isset($_GET["load_provinces"])) && ($_GET["load_provinces"] == true)  ){
      		$jsondata = array();
          $json = array();

      		set_error_handler('ErrorHandler');
          try{
              $json = loadModel(MODEL_USERS, "users_model", "obtain_provinces");
          }catch(Exception $e){
              $json = array();
          }
          restore_error_handler();

      		if($json){
      			$jsondata["provinces"] = $json;
      			echo json_encode($jsondata);
      			exit;
      		}else{
      			$jsondata["provinces"] = "error";
      			echo json_encode($jsondata);
      			exit;
      		}
      	}
      }//End load provinces users

      public function load_cities_users(){
        if(  isset($_POST['idPoblac']) ){
          $jsondata = array();
          $json = array();

          set_error_handler('ErrorHandler');
          try{
              $json = loadModel(MODEL_USERS, "users_model", "obtain_cities", $_POST['idPoblac']);
          }catch (Exception $e){
              $json = array();
          }
          restore_error_handler();

          if($json){
            $jsondata["cities"] = $json;
            echo json_encode($jsondata);
            exit;
          }else{
            $jsondata["cities"] = "error";
            echo json_encode($jsondata);
            exit;
          }
        }
      }//End load cities users
  }//End controller users
