<%@ page trimDirectiveWhitespaces="true" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<t:staticPage currentPage="contact">

  <main class="container">
  	<head>
	  	<script type = "text/javascript" src = "jquery-3.2.1.min.js"></script> 
	  	<script type='text/javascript'>
            $(function () {
                $('#contactEmail').keyup(function () {
                    if ($(this).val() == '') {
                        //Check to see if there is any text entered
                        // If there is no text within the input ten disable the button
                        $('.enableOnInput').prop('disabled', true);
                    } else {
                        //If there is text in the input, then enable the button
                        $('.enableOnInput').prop('disabled', false);
                    }
                });
            }); 
        </script>
	</head>
    <h1 class="color-orange">
      Contact Us
    </h1>
    <body>
    <img class="img-responsive" src="images/contact.png">
      <div class="containerForm">
    	<form method = "post" id = "infoForm">
    		<h4>Send us a message and we'll respond as soon as possible! </h4>
    		<label for="contactName">Name:</label>
    		<input type="text" id="contactName" style="width: 300px" required>
    		<br>
    		<br>
    		<label for="contactEmail">Email:</label>
    		<input type="email" id="contactEmail" style="width: 300px" required>
    		<br>
    		<br>
    		<label for="contactComment">Message: </label>
    		<br>
    		<textarea id="contactComment" name="contactComment" placeholder="Write your message here..." style="width: 345px" rows="10"></textarea>
    		<br>
    		<br>
				<button class = 'enableOnInput' id = "btn"  disabled='disabled'>Submit</button>
    		<br>
    		<div id = "result">
			</div>
    		<br>
    	</form>
    </div>
    <p>
      <b>Email:</b> You can also contact us at the following email addresses
      <br><br>
      Joseph Bulan <a href="mailto:s3628366@student.rmit.edu.au">s3628366@student.rmit.edu.au</a>
      <br>
      Shajie Chen <a href="mailto:s3582098@student.rmit.edu.au">s3582098@student.rmit.edu.au</a>
      <br>
      Reinhart Weismann <a href="mailto:s3554517@student.rmit.edu.au">s3554517@student.rmit.edu.au</a>
      <br>
      Ummil Syazwina Zainab Tengku <a href="mailto:s3575233@student.rmit.edu.au">s3575233@student.rmit.edu.au</a>
    </p>
    <br>
    <br>
    <p>
      <b>Blog:</b> Visit the <a href="http://teammatesonline.blogspot.sg/">TEAMMATES Blog</a> to see our latest updates and information.
    </p>
    <br>
    <p>
      <b>Bug reports and feature requests:</b> Any bug reports or feature requests can be submitted to above email address.
    </p>
    <br>
    <p>
      <b>Interested in joining us?:</b> Visit our <a href="https://github.com/RMIT-SEPT/High-Distinction">Developer Website - High-Distinction</a>.
    </p>
    </body>
			<script type = "text/javascript" src = "action_page.js"></script> 
  </main>
</t:staticPage>
