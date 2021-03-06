<%@ tag trimDirectiveWhitespaces="true" %>
<%@ tag description="Generic TEAMMATES Static Page" pageEncoding="UTF-8" %>
<%@ tag import="teammates.common.util.FrontEndLibrary" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<%@ attribute name="jsIncludes" %>
<%@ attribute name="currentPage" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="application-name" content="TEAMMATES - Online Peer Feedback/Evaluation System for Student Team Projects">
    <meta name="keywords" content="Teammates, peer feedback, peer evaluation, student, team, project, free">
    <meta name="description" content="TEAMMATES is an Online Peer Feedback System for student team projects. It is completely free to use. Get your students to evaluate their performance in team projects, and view reports and summaries of their feedback and evaluations.">
    <link type="text/css" href="<%= FrontEndLibrary.BOOTSTRAP_CSS %>" rel="stylesheet">
    <link type="text/css" href="<%= FrontEndLibrary.BOOTSTRAP_THEME_CSS %>" rel="stylesheet">
    <link type="text/css" href="stylesheets/teammatesCommon.css" rel="stylesheet">
    <link rel="shortcut icon" href="/favicon.png">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <title>TEAMMATES - Online Peer Feedback/Evaluation System for Student Team Projects</title>
    <style type="text/css">	
	#sticky {
	  width:100%;
	  padding:5px;
	  padding-bottom:5px;
	  background:black;
	  color:white;
	  font-size:14px;
	  text-align:left;
	  position:fixed;    /*Here's what sticks it*/
	  bottom:0;          /*to the bottom of the body*/
	  left:0;            /*and to the left of the body.*/
	  
	  
	  /*EFFECTS*/
	  border-top:1px solid whitesmoke;
	  background-image:url(http://rs257.pbsrc.com/albums/hh234/tfm448/Snow411.gif~c200)
	  
	}
	#myBtn {
	  display: none;
	  position: fixed;
	  bottom: 65px;
	  right: 30px;
	  z-index: 99;
	  font-size: 18px;
	  border: none;
	  outline: none;
	  background-color: red;
	  color: white;
	  cursor: pointer;
	  padding: 15px;
	  border-radius: 4px;
	}
	
	#myBtn:hover {
	  background-color: #555;
	}
    </style>
  </head>
  <body>
    <div id="mainContainer">
      <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <t:teammatesLogo/>
          </div>
          <div class="collapse navbar-collapse" id="navbar-collapse-1">
            <ul class="nav navbar-nav">
              <li class="${currentPage == 'terms' ? 'active' : ''}"><a href="terms.jsp">Terms of Use</a></li>
              <li class="${currentPage == 'contact' ? 'active' : ''}"><a href="contact.jsp">Contact</a></li>
              <li class="${currentPage == 'about' ? 'active' : ''}"><a href="about.jsp">About Us</a></li>
              <li class="${currentPage == 'features' ? 'active' : ''}"><a href="features.jsp">Features</a></li>
              <li class="${currentPage == 'index' ? 'active' : ''}"><a href="/">Home</a></li>
              <li class="${currentPage == 'news' ? 'active' : ''}"><a href="News.jsp">News</a></li>
              <li class="${currentPage == 'Subscribe' ? 'active' : ''}"><a href="Subscribe.jsp">Subscribe</a></li>
            </ul>
            <form class="navbar-form navbar-right" action="/login" name="login">
              <input type="submit" name="student" class="btn btn-login " id="btnStudentLogin" value="Student Login" label="studentLogin">
              <input type="submit" name="instructor" class="btn btn-login" id="btnInstructorLogin" value="Instructor Login" label="instructorLogin">
            </form>
          </div>
        </div>
      </nav>
      <div id="mainContent" class="container">
        <jsp:doBody />
      </div>
    </div>
    <button onclick="topFunction()" id="myBtn" title="Go to top">Back to Top</button>
	    
	<script>
	// When the user scrolls down 20px from the top of the document, show the button
	window.onscroll = function() {scrollFunction()};
	
	function scrollFunction() {
	    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
	        document.getElementById("myBtn").style.display = "block";
	    } else {
	        document.getElementById("myBtn").style.display = "none";
	    }
	}
	
	// When the user clicks on the button, scroll to the top of the document
	function topFunction() {
	    document.body.scrollTop = 0;
	    document.documentElement.scrollTop = 0;
	}
	</script>
	 
    <script type="text/javascript" src="/js/googleAnalytics.js"></script>
    <script type="text/javascript" src="<%= FrontEndLibrary.JQUERY %>"></script>
    <script type="text/javascript" src="<%= FrontEndLibrary.JQUERY_UI %>"></script>
    <script type="text/javascript" src="<%= FrontEndLibrary.BOOTSTRAP %>"></script>
    ${jsIncludes}
  </body>
  <!--Placehold-->
 
  <footer id="sticky">
  		&copy&nbspHigh-Distinction -Teammate, 2018
  		
  	
  
    <a href="https://www.youtube.com" target="_blank">
        <img id="links" src="/images/youtube.png" width='25' style="float: right; margin: 0px 5px 5px 0px;">
    </a>
    <a href="https://www.facebook.com" target="_blank">
        <img id="links" src="/images/facebook.png" width='25' style="float: right; margin: 0px 5px 5px 0px;">
    </a>  
    <a href="https://www.twitter.com" target="_blank">
        <img id="links" src="/images/twitter.png" width='25' style="float: right; margin: 0px 5px 5px 0px;">
    </a>  
    <a href="https://www.instagram.com" target="_blank">
        <img id="links" src="/images/instagram.png" width='25' style="float: right; margin: 0px 5px 5px 0px;">
    </a>  
    
    <a href="contact.jsp" style="float: right; margin: 0px 5px 5px 0px;">Contact Us</a>
  
  </footer>
</html>
