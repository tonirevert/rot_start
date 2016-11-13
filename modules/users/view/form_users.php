
<p><h2>New user:</h2></p>
 <div class="status alert alert-success" style="display: none"></div>
<form name="formusers" id="formusers" class="formusers">
    <br>

      <p>
         <label for="dni">DNI: </label>
         <input type="text" name="dni" id="dni" required="required" placeholder="DNI"/>
         <span id="error_dni" class="styerror"></span>
      </p>
      <p>
         <label for="name">Name:</label>
         <input type="text" name="name" id="name" required="required" placeholder="Name"/>
         <span id="error_name" class="styerror"></span>
      </p>
      <p>
        <label for="surnames">Surname/s:</label>
        <input type="text" name="surnames" id="surnames" required="required" placeholder="Surname/s"/>
        <span id="error_surnames" class="styerror"></span>
      </p>
      <p>
        <label for="mobile">Mobile:</label>
        <input type="text" name="mobile" id="mobile" placeholder="Mobile">
      </p>
      <p>
        <label for="email">e-mail:</label>
        <input type="email" name="email" id="email" required="required" placeholder="email"/>
        <span id="error_email" class="styerror"></span>
      </p>
      <p>
        <label for="password">Password:</label>
  		  <input type="password" name="password" id="password" placeholder="Password"/>
        <span id="error_password" class="styerror"></span>
      </p>
      <p>
        <label for="password2">Repeat password:</label>
        <input type="password" name="password2" id="password2" placeholder="Repeat password"/>
        <span id="error_password2" class="styerror"></span>
      </p>
      <p>
        <label for="date_birthday">Birth date:</label>
        <input type="text" name="date_birthday" id="date_birthday" placeholder="Birthday" readonly="readonly"/>
        <span id="error_date_birthday" class="styerror"></span>
      </p>
      <p>
        <label for="user_type">Type:</label>
        Individual <input name="type" id="type" type="radio" value="individual" checked>
        Enterprise <input name="type" id="type" type="radio" value="enterprise">
      </p>
      <p>
        <label for="address">Adress:</label>
        <label for="country">Country:</label>
        <select name="country" id="country">
        <option selected>Select country</option>
        </select>
        <span id="error_country" class="styerror"></span>
      </p>
      <p>
        <label for="province">Province:</label>
        <select name="province" id="province">
        <option selected>Select province</option>
        </select>
        <span id="error_province" class="styerror"></span>
      </p>
      <p>
        <label for="city">City:</label>
        <select name="city" id="city">
        <option selected>Select city</option>
        </select>
        <span id="error_city" class="styerror"></span>
      </p>
      <p>
        <label for="street">Street:</label>
        <input type="text" name="street" id="street" required="required" placeholder="Street"/>
        <span id="error_street" class="styerror"></span>
      </p>
      <p>
        <span id="error_avatar" class="styerror"></span>
      </p>

      <div class="form-group" id="progress">
      <div id="bar"></div>
      <div id="percent">0%</div >
      </div>

      <div class="msg"></div>
      <div id="dropzone" class="dropzone"></div><br/>

      <input type="button" name="submit_user" id="submit_user" value="Submit">

</form>
<!--Start of dropzone scripts-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/3.51/jquery.form.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/4.0.1/min/dropzone.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/4.0.1/dropzone.css">
<!--End of dropzone scripts-->
<script type="text/javascript" src="<?php echo USERS_JS_PATH ?>users.js"></script>
<link rel="stylesheet" href="<?php echo USERS_CSS_PATH ?>users.css">
