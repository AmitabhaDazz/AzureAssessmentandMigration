<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<style>
.btn-group button {
  background-color: #4CAF50; /* Green background */
  border: 1px solid green; /* Green border */
  color: white; /* White text */
  padding: 10px 24px; /* Some padding */
  cursor: pointer; /* Pointer/hand icon */
  float: left; /* Float the buttons side by side */
}

/* Clear floats (clearfix hack) */
.btn-group:after {
  content: "";
  clear: both;
  display: table;
}

.btn-group button:not(:last-child) {
  border-right: none; /* Prevent double borders */
}

/* Add a background color on hover */
.btn-group button:hover {
  background-color: #3e8e41;
}
</style>
<body onload="passValue()">
 <span id="subscriptionID" hidden></span>
    <span id="Token" hidden></span>
<h2>Assessment</h2>
<div class="btn-group" style="width:100%">
  <button style="width:50%">Create Movable/Not Movable List</button>
  
  <button style="width:20%" name="downloadList" id="dwnloadLst"></button><br> 
   <form action="./DownloadResources" method="post">
  <button style="width:20%" type="button"  >Download List of Resources</button>
 </form>
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
        Subscription ID  : <input type="text" id="subscriptionID">
          <p>Download List</p>
        </div>
        
        <div class="modal-footer">
        <form action="./DownloadResources" method="post">
          <button type="button" class="btn btn-default" data-dismiss="modal">Download</button>
          </form>
        </div>
      </div>
      
    </div>
  </div>
</div>
</body>
<script>
function passValue(){
var subid = localStorage.getItem('subscriptionID');
var tokenid = localStorage.getItem('Token');
document.getElementById("subscriptionID").innerHTML = subid;
document.getElementById("Token").innerHTML = tokenid;

}
</script>
</html>