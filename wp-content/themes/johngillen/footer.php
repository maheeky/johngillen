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
            <div class="body-section animate-slide">
                <h3>Contact me</h3>
                <h4 class="blue-header">Looking to get in touch?</h4>
                <p>
                    Looking to get in touch? Not a problem, just enter your information here to send me a message, or use the provided contact details to ask my any questions.
                </p>
                <ul class="contact-details">
                    <li><strong>Tel:</strong> 0151 1234 1234</li>
                    <li><strong>Email:</strong> johngillen@Nadresearch.co.uk</li>
                </ul>
                
                <form name="contact" id="contact-form">
                    <div class="form-row">
                        <input type="text" class="form-field form-text" name="name" placeholder="Name" required>
                    </div>
                    <div class="form-row">
                        <input type="phone" class="form-field form-phone" name="phone" placeholder="Phone number" required>
                        <input type="text" class="form-field form-text" name="name" placeholder="Best time to call" required>
                    </div>
                    <div class="form-row">
                        <input type="email" class="form-field form-email" name="email" placeholder="Email address" required>
                    </div>
                    <div class="form-row">
                        <textarea name="message" class="form-field form-textarea" placeholder="Message"></textarea>
                    </div>
                    <div class="form-row">
                        <input type="submit" value="Submit" name="contact-submit">
                    </div>
                </form>

            </div>
        </footer>
    </body>
</html>
