<?php

function validate_user($value){

  $error = array();
  $valid = true;
  $filter = array(
    'dni' => array(
      'filter'=>FILTER_CALLBACK,
      'options'=>'validate_dni'
    ),

    'name' => array(
      'filter'=>FILTER_VALIDATE_REGEXP,
      'options'=>array('regexp'=>'/^\D{3,30}$/')
    ),

    'surnames' => array(
      'filter'=>FILTER_VALIDATE_REGEXP,
      'options'=>array('regexp'=>'/^[a-zA-Z0-9]*$/')
    ),

    'mobile' => array(
      'filter'=>FILTER_VALIDATE_REGEXP,
      'options'=>array('regexp'=>'/^[+]34\d{9}$/')
    ),

    'email' => array(
      'filter'=>FILTER_CALLBACK,
      'options'=>'validatemail'
    ),

    'password' => array(
      'filter'=>FILTER_VALIDATE_REGEXP,
      'options'=>array('regexp'=>'/^.{6,12}$/')
    ),

    'date_birthday' => array(
      'filter' => FILTER_VALIDATE_REGEXP,
      'options' => array('regexp' => '/\d{2}.\d{2}.\d{4}$/')
    )
    ,

    'country' => array(
      'filter' => FILTER_VALIDATE_REGEXP,
      'options'=>array('regexp'=>'/^[a-zA-Z_]*$/')
    )
    ,

    'province' => array(
      'filter' => FILTER_VALIDATE_REGEXP,
      'options'=>array('regexp'=>'/^[a-zA-Z0-9, _]*$/')
    )
    ,

    'city' => array(
      'filter'=>FILTER_CALLBACK,
      'options'=>'validate_city'
    )
    ,

    'street' => array(
      'filter'=>FILTER_VALIDATE_REGEXP,
      'options' => array('regexp' => '/^[0-9A-Za-z\s]{2,30}$/')
    ),
  );

  $result = filter_var_array($value, $filter);
  $result['type'] = $value['type'];
  $result['password2'] = $value['password2'];

      if ($result['date_birthday']) {
          $datebirthday = validate_datebirthday($value['date_birthday']);

          if (!$datebirthday) {
              $error['date_birthday'] = 'User must have more than 18 years';
              $valid = false;
          }
      }

      if (!$result['dni']) {
          $error['dni'] = 'invalid dni';
          $result['dni'] = $value['dni'];
          $valid = false;
      }
      if (!$result['name']) {
          $error['name'] = 'invalid name';
          $result['name'] = $value['name'];
          $valid = false;
      }
      if (!$result['surnames']) {
          $error['surnames'] = 'invalid surname/s';
          $result['surnames'] = $value['surnames'];
          $valid = false;
      }
      if (!$result['mobile']) {
          $error['mobile'] = 'Invalid mobile must be +34xxxxxxxxx';
          $result['mobile'] = $value['mobile'];
          $valid = false;
      }
      if (!$result['email']) {
          $error['email'] = 'invalid email';
          $result['email'] = $value['email'];
          $valid = false;
      }
      if (!$result['password']) {
          $error['password'] = 'invalid password';
          $result['password'] = $value['password'];
          $valid = false;
      }
      if(!$result['password'] || $result['password']!=$result['password2'] ){
          $error['password'] = 'invalid password repeat';
          $result['password'] = $value['password'];
          $valid = false;
      }
      if (!$result['date_birthday']) {
          $error['date_birthday'] = 'Invalid date birthday';
          $result['date_birthday'] = $value['date_birthday'];
          $valid = false;
      }
      if (!$result['country']) {
          $error['country'] = 'Invalid country';
          $result['country'] = $value['country'];
          $valid = false;
      }
      if (!$result['province']) {
          $error['province'] = 'Invalid province';
          $result['province'] = $value['province'];
          $valid = false;
      }
      if (!$result['city']) {
          $error['city'] = 'Invalid city';
          $result['city'] = $value['city'];
          $valid = false;
      }
      if (!$result['street']) {
          $error['street'] = 'Invalid street';
          $result['street'] = $value['street'];
          $valid = false;
      }
  return $return = array('result' => $valid, 'error' => $error, 'data' => $result);
};//End validate user

function validate_dni($dni){
	$letter = substr($dni, -1);
	$numbers = substr($dni, 0, -1);
	if ( substr("TRWAGMYFPDXBNJZSQVHLCKE", $numbers%23, 1) == $letter && strlen($letter) == 1 && strlen ($numbers) == 8 ){
    return $dni;
    //echo 'valido';
	}else{
    return false;
		//echo 'no valido';
	}
}

function validatemail($email){
    $email = filter_var($email, FILTER_SANITIZE_EMAIL);
    if(filter_var($email, FILTER_VALIDATE_EMAIL)){
      if(filter_var($email, FILTER_VALIDATE_REGEXP, array('options' => array('regexp'=> '/^.{5,50}$/')))){
        return $email;
      }
    }
    return false;
}

function validate_city($city){
    //$city = addslashes($city);
    $city = filter_var($city, FILTER_SANITIZE_STRING);
    return $city;
}

function validate_datebirthday($birthday, $age = 18) {
    if (is_string($birthday)) {
        $birthday = strtotime($birthday);
    }

    // 31536000 is the number of seconds in a 365 days year
    if (time() - $birthday < $age * 31536000) {
        return false;
    }
    return true;
}
