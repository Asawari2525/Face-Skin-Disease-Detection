<%@page import="com.model.Register"%>
<%@page import="com.DAO.DataAccessLayer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Calorie-Estimator</title>

<script language="JavaScript">

function calculateBmi() {
var weight = document.bmiForm.weight.value
var height = document.bmiForm.height.value
if(weight > 0 && height > 0){	
var finalBmi = weight/(height/100*height/100)
document.bmiForm.bmi.value = finalBmi
if(finalBmi < 18.5){
document.bmiForm.meaning.value = "That you are too thin."
}
if(finalBmi > 18.5 && finalBmi < 25){
document.bmiForm.meaning.value = "That you are healthy."
}
if(finalBmi > 25){
document.bmiForm.meaning.value = "That you have overweight."
}
}
else{
alert("Please Fill in everything correctly")
}
}



</script>
</head>
<body>


 
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/main.css" media="screen" type="text/css">
        <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'> 
        <link rel="stylesheet" href="css/bootstrap.css">
       <link rel="stylesheet" href="css/style-portfolio.css">
        <link rel="stylesheet" href="css/picto-foundry-food.css" />
        <link rel="stylesheet" href="css/jquery-ui.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/font-awesome.min.css" rel="stylesheet"> 
        <link rel="icon" href="favicon-1.ico" type="image/x-icon">
    </head>
    <style>
.table-wrapper-scroll-y {
      display: inline-block;
  max-height: 300px;
  overflow-y: auto;
  -ms-overflow-style: -ms-autohiding-scrollbar;
}</style>

    <body>

<%
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.setDateHeader("Expires", -1);

	if (session.getAttribute("uid") == null) {
		response.sendRedirect("login.jsp");
		return;
	}
%>
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="row">
                <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">Fruit Calorie Estimator</a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav main-nav  clear navbar-right ">
                            <li><a class="navactive color_animation" href="home.jsp">HOME</a></li>
                            <li><a class="navactive color_animation" href="uploadImage.jsp">UPLOAD IMAGE</a></li>
                            <li><a class="navactive color_animation" href="Logout_controller">LOGOUT</a></li>
                            
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div>
            </div><!-- /.container-fluid -->
        </nav>
    <%
    int uid=(int)session.getAttribute("uid");
    System.out.println("uid jsp "+uid);
                    		
    Register hid=(Register)DataAccessLayer.getHealthFormInfo(uid);
    
 
    
    %>     
        <div id="top" class="starter_container1 bg">
          <div class="follow_container">
              <!-- <form action="BMI_cal" method="post">  
               <table border="1" align="center" cellpadding="5" id="customers" style=" margin-top: -1%; background-color: #00000099;" >
                  <thead style=" color: white;">
				<tr>
				 --><!-- hid, age, gender, height, cms, weight, activeness, uid -->
					
					<!-- 
					<th>&nbsp; Age  &nbsp;</th>
					<th>&nbsp; Gender &nbsp;</th>
					<th>&nbsp; Height &nbsp;</th>
					<th>&nbsp; Cms &nbsp;</th>
					<th>&nbsp; Weight &nbsp;</th>
					<th>&nbsp; Activeness &nbsp;</th>
					<th>&nbsp; Calculate &nbsp;</th> -->
				
