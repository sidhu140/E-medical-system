<%@page import="java.util.Iterator"%>
<%@page import="com.Beans.FormBeans"%>
<%@page import="java.util.ArrayList"%>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       <%-- 
Document   : index
Created on : Oct 5, 2016, 5:20:08 PM
Author     : Pavan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!DOCTYPE html>
<html>
    <title>E-MedicalCenterManagementSystem</title>
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
                <li class="w3-hide-small"><a href="./PatientRequests" class="w3-hover-white">Patient Requests</a></li>
                <li class="w3-hide-small"><a href="./Users" class="w3-hover-white">Users</a></li>
                  <li class="w3-hide-small"><a href="./Staff" class="w3-hover-white">Staff</a></li>
                <li class="w3-hide-small"><a onclick="document.getElementById('id02').style.display='block'" style="width:auto;"class="w3-hover-white">Add Medicines</a></li>

                <li class="w3-hide-small"><a onclick="document.getElementById('id01').style.display='block'" style="width:auto;" class="w3-hover-white">Add Staff</a></li>
                <li class="w3-hide-small"><a onclick="document.getElementById('id05').style.display='block'" style="width:auto;" class="w3-hover-white">Add Blood Donation</a></li>

                <li class="w3-hide-small"><a href="./Logout" class="w3-hover-white"><i class="fa fa-l"></i>Logout</a></li>
                <li class="w3-hide-small w3-right"><a href="#" class="w3-hover-teal" title="Search"><i class="fa fa-phone"></i></a></li>
            </ul>

            <!-- Navbar on small screens -->
            <div id="navDemo" class="w3-hide w3-hide-large w3-hide-medium">
                <ul class="w3-navbar w3-left-align w3-theme">

                    <li ><a href="./PatientRequests" class="w3-hover-white">Patient Requests</a></li>
                    <li ><a href="./Users" class="w3-hover-white">Users</a></li>
                      <li><a href="./Staff" class="w3-hover-white">Staff</a></li>
                    <li ><a onclick="document.getElementById('id02').style.display='block'" style="width:auto;"class="w3-hover-white">Add Medicines</a></li>

                    <li ><a onclick="document.getElementById('id01').style.display='block'" style="width:auto;" class="w3-hover-white">Add Staff</a></li>
                    <li ><a onclick="document.getElementById('id05').style.display='block'" style="width:auto;" class="w3-hover-white">Add Blood Donation</a></li>

                    <li ><a href="./Logout" class="w3-hover-white"><i class="fa fa-l"></i>Logout</a></li>
                    <li class=" w3-right"><a href="#" class="w3-hover-teal" title="Search"><i class="fa fa-phone"></i></a></li>



                </ul>
            </div>
        </div>

        <% String adminMessage = (String) request.getAttribute("adminMessage");
            if (adminMessage != null) {
        %>   
        <div class="alert">
            <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
            <strong>Status</strong> <%= adminMessage%>
        </div>

        <%

            }

        %> 


        <!-- Work Row -->
         <hr>
        <div class="w3-center">
            <h2> Staff Information</h2>
            <!--  <p>The color themes have been designed to work harmoniously with each other.</p>-->
        </div>
     
        <%
        ArrayList<FormBeans> profile=(ArrayList<FormBeans>)request.getAttribute("staff");
         Iterator<FormBeans> it= profile.iterator();
      while(it.hasNext()){
      
      FormBeans rfb=(FormBeans)it.next();

%>
        
       <div class="w3-row-padding">

        <div class="w3-half">
            <div class="w3-card white">
                <div class="w3-container w3-indigo">
                    <h3>Department:<%=rfb.getDepartment()%></h3>
                </div>
                <div class="w3-container">
                    <h3 class="w3-text-indigo"> Name</h3>
                    <p><%=rfb.getName()%></p>
                </div>
                <ul class="w3-ul w3-border-top">
                    <li>
                        <h3>Date Of Join</h3>
                        <p><%=rfb.getDateOfJoin()%></p>
                    </li>
                    <li>
                        <h3>Experience years</h3>
                        <p><%=rfb.getExperience()%></p>
                    </li>
                    <li>
                        <h3>Employee Type</h3>
                        <p><%=rfb.getEmpType()%></p>
                    </li>
                    <li>
                        <h3>Gender</h3>
                        <p><%=rfb.getGenderStaf()%></p>
                    </li>
                </ul>
              
            </div>
        </div>
<%}%>
</div>
        <!--Add Staff-->

        <div id="id01"class="modal w3-row-padding">


            <div class="w3-form">
                <form class="w3-container w3-card-4 modal-content animate" action="./AddStaff">
                    <div class="imgcontainer">

                        <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                        <h2>Add Staff</h2>
                    </div>

                    <div class="w3-group">      
                        <input class="w3-input" type="text"name="name" required>
                        <label class="w3-label">Name</label>
                    </div>
                    <div class="w3-group">      
                        <input class="w3-input" type="number" name="exp"required>
                        <label class="w3-label ">Experience</label>
                    </div>
                    <div class="w3-group">      
                        <input class="w3-input" type="text"name="department" required>
                        <label class="w3-label">Department</label>
                    </div>
                    <div class="w3-group">      
                        <input class="w3-input" type="date"name="dateofjoin" required>
                        <label class="w3-label">Date of Joining</label>
                    </div>

                    <div class="w3-group">
                        <input id="male" class="w3-radio" type="radio" name="gender" value="male" checked>
                        <label class="w3-validate">Male</label>

                        <input id="female" class="w3-radio" type="radio" name="gender" value="female">
                        <label class="w3-validate">Female</label>

                    </div>

                    <div class="w3-group ">

                        <select class="w3-input w3-label" name="emptype" required="required" id="category-id" name="category">
                            <option value="None">SELECT CATEGORY</option>
                            <option value="Nurse">Nurse</option>
                            <option value="Doctor">Doctor</option>
                            <option value="Compounder">Compounder</option>

                            <option value="Other">Other</option>
                        </select>
                        <label class="w3-label">Employee Type</label>
                    </div>

                    <div class="w3-group">      
                        <button type="submit" class="w3-hover-teal">Add Staff</button>
                    </div>

                </form>

            </div></div>
    </div>

    <script>
        // Get the modal
        var modal = document.getElementById('id01');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
    <!--end staff-->

    <!--add medicine-->


    <div id="id02"class="modal w3-row-padding">

        <div class="w3-form">
            <form class="w3-container w3-card-4 modal-content animate" action="./AddMedicines">
                <div class="imgcontainer">

                    <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
                    <h2>Add Medicines</h2>
                </div>

                <div class="w3-group">      
                    <input class="w3-input" type="text"name="mname" required>
                    <label class="w3-label">Medicine Name</label>
                </div>
                <div class="w3-group">      
                    <input class="w3-input" type="text"name="mcompany" required>
                    <label class="w3-label ">Medicine Company</label>
                </div>
                <div class="w3-group">

                    <select class="w3-input w3-label" name="hbranch" required="required" id="category-id" name="category">
                       <option value="None">SELECT AREA</option>
                        <option value="Nashua">Nashua</option>
                        <option value="Manchester">Manchester</option>
                        <option value="Londonderry">Londonderry</option>

                        <option value="Other">Other</option>
                    </select>
                    <label class="w3-label">Hospital Branch</label>
                </div>
                <div class="w3-group">      
                    <input class="w3-input w3-label" type="date" name="mdate"required>
                    <label class="w3-label">Manufacturing Date</label>
                </div>
                <div class="w3-group">      
                    <input class="w3-input w3-label" type="date" name="exdate"required>
                    <label class="w3-label">Expiry Date</label>
                </div>
                <div class="w3-group">      
                    <input class="w3-input" type="text" name="lname"required>
                    <label class="w3-label">Label Name </label>
                </div>



                <div class="w3-group">      
                    <button type="submit" class="w3-hover-teal">Add Medicine</button>
                </div>

            </form>

        </div></div>
