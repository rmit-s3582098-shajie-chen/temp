<%@ page trimDirectiveWhitespaces="true" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<t:staticPage currentPage="terms">
  <main>
  	<head>
		 <link rel="stylesheet" href="terms_css_style.css">
  		<style>
		body {font-family: Arial, Helvetica, sans-serif;}
		
		/* The Modal (background) */
		.modal {
		    display: none; /* Hidden by default */
		    position: fixed; /* Stay in place */
		    z-index: 1; /* Sit on top */
		    padding-top: 100px; /* Location of the box */
		    left: 0;
		    top: 0;
		    width: 100%; /* Full width */
		    height: 100%; /* Full height */
		    overflow: auto; /* Enable scroll if needed */
		    background-color: rgb(0,0,0); /* Fallback color */
		    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
		}
		
		/* Modal Content */
		.modal-content {
		    position: relative;
		    background-color: #fefefe;
		    margin: auto;
		    padding: 0;
		    border: 1px solid #888;
		    width: 80%;
		    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
		    -webkit-animation-name: animatetop;
		    -webkit-animation-duration: 0.4s;
		    animation-name: animatetop;
		    animation-duration: 0.4s
		}
		
		/* Add Animation */
		@-webkit-keyframes animatetop {
		    from {top:-300px; opacity:0} 
		    to {top:0; opacity:1}
		}
		
		@keyframes animatetop {
		    from {top:-300px; opacity:0}
		    to {top:0; opacity:1}
		}
		
		/* The Close Button */
		.close {
		    color: white;
		    float: right;
		    font-size: 28px;
		    font-weight: bold;
		}
		
		.close:hover,
		.close:focus {
		    color: #000;
		    text-decoration: none;
		    cursor: pointer;
		}
		
		.modal-header {
		    padding: 2px 16px;
		    background-color: #5cb85c;
		    color: white;
		}
		.normal-header {
		
		    padding: 2px 16px;
		    background-color: #5cb85c;
		    color: white;
		}
		.modal-body {padding: 2px 16px;}
		
		.modal-footer {
		    padding: 2px 16px;
		    background-color: #5cb85c;
		    color: white;
		}
		</style>

  	</head>
  	<br>
  	<br>
  	<br>
    <h1 class="color-orange">
      Terms of Use
    </h1>
    <img class="img-responsive" src="images/terms.png">
    <p>
      By using <b>TEAMMATES</b>, you agree to the following terms of use:
    </p>
<div id="myBtn2" class="back">
    <div class="button_base b07_3d_double_roll">
        <div>Term of Use</div>
        <div>Term of Use</div>
        <div>Term of Use</div>
        <div>Term of Use</div>
    </div>
</div>
<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>Quality of service </h2>
    </div>
    <div class="modal-body">
      <p>We take pride in our work and we shall do our best to provide good service to users. However, the service is provided "AS IS" and WITHOUT ANY WARRANTY.
      You use TEAMMATES at your own discretion and risk and you will be solely responsible for any damages that may arise from such use.</p>
    </div>
    <br>
    <div class="normal-header">
      <h2>Changes to the service </h2>
    </div>
    <div class="modal-body">
      <p> We strive to improve TEAMMATES continuously and provide its services free for as long as we can. However, TEAMMATES services may change or be terminated at our discretion.</p>
    </div>
    <br>
    <div class="normal-header">
      <h2>Security and privacy of data</h2>
    </div>
    <div class="modal-body">
      <p> Our data are stored in Google servers and are protected by the same security mechanisms that protect Google data.
      However, you are advised not to store in TEAMMATES any 'sensitive' data such as credit card numbers and passwords.<br>
      We do not use TEAMMATES data for research. Only TEAMMATES administrators (not developers) have access to data, for performance monitoring and troubleshooting purposes.</p>
    </div>
    
    
    
  </div>

</div>

	<script>
	// Get the modal
	var modal = document.getElementById('myModal');
	
	// Get the button that opens the modal
	var btn = document.getElementById("myBtn2");
	
	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];
	
	// When the user clicks the button, open the modal 
	btn.onclick = function() {
	    modal.style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	    modal.style.display = "none";
	}
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}
	</script>
  </main>
</t:staticPage>
