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
			  	      "Latitude is " + latitude + "° <br/>"+" Longitude is " + longitude + "°";
			  	    $("#temp").html("Temp: "+ weatherData.main.temp + "° F");
			        $("#minutely").html(weatherData.weather.description);
			        $("#nameOfCity").html(weatherData.name);
			  	}

			  	function error() {
			  		location.innerHTML = "Loading..<br/> make sure the internt connect stable ...";
			  	}
		  	}

		  	function getSportNews()
		  	{
		  	   var html = '',  el = document.getElementById("kome");
		  		var apiCall = 'https://www.thesportsdb.com/api/v1/json/1/all_sports.php';
		  		$.getJSON(apiCall, sportsCallBack);
		  		function sportsCallBack(data)
		  		{
		  			var dataSet = data.sports; 
		  			console.log("YThe length of the dataSet is" + dataSet.length);
		  			for(var i = 0 ; i < dataSet.length; i ++)
		  				{
		  					//get the individual sport info 
			  				var element = document.getElementById("div1");	
			  				var sport = dataSet[i];
			  				//add the line break 
			  				var linebreak = document.createElement("br");
			  				
		  					//get the title
			  			    var x = document.createElement("H1");
			  			    var t = document.createTextNode(sport["strSport"]);
			  			    x.appendChild(t);
			  			    x.style.fontSize =  "xx-large"; 
			  			    element.appendChild(x);
		  				    element.appendChild(linebreak);
		  					//get the individual image
		  					var x = document.createElement("IMG");
		  				    x.setAttribute("src", sport["strSportThumb"]);
		  				    x.setAttribute("width", "304");
		  				    x.setAttribute("height", "228");
		  				    x.setAttribute("alt", "The sport image");
		  				    element.appendChild(x);
		  				    element.appendChild(linebreak);
		  					//get the indivudual description 
			  				var para = document.createElement("H2");
			  				if(sport["strSportDescription"] == null)
			  					console.log("The description is null . \n");
			  				var node = document.createTextNode(sport["strSportDescription"]);
			  				para.appendChild(node);
			  				element.appendChild(para);
			  				element.appendChild(linebreak);
		  				}
		  			
		  		}
		  		if(html != null)
		  			el.innerHTML = html;
		  	}
		  	
			function getAllData()
			{
				getWeather();
				getSportNews();
			}
			 getAllData();

