<%@ page trimDirectiveWhitespaces="true" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<t:staticPage currentPage="news">
  <main class="container">
  	<head>
  		<style>
  				html 
  				{
				  font-family: "Avenir Next", Helevetica, sans-serif;
				  text-align: center;
				}
				
				body {
				  margin: 0 auto;
				}
				
				h1,
				h2  {
				  font-weight: 300;
				}
  		</style>
	  	<script type = "text/javascript" src = "jquery-3.2.1.min.js"></script> 
  	</head>
  	
    <h1 class="color-orange">
      News
    </h1>
    </br>  
    <body> 
		 <h1><div id="temp"></div><div id="minutely"></div></h1>
       	 <h2><div id="location"></div></h2>
	</body> 
		<script type = "text/javascript" src = "NewsScript.js"></script> 
  </main>
</t:staticPage>
