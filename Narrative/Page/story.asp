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

  <meta charset="utf-8">
  <title>jQuery UI Sortable - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <style>
  #sortable { list-style-type: none; margin: 0; padding: 0; width: 100%; }
  #sortable li { margin: 0 3px 3px 3px; padding: 0.4em; padding-left: 1.5em; font-size: 1.4em; height: 18px; }
  #sortable li span { position: absolute; margin-left: -1.3em; }
  </style>
  <script>

  $(function() {
    $( "#sortable" ).sortable();
    $( "#sortable" ).disableSelection();
  });
  </script>
</head>
<body>

 <center>
 <h1>Example Task</h1>
 <form id='mturk_form' method='POST'>
<p id="demo"></p>
<script>
 var story = [
 "Sam lives in New Orleans. <br>",
 "William is Sam’s father. <br>",
 "William lives in New Orleans. <br>",
 "Candice is Sam’s mother. <br>",
 "Candice lives in New Orleans. <br>",
 "<br>",
 "William and Candice get married.  <br>",
 "William and Candice have a child named Mary.  <br>",
 "Mary grows up.  <br>",
 "Mary intends to work for Google in Denver.  <br>",
 "Mary intends to have a child.  <br>",
 "Mary applies to Stanford.  <br>",
 "Stanford rejects Mary’s application. <br>",
 "Mary applies to the University of Denver. <br>",
 "The University of Denver accepts Mary’s application. <br>",
 "Mary moves to Denver. <br>",
 "Mary attends the University of Denver. <br>",
 "Sam lives in Denver. <br>",
 "Sam intends to live on a farm in rural Idaho. <br>",
 "Sam intends to have a child. <br>",
 "Mary meets Sam. <br>",
 "Mary and Sam fall in love. <br> ",
 "Sam gets sick. <br>",
 "Mary cares for Sam. <br>",
 "Sam gets better. <br>",
 "Mary applies for a job at Google in Denver. <br>",
 "Google accepts Mary’s application. <br>",
 "Mary attends her job at Google.<br>",
 "Mary and Sam get married.<br>",
 "Mary and Sam have a child.<br>"];

     setTimeout(function(){ document.getElementById("demo").innerHTML += story[0]} , 1000);
     setTimeout(function(){ document.getElementById("demo").innerHTML += story[1]} , 2000);
     setTimeout(function(){ document.getElementById("demo").innerHTML += story[2]} , 3000);
     setTimeout(function(){ document.getElementById("demo").innerHTML += story[3]} , 4000);
     setTimeout(function(){ document.getElementById("demo").innerHTML += story[4]} , 5000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[5]} , 6000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[6]} , 7000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[7]} , 8000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[8]} , 9000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[9]} , 10000);
 setTimeout(function(){ document.getElementById("demo").innerHTML += story[10]} , 11000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[11]} , 12000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[12]} , 13000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[13]} , 14000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[14]} , 15000);
 setTimeout(function(){ document.getElementById("demo").innerHTML += story[15]} , 16000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[16]} , 17000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[17]} , 18000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[18]} , 19000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[19]} , 20000);
 setTimeout(function(){ document.getElementById("demo").innerHTML += story[21]} , 21000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[22]} , 22000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[23]} , 23000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[24]} , 24000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[25]} , 25000);
 setTimeout(function(){ document.getElementById("demo").innerHTML += story[26]} , 26000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[27]} , 27000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[28]} , 28000);
    setTimeout(function(){ document.getElementById("demo").innerHTML += story[29]} , 29000);
</script>
    <br>
    <br>
What would have happened if Google rejected Mary?
    <br>
Please order the following answers into the most likely choices.
    <br>
   <button type="button" onclick="prepareAndSubmitForm()">OK</button>
    <br>
     <br>
 </form>
</center>
<ul id="sortable">
  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s" value='2'></span>Sam and Mary would move to Florida and get Married.</li>
  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s" value='4'></span>Sam would move to Idaho and Mary would work at Google in Denver.</li>
  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s" value='3'></span>Mary would work at Google and marry Sam.</li>
  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s" value='1'></span>Sam and Mary would get married and move to Idaho</li>
  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s" value='5'></span>Mary would move to Florida and Sam would move to Idaho</li>
  <li class="ui-state-default"><span class="ui-icon ui-icon-arrowthick-2-n-s" value='6'></span>Sam would move to Idaho.</li>
</ul>
</body>
</html>