<!-- 
				</tr>
			</thead> -->
			<%-- <thead style=" color: white;">
                <td><%=hid.getAge() %></td>
                <td><%=hid.getGender() %></td>
                <td><%=hid.getHeight() %></td>
                <td><input type="text" name="height" value="<%=hid.getCms() %>"></td>
                <td><input type="text" name="weight" value="<%=hid.getWeight() %>"></td>
                <td><%=hid.getActiveness() %></td>
               <!--  <td><button type="submit" name="submit" value="submit" class="button" >BMI Calculate</button></td> -->
            <td><input type="button" value="Calculate BMI" onClick="calculateBmi()"><br /></td>
			<td> Your BMI: <input type="text" name="bmi" size="10"><br/></td>
			<td>This Means: <input type="text" name="meaning" size="25"><br> </td>
              </thead>  
              --%>
               
               <thead style=" color: white;">
              
                <form name="bmiForm" action="BMI_cal" method="post">
                <table border="1" align="center" cellpadding="5" id="customers" style=" margin-top: -1%; background-color: #00000099;" >
                  <thead style=" color: white;">
				<tr>
				 <!-- hid, age, gender, height, cms, weight, activeness, uid -->
					
					
					<th>&nbsp; Age  &nbsp;</th>
					<th>&nbsp; Gender &nbsp;</th>
					<th>&nbsp; Height &nbsp;</th>
					<th>&nbsp; Cms &nbsp;</th>
					<th>&nbsp; Weight &nbsp;</th>
					<th>&nbsp; Activeness &nbsp;</th>
					<th>&nbsp; Calculate &nbsp;</th>
				

				</tr>
			</thead> 
             <thead style=" color: black;">
                <td><input type="text" name="age" value="<%=hid.getAge()%>" size="10" readonly="readonly" ></td>
                <td><input type="text" name="gender" value="<%=hid.getGender() %>" size="10" readonly="readonly"></td>
                <td><input type="text" name="foot" value="<%=hid.getHeight() %>" size="10" readonly="readonly"></td>
				<td> <input type="text" name="weight" value="<%=hid.getWeight() %>" size="10" readonly="readonly"></td>
				<td> <input type="text" name="height" value="<%=hid.getCms() %>"  size="10" readonly="readonly"></td>
				<td><input type="text" name="activeness" value="<%=hid.getActiveness() %>" size="10" readonly="readonly"></td>
				<td><input type="button" value="Calculate BMI" onClick="calculateBmi()"></td>

			</thead>

               </table> 
               <br><br>
                Your BMI: <input type="text" name="bmi" size="10"><br />
               <br>
				This Means: <input type="text" name="meaning" size="25"><br />
			   <br>
               <input type="hidden" name="uid" value="<%=uid %>">  
               <input type="submit" value="Submit">
	           </form>
	           
	         
                </div>
            </div>
     

        <!-- ============ About Us ============= -->

   <!--      <section id="story" class="description_content">
            <div class="text-content container">
                <div class="col-md-6">
                    <h1>About us</h1>
                    <div class="fa fa-cutlery fa-2x"></div>
                    <p class="desc-text">Restaurant is a place for simplicity. Good food, good beer, and good service. Simple is the name of the game, and weâre good at finding it in all the right places, even in your dining experience. Weâre a small group from Denver, Colorado who make simple food possible. Come join us and see what simplicity tastes like.</p>
                </div>
                <div class="col-md-6">
                    <div class="img-section">
                       <img src="images/kabob.jpg" width="250" height="220">
                       <img src="images/limes.jpg" width="250" height="220">
                       <div class="img-section-space"></div>
                       <img src="images/radish.jpg"  width="250" height="220">
                       <img src="images/corn.jpg"  width="250" height="220">
                   </div>
                </div>
            </div>
        </section>
 -->

       <!-- ============ Pricing  ============= -->


       <!--  <section id ="pricing" class="description_content">
             <div class="pricing background_content">
                <h1><span>Affordable</span> pricing</h1>
             </div>
            <div class="text-content container"> 
                <div class="container">
                    <div class="row">
                        <div id="w">
                            <ul id="filter-list" class="clearfix">
                                <li class="filter" data-filter="all">All</li>
                                <li class="filter" data-filter="breakfast">Breakfast</li>
                                <li class="filter" data-filter="special">Special</li>
                                <li class="filter" data-filter="desert">Desert</li>
                                <li class="filter" data-filter="dinner">Dinner</li>
                            </ul>@end #filter-list    
                            <ul id="portfolio">
                                <li class="item breakfast"><img src="images/food_icon01.jpg" alt="Food" >
                                    <h2 class="white">$20</h2>
                                </li>

                                <li class="item dinner special"><img src="images/food_icon02.jpg" alt="Food" >
                                    <h2 class="white">$20</h2>
                                </li>
                                <li class="item dinner breakfast"><img src="images/food_icon03.jpg" alt="Food" >
                                    <h2 class="white">$18</h2>
                                </li>
                                <li class="item special"><img src="images/food_icon04.jpg" alt="Food" >
                                    <h2 class="white">$15</h2>
                                </li>
                                <li class="item dinner"><img src="images/food_icon05.jpg" alt="Food" >
                                    <h2 class="white">$20</h2>
                                </li>
                                <li class="item special"><img src="images/food_icon06.jpg" alt="Food" >
                                    <h2 class="white">$22</h2>
                                </li>
                                <li class="item desert"><img src="images/food_icon07.jpg" alt="Food" >
                                    <h2 class="white">$32</h2>
                                </li>
                                <li class="item desert breakfast"><img src="images/food_icon08.jpg" alt="Food" >
                                    <h2 class="white">$38</h2>
                                </li>
                            </ul>@end #portfolio
                        </div>@end #w
                    </div>
                </div>
            </div>  
        </section> -->


        <!-- ============ Our Beer  ============= -->


      <!--   <section id ="beer" class="description_content">
            <div  class="beer background_content">
                <h1>Great <span>Place</span> to enjoy</h1>
            </div>
            <div class="text-content container"> 
                <div class="col-md-5">
                   <div class="img-section">
                       <img src="images/beer_spec.jpg" width="100%">
                   </div>
                </div>
                <br>
                <div class="col-md-6 col-md-offset-1">
                    <h1>OUR BEER</h1>
                    <div class="icon-beer fa-2x"></div>
                    <p class="desc-text">Here at Restaurant weâre all about the love of beer. New and bold flavors enter our doors every week, and we canât help but show them off. While we enjoy the classics, weâre always passionate about discovering something new, so stop by and experience our craft at its best.</p>
                </div>
            </div>
        </section>


       ============ Our Bread  =============


        <section id="bread" class=" description_content">
            <div  class="bread background_content">
                <h1>Our Breakfast <span>Menu</span></h1>
            </div>
            <div class="text-content container"> 
                <div class="col-md-6">
                    <h1>OUR BREAD</h1>
                    <div class="icon-bread fa-2x"></div>
                    <p class="desc-text">We love the smell of fresh baked bread. Each loaf is handmade at the crack of dawn, using only the simplest of ingredients to bring out smells and flavors that beckon the whole block. Stop by anytime and experience simplicity at its finest.</p>
                </div>
                <div class="col-md-6">
                    <img src="images/bread1.jpg" width="260" alt="Bread">
                    <img src="images/bread1.jpg" width="260" alt="Bread">
                </div>
            </div>
        </section>


        
        ============ Featured Dish  =============

        <section id="featured" class="description_content">
            <div  class="featured background_content">
                <h1>Our Featured Dishes <span>Menu</span></h1>
            </div>
            <div class="text-content container"> 
                <div class="col-md-6">
                    <h1>Have a look to our dishes!</h1>
                    <div class="icon-hotdog fa-2x"></div>
                    <p class="desc-text">Each food is handmade at the crack of dawn, using only the simplest of ingredients to bring out smells and flavors that beckon the whole block. Stop by anytime and experience simplicity at its finest.</p>
                </div>
                <div class="col-md-6">
                    <ul class="image_box_story2">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            Indicators
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>

                            Wrapper for slides
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="images/slider1.jpg"  alt="...">
                                    <div class="carousel-caption">
                                        
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="images/slider2.jpg" alt="...">
                                    <div class="carousel-caption">
                                        
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="images/slider3.JPG" alt="...">
                                    <div class="carousel-caption">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ul>
                </div>
            </div>
        </section> -->

        <!-- ============ Reservation  ============= -->

        <!-- <section  id="reservation"  class="description_content">
            <div class="featured background_content">
                <h1>Reserve a Table!</h1>
            </div>
            <div class="text-content container"> 
                <div class="inner contact">
                    Form Area
                    <div class="contact-form">
                        Form
                        <form id="contact-us" method="post" action="reserve.php">
                            Left Inputs
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-8 col-md-6 col-xs-12">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-xs-6">
                                                Name
                                                <input type="text" name="first_name" id="first_name" required="required" class="form" placeholder="First Name" />
                                                <input type="text" name="last_name" id="last_name" required="required" class="form" placeholder="Last Name" />
                                                <input type="text" name="state" id="state" required="required" class="form" placeholder="State" />
                                                <input type="text" name="datepicker" id="datepicker" required="required" class="form" placeholder="Reservation Date" />
                                            </div>

                                            <div class="col-lg-6 col-md-6 col-xs-6">
                                                Name
                                                <input type="text" name="phone" id="phone" required="required" class="form" placeholder="Phone" />
                                                <input type="text" name="guest" id="guest" required="required" class="form" placeholder="Guest Number" />
                                                <input type="email" name="email" id="email" required="required" class="form" placeholder="Email" />
                                                <input type="text" name="subject" id="subject" required="required" class="form" placeholder="Subject" />
                                            </div>

                                            <div class="col-xs-6 ">
                                                Send Button
                                                <button type="submit" id="submit" name="submit" class="text-center form-btn form-btn">Reserve</button> 
                                            </div>
                                            
                                        </div>
                                    </div>
                                    
                                    <div class="col-lg-4 col-md-6 col-xs-12">
                                        Message
                                        <div class="right-text">
                                            <h2>Hours</h2><hr>
                                            <p>Monday to Friday: 7:30 AM - 11:30 AM</p>
                                            <p>Saturday & Sunday: 8:00 AM - 9:00 AM</p>
                                            <p>Monday to Friday: 12:00 PM - 5:00 PM</p>
                                            <p>Monday to Saturday: 6:00 PM - 1:00 AM</p>
                                            <p>Sunday to Monday: 5:30 PM - 12:00 AM</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            Clear
                            <div class="clear"></div>
                        </form>
                    </div>End Contact Form Area
                </div>End Inner
            </div>
        </section> -->

        <!-- ============ Social Section  ============= -->
      
        <!-- <section class="social_connect">
            <div class="text-content container"> 
                <div class="col-md-6">
                    <span class="social_heading">FOLLOW</span>
                    <ul class="social_icons">
                        <li><a class="icon-twitter color_animation" href="#" target="_blank"></a></li>
                        <li><a class="icon-github color_animation" href="#" target="_blank"></a></li>
                        <li><a class="icon-linkedin color_animation" href="#" target="_blank"></a></li>
                        <li><a class="icon-mail color_animation" href="#"></a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <span class="social_heading">OR DIAL</span>
                    <span class="social_info"><a class="color_animation" href="tel:883-335-6524">(941) 883-335-6524</a></span>
                </div>
            </div>
        </section> -->

        <!-- ============ Contact Section  ============= -->

       <!--  <section id="contact">
            <div class="map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3618.664063989472!2d91.8316103150038!3d24.909437984030877!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x37505558dd0be6a1%3A0x65c7e47c94b6dc45!2sTechnext!5e0!3m2!1sen!2sbd!4v1444461079802" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="inner contact">
                            Form Area
                            <div class="contact-form">
                                Form
                                <form id="contact-us" method="post" action="contact.php">
                                    Left Inputs
                                    <div class="col-md-6 ">
                                        Name
                                        <input type="text" name="name" id="name" required="required" class="form" placeholder="Name" />
                                        Email
                                        <input type="email" name="email" id="email" required="required" class="form" placeholder="Email" />
                                        Subject
                                        <input type="text" name="subject" id="subject" required="required" class="form" placeholder="Subject" />
                                    </div>End Left Inputs
                                    Right Inputs
                                    <div class="col-md-6">
                                        Message
                                        <textarea name="message" id="message" class="form textarea"  placeholder="Message"></textarea>
                                    </div>End Right Inputs
                                    Bottom Submit
                                    <div class="relative fullwidth col-xs-12">
                                        Send Button
                                        <button type="submit" id="submit" name="submit" class="form-btn">Send Message</button> 
                                    </div>End Bottom Submit
                                    Clear
                                    <div class="clear"></div>
                                </form>
                            </div>End Contact Form Area
                        </div>End Inner
                    </div>
                </div>
            </div>
        </section> -->

        <!-- ============ Footer Section  ============= -->

        <footer class="sub_footer" style="
    margin-top: 2%;
">
            <div class="container">
                <div class="col-md-4"><p class="sub-footer-text text-center">&copy; Restaurant 2014, Theme by <a href="https://themewagon.com/">ThemeWagon</a></p></div>
                <div class="col-md-4"><p class="sub-footer-text text-center">Back to <a href="#top">TOP</a></p>
                </div>
                <div class="col-md-4"><p class="sub-footer-text text-center">Built With Care By <a href="#" target="_blank">Us</a></p></div>
            </div>
        </footer>


        <script type="text/javascript" src="js/jquery-1.10.2.min.js"> </script>
        <script type="text/javascript" src="js/bootstrap.min.js" ></script>
        <script type="text/javascript" src="js/jquery-1.10.2.js"></script>     
        <script type="text/javascript" src="js/jquery.mixitup.min.js" ></script>
        <script type="text/javascript" src="js/main.js" ></script>

    </body>
</html>
>