</div>

<script>
    // Get the modal
    var modal = document.getElementById('id02');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>


<!--end medicine-->
<!--add blood information-->

<div id="id05"class="modal w3-row-padding">

    <div class="w3-form">
        <form class="w3-container w3-card-4 modal-content animate" action="./AddBloodInformation">
            <div class="imgcontainer">

                <span onclick="document.getElementById('id05').style.display='none'" class="close" title="Close Modal">&times;</span>
                <h2>Add Blood Group Information</h2>
            </div>

            <div class="w3-group">      
                <input class="w3-input" type="text"name="dname" required>
                <label class="w3-label">Donor Name</label>
            </div>
            <div class="w3-group">      
                <input class="w3-input" type="number"name="dage" required>
                <label class="w3-label ">Donor Age</label>
            </div>
            <div class="w3-group">

                <select class="w3-input w3-label" name="group" required="required" id="category-id" name="category">
                    <option value="None">SELECT BLOOD GROUP</option>
                    <option value="A+">A+</option>
                    <option value="A-">A-</option>
                    <option value="B+">B+</option>

                    <option value="B-">B-</option>
                    <option value="O+">O+</option>
                    <option value="O-">O-</option>
                </select>
                <label class="w3-label">Blood Group</label>
            </div>
            <div class="w3-group">
                <input id="male" class="w3-radio" type="radio" name="gender" value="male" checked>
                <label class="w3-validate">Male</label>

                <input id="female" class="w3-radio" type="radio" name="gender" value="female">
                <label class="w3-validate">Female</label>

            </div>
            <div class="w3-group">      
                <input class="w3-input w3-label" type="date" name="ddate"required>
                <label class="w3-label">Date Of Birth</label>
            </div>
            <div class="w3-group">      
                <input class="w3-input w3-label" type="number" name="mobile"required>
                <label class="w3-label">Mobile No</label>
            </div>
            <div class="w3-group">      
                <input class="w3-input" type="email" name="email"required>
                <label class="w3-label">E-mail </label>
            </div>
            <div class="w3-group">      
                <input class="w3-input" type="text" name="city"required>
                <label class="w3-label">City </label>
            </div>



            <div class="w3-group">      
                <button type="submit" class="w3-hover-teal">Add Blood</button>
            </div>

        </form>

    </div></div>
</div>

<script>
    // Get the modal
    var modal = document.getElementById('id05');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>



<!--end blood information-->

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