<br><br>

<script src="<?php echo CONTACT_LIB_PATH ?>bootstrap-button.js"></script>
<script src="<?php echo CONTACT_LIB_PATH ?>jquery.validate.min.js"></script>
<script src="<?php echo CONTACT_LIB_PATH ?>jquery.validate.extended.js"></script>
<script src="<?php echo CONTACT_JS_PATH ?>contact.js"></script>

<link href="<?php echo CONTACT_CSS_PATH ?>bootstrap.min.css" rel="stylesheet">
<link href="<?php echo CONTACT_CSS_PATH ?>custom.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/js/bootstrap.min.js"></script>


<div class="container">
    <form id="contact_form" name="contact_form" class="form-contact">
        <h2 class="form-contact-heading">Contact Us</h2>

        <div class="control-group">
            <input type="text" id="inputName" name="inputName" placeholder="Name" class="input-block-level" dir="auto" maxlength="100">
        </div>
        <div class="control-group">
            <input type="text" id="inputEmail" name="inputEmail" placeholder="Email *" class="input-block-level" maxlength="100">
        </div>
        <div class="control-group">
            <label for="sel1">Subject</label>
            <select class="form-control" id="inputSubject" name="inputSubject" title="Choose subject">
                <option value="order">Something relative with an order</option>
                <option value="programacion">Contacta con nuestro dpto de programacion</option>
                <option value="work">Work with us</option>
                <option value="projects">Propose new projects</option>
                <option value="suggestions">Suggestions</option>
                <option value="claim">Want to claim something</option>
                <option value="suscribe">Suscribe to our mail-list</option>
                <option value="diferente">Something different</option>
            </select>
        </div>
        <div class="control-group">
              <textarea class="input-block-level" rows="4" name="inputMessage" placeholder="Message *" style="max-width: 100%;" dir="auto"></textarea>
        </div>

        <input type="hidden" name="token" value="contact_form" />

        <input class="btn btn-primary" type="submit" name="submit" id="submitBtn" disabled="disabled" value="send" />

        <img src="<?php echo CONTACT_IMG_PATH ?>ajax-loader.gif" alt="ajax loader icon" class="ajaxLoader" /><br/><br/>

        <div id="resultMessage" style="display: none;"></div>
    </form>
</div> <!-- /container -->
