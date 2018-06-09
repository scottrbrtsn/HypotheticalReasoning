<!doctype html>
 <title>HypotheticalReasoning</title> 
<html lang="en">
<head>
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
 //  var assId = get('assignmentId');
 //  if(assId == "ASSIGNMENT_ID_NOT_AVAILABLE" || assId == ""){
 //   document.getElementById('mturk_form').innerHTML = "You are currently previewing the HIT. You must Accept the HIT before moving forward.";
 //  }
 // }
 /*
 * Updates the form to include the assignmentId taken from the URL, and
 * the appropriate submit URL, depending on whether it was referred from sandbox
 * or production mode. Then submits the form.
 *
 * NOTE:
 *  The submit URL for sandbox mode MUST NOT contain www. 
 * The submit URL for live mode MUST contain www. 
 * (The idea is to replace "workersandbox" with "www", get it?!)
 */
 function prepareAndSubmitForm(){
			var form = document.getElementById('mturk_form');
			var submitURL;
			var assId = get('assignmentId');

			form.setAttribute("action", '/people/srobert6/story.asp');
			var assIdField = document.createElement("input");
			assIdField.setAttribute("type", "hidden");
			assIdField.setAttribute("name", 'assignmentId');
			assIdField.setAttribute("value", assId);
			form.appendChild(assIdField);
			document.body.appendChild(form);
			form.submit();
 }
 function checkForValidity(){
                 alert("Your items are not in order.");  

						 var idsInorder = $("#sortable2").sortable("toArray");
						 //-----------------^^^^
							console.log(idsInorder);
						 var sorted = ['id1', 'id2', 'id3', 'id4', 'id5', 'id6', 'id7'];
					 console.log(sorted);
						var count =0;
						for(var i = 0; i < 7; i++){
							if (idsInorder[i] === sorted[i]){
								count ++;
							 }
						}

					if (count === 7){
							btn.removeAttribute("disabled");
						 } else {
						 btn.setAttribute("disabled", true);
             
           }
}

  </script>

  <head>
  <meta charset="utf-8">
  <title>jQuery UI Sortable - Handle empty lists</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <style>
  #sortable1, #sortable2, #sortable3 { list-style-type: none; margin: 0; float: left; margin-right: 10px; background: #eee; padding: 5px; width: 143px;}
  #sortable1 li, #sortable2 li, #sortable3 li { margin: 5px; padding: 5px; font-size: 1.2em; width: 120px; }
  </style>

  <script>
  $(function() {
    $( "ul.droptrue" ).sortable({
      connectWith: "ul"
    });

    $( "ul.dropfalse" ).sortable({
      connectWith: "ul",
      dropOnEmpty: false
    });

    $( "#sortable1, #sortable2, #sortable3" ).disableSelection();
  });
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
    <br>
    <button type="button" onclick="checkForValidity()" >OK</button>
    <button type="button" id = 'btn' onclick="prepareAndSubmitForm()" disabled >Submit</button>
    <br>
     <br>
 </form>
</center>

<ul id="sortable1" class="droptrue">
   <li class="ui-state-default" id='id2' value='2'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 2</li>
  <li class="ui-state-default" id='id4' value='4'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 4</li>
  <li class="ui-state-default" id='id3' value='3'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 3</li>
  <li class="ui-state-default" id='id1' value='1'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 1</li>
  <li class="ui-state-default" id='id5' value='5'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 5</li>
  <li class="ui-state-default" id='id7' value='7'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 7</li>
  <li class="ui-state-default" id='id6' value='6'><span class="ui-icon ui-icon-arrowthick-2-n-s"></span>Item 6</li>
</ul>

<ul id="sortable2" class="droptrue">
</ul>
<br style="clear:both">

</body>
</body>

</html>
