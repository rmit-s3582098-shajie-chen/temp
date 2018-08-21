/**
 * 
 */
$('#btn').click(function(){
	var url = 'https://hooks.slack.com/services/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';
	var payload={"text": "for test"}; 
	$.post(url,JSON.stringify(payload),function(data){
		$('#result').text(data);
		console.log("the post successfully");
	})
})