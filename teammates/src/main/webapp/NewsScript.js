/**
 * 
 */ 
		  //get the weather from below API 
		  	function getWeather()
		  	{
		  		//set the html tag
		  		var location = document.getElementById("location");
		  		var apiCall = 'https://samples.openweathermap.org/data/2.5/weather?id=2172797&appid=161b4720f54d9095f44a1068f54a7104';
		  	 	$.getJSON(apiCall, weatherCallback);
		  	 	navigator.geolocation.getCurrentPosition(weatherCallback, error);
			  	function weatherCallback(weatherData)
			  	{
			  		latitude = weatherData.coord.lat;
			  	    longitude = weatherData.coord.lon;
			  	    location.innerHTML =
			  	      "Latitude is " + latitude + "° Longitude is " + longitude + "°";
			  	    $("#temp").html(weatherData.main.temp + "° F");
			        $("#minutely").html(weatherData.weather.description);
			  	}

			  	function error() {
			  		location.innerHTML = "Locating...";
			  	}
		  	}
		  	
		  	getWeather();

