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
				
				h1
				{
					color : #D35959; 
				  	font-weight: 400;
				}
				h2
				{
					color : #881A1A; 
					font-weight: 300;
				}
				hr.style11 {
					height: 6px;
					background: url(http://ibrahimjabbari.com/english/images/hr-11.png) repeat-x 0 0;
				    border: 0;
				}
  		</style>
	  	<script type = "text/javascript" src = "jquery-3.2.1.min.js"></script> 
  	</head>
  	
    <h1 class="color-orange">
      News
    </h1>
    </br>  
    <body> 
    	 <h1><div id="nameOfCity"></div></h1>
		 <h1><div id="temp"></div><div id="minutely"></div></h1>
       	 <h2><div id="location"></div></h2>
       	 <hr>
       	 <h1><title>The Sport Session</title></h1>
       	 <h3><div id = "div1"; style="text-align: left;"></div></h3>
       	 <table><td id="kome"></td></table>
       	 
	</body> 
		<script type = "text/javascript" src = "NewsScript.js"></script> 
  </main>
</t:staticPage>
