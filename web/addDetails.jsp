                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       <%-- 
    Document   : index
    Created on : Oct 5, 2016, 5:20:08 PM
    Author     : pavan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!DOCTYPE html>
<html>
    <title>E-HospitalManagementSystem</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/w3.css">
    <link rel="stylesheet" href="css/w3-theme-black.css">
    <link rel="stylesheet" href="icons/font-awesome.min.css">
    <link rel="stylesheet" href="css/base.css">
   <body id="myPage">


<div class="w3-top">
 <ul class="w3-navbar w3-theme-d2 w3-left-align">
  <li class="w3-hide-medium w3-hide-large w3-opennav w3-right">
    <a class="w3-hover-white w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  </li>
  <li><a href="#" class="w3-teal"><i class="fa fa-home w3-margin-right"></i>Home</a></li>
  <li class="w3-hide-small"><a href="#team" class="w3-hover-white">Patient Requests</a></li>
  <li class="w3-hide-small"><a href="admin.jsp" class="w3-hover-white">Patient Status</a></li>
  <li class="w3-hide-small"><a href="login.jsp" class="w3-hover-white">Add Medicines</a></li>

  <li class="w3-hide-small"><a href="#contact" class="w3-hover-white">Add Staff</a></li>
  
  <li class="w3-hide-small w3-right"><a href="#" class="w3-hover-teal" title="Search"><i class="fa fa-phone"></i></a></li>
 </ul>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-hide w3-hide-large w3-hide-medium">
    <ul class="w3-navbar w3-left-align w3-theme">
      <li><a href="#team">Admin</a></li>
      <li><a href="#work">Patient</a></li>
      
      <li><a href="#contact">Contact Us</a></li>
     
      <li class="w3-dropdown-hover">
      <a href="javascript:void(0);" title="Notifications">Other Branches <i class="fa fa-caret-down"></i></a>     
      <div class="w3-dropdown-content w3-light-grey w3-card-4">
        <a href="#">Nashua</a>
        <a href="#">Manchester</a>
        <a href="#">Londonderry</a>
      </div>
      </li>
    </ul>
  </div>
</div>




<!-- Work Row -->
<hr>
<div class="w3-center">
  <h2>Patient Appointment Requests</h2>
<!--  <p>The color themes have been designed to work harmoniously with each other.</p>-->
</div>
</div>



<!-- Footer -->
<footer class="w3-container w3-padding-32 w3-theme-d1 w3-center">
  <h4>Follow Us</h4>
  <a class="w3-btn-floating w3-teal" href="javascript:void(0)" title="Facebook"><i class="fa fa-facebook"></i></a>
  <a class="w3-btn-floating w3-teal" href="javascript:void(0)" title="Twitter"><i class="fa fa-twitter"></i></a>
  <a class="w3-btn-floating w3-teal" href="javascript:void(0)" title="Google +"><i class="fa fa-google-plus"></i></a>
  <a class="w3-btn-floating w3-teal w3-hide-small" href="javascript:void(0)" title="Linkedin"><i class="fa fa-linkedin"></i></a>
  <p>Powered by <a href="#" target="_blank">pavan</a></p>

  <div style="position:relative;bottom:100px;z-index:1;" class="w3-tooltip w3-right">
    <span class="w3-text w3-padding w3-teal w3-hide-small">Go To Top</span>   
    <a class="w3-btn w3-theme" href="#myPage"><span class="w3-xlarge">
    <i class="fa fa-chevron-circle-up"></i></span></a>
  </div>
</footer>

<!-- Script For Side Navigation -->
<script>
function w3_open() {
    var x = document.getElementById("mySidenav");
    x.style.width = "300px";
    x.style.textAlign = "center";
    x.style.fontSize = "40px";
    x.style.paddingTop = "10%";
    x.style.display = "block";
}
function w3_close() {
    document.getElementById("mySidenav").style.display = "none";
}

// Used to toggle the menu on smaller screens when clicking on the menu button
function openNav() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>

</body>

</html>