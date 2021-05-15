<?php
/**
 * The footer partial template
 * 
 * @package johngillen
 */
wp_footer();
?>
        </main> <!-- /.site-wrapper -->
    
        <footer>
            <div class="body-section animate-slide without-image full-width">
                <div class="main">
                    <h2>Contact me</h2>
                    <h3 class="blue">Looking to get in touch?</h3>
                    <p>
                        Looking to get in touch? Not a problem, just enter your information here to send me a message, or use the provided contact details to ask my any questions.
                    </p>
                    <ul class="contact-details">
                        <li><strong>Tel:</strong> 0151 1234 1234</li>
                        <li><strong>Email:</strong> johngillen@Nadresearch.co.uk</li>
                    </ul>
                </div>

                <div class="secondary">
                    <ul class="errors">

                    </ul>
            
                    <form name="contact" id="contact-form" method="POST">
                        <div class="form-row" id="name-row">
                            <input type="text" id="name" class="form-field form-text" value="<?= isset($_POST['name']) ?? ""; ?>" name="name" placeholder="Name*" aria-label="Insert your name" required>
                        </div>
                        <div class="form-row" id="phone-row">
                            <input type="phone" id="phone" class="form-field form-phone" name="phone" placeholder="Phone number*" aria-label="Insert your Phone Number" required>
                            <input type="text" class="form-field form-text" name="name" value="<?= isset($_POST['phone']) ?? ""; ?>" placeholder="Best time to call" aria-label="If there is a best time to call, insert it here." required>
                        </div>
                        <div class="form-row" id="email-row">
                            <input type="email" id="email" class="form-field form-email" value="<?= isset($_POST['email']) ?? ""; ?>" name="email" placeholder="Email address*" aria-label="Insert your e-mail address" required>
                        </div>
                        <div class="form-row" id="message">
                            <textarea name="message" class="form-field form-textarea" aria-label="Insert your message here" placeholder="Message"></textarea>
                        </div>
                        <div class="form-row">
                            <div>
                                <input type="submit" class="btn btn-animated" value="Submit" id="contact-submit" name="contact-submit">
                            </div>
                        </div>
                    </form>

                </div>

            </div>
        </footer>
    </body>
</html>
