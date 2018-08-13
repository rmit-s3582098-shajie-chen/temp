/**
 * 
 */ 
		 // Create a request variable and assign a new XMLHttpRequest object to it.
		  	var request = new XMLHttpRequest();
	
		  	// Open a new connection, using the GET request on the URL endpoint
		  	request.open('GET', 'https://samples.openweathermap.org/data/2.5/weather?id=2172797&appid=161b4720f54d9095f44a1068f54a7104', true);
		  	getJSON('https://samples.openweathermap.org/data/2.5/weather?id=2172797&appid=161b4720f54d9095f44a1068f54a7104');
		  	request.onload = function () { 
		  		   var data = JSON.parse(this.response); 
		  		   document.getElementById("demo").value += data.name + "\n";  
		  		   document.getElementById("demo").value += data.name + "\n";  
		  		   document.getElementById("demo").value += data.whether.description+ "\n";  
		  		   document.getElementById("demo").value += data.main.temp+ "\n";  
		  	}
	
		  	// Send request
		  	request.send(null);