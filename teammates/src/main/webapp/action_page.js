/**
 * 
 */
$('#btn').click(function(){
	var url = 'https://hooks.slack.com/services/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';
	var nameValue =  document.getElementById("contactName").value;
	var emailValue =  document.getElementById("contactEmail").value;
	var contactCommentValue =  document.getElementById("contactComment").value;
	document.write( nameValue.replace(/\s/g, '') );
	document.write( emailValue.replace(/\s/g, '') ); 
	if(emailValue == "")
		emailValue = "sXXXXXX@rmit.edu.au"
	if(nameValue == "")
		nameValue = "annoymous";
	if(contactCommentValue == "")
		contactCommentValue = "want to talk nothing";
	var payload={
		    "attachments": [
		        {
		            "fallback": "Required plain-text summary of the attachment.",
		            "color": "#36a64f",
		            "pretext": "The message from teammate",
		            "author_name": nameValue,
		            "title": emailValue,
		            "text": contactCommentValue
		        }
		    ]
		};
	$.post(url,JSON.stringify(payload),function(data){
		$('#result').text(data);
		console.log("the post successfully");
	})
	 location.reload();
})