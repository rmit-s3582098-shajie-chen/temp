<%@ page trimDirectiveWhitespaces="true" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<t:staticPage currentPage="news">
  <main class="container">
  	<head>
	  	<script type = "text/javascript" src = "jquery-3.2.1.min.js"></script>
	    	<script type="text/javascript">
	    	$(document).ready(function() {
	    	    // This WILL work because we are listening on the 'document', 
	    	    // for a click on an element with an ID of #test-element
	    	    $(document).on("click","#test-element",function() {
	    	        alert("click bound to document listening for #test-element");
	    	    });

	    	    // This will NOT work because there is no '#test-element' ... yet
	    	    $("#test-element").on("click",function() {
	    	        alert("click bound directly to #test-element");
	    	    });

	    	    // Create the dynamic element '#test-element'
	    	    $('body').append('<div id="test-element">Click mee</div>');
	    	});
	 	   </script> 
  	</head>
  	
    <h1 class="color-orange">
      News
    </h1>
    </br>  
    <body> 
    	<textarea id="demo" rows="4" cols="50"></textarea> 
		
		<script type = "text/javascript" src = "NewsScript.js"></script> 
	</body>
  </main>
</t:staticPage>
