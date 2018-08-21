/**
 * 
 */
$('#btn').click(function(){
	var url = 'https://hooks.slack.com/services/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';
	var payload={
		    "text": "I am a test message http://slack.com",
		    "attachments": [
		        {
		            "text": "And here’s an attachment!"
		        }
		    ]
		};
	$.post(url,JSON.stringify(payload),function(data){
		$('#result').text(data);
		console.log("the post successfully");
	})
})