<html>
<head>
  <title>HypotheticalReasoning</title> 
  <script type="text/javascript">
 
 	// Gets the value of a parameter from the URL
	function get(name){
		var regexS = "[\\?&]"+name+"=([^&#]*)";
		var regex = new RegExp( regexS );
		var tmpURL = window.location.href;
		var results = regex.exec( tmpURL );
		if( results == null )
			return "";
		else
			return results[1];
	}
	
/* 
	* Checks if the HIT is being previewed. If it is, do whatever you need to do.
	* In this example I'm just replacing the whole form with a message telling them to 
	* accept. 
	*/
	// window.onload = function(){
	// 	var assId = get('assignmentId');
	// 	if(assId == "ASSIGNMENT_ID_NOT_AVAILABLE" || assId == ""){
	// 		document.getElementById('mturk_form').innerHTML = "You are currently previewing the HIT. You must Accept the HIT before moving forward.";
	// 	}
	// }

	/*
	* Updates the form to include the assignmentId taken from the URL, and
	* the appropriate submit URL, depending on whether it was referred from sandbox
	* or production mode. Then submits the form.
	*
	* NOTE:
	* 	The submit URL for sandbox mode MUST NOT contain www. 
	*	The submit URL for live mode MUST contain www. 
	*	(The idea is to replace "workersandbox" with "www", get it?!)
	*/
	function prepareAndSubmitForm(){
		var form = document.getElementById('mturk_form');
		var submitURL;
		var assId = get('assignmentId');
		
		form.setAttribute("action", '/people/srobert6/home.asp');

		var assIdField = document.createElement("input");
		assIdField.setAttribute("type", "hidden");
		assIdField.setAttribute("name", 'assignmentId');
		assIdField.setAttribute("value", assId);
		form.appendChild(assIdField);
	
		document.body.appendChild(form);
		form.submit();
	}

  </script>
</head>

<body>
<center>
	<h1>Example Task</h1>
	<form id='mturk_form' method='POST'>

   Please select your answers in the order of preference <br>
    (i.e. which answer is most likely, second likely, etc...)<br>
    <br>
    <br>
    <br>

   

    <input type='radio' name='1' value='1'>1    <br>
    <input type='radio' name='2' value='2'>2    <br>
    <input type='radio' name='3' value='3'>3    <br>
    <input type='radio' name='4' value='4'>4    <br>
    <input type='radio' name='5' value='5'>5    <br>
    <input type='radio' name='5' value='6'>6    <br>

    <br>
    <button type="button" onclick="prepareAndSubmitForm()">OK</button>
	</form>
</center>
</body>
</html>


 