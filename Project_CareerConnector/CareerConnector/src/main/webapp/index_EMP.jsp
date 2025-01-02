<%@page import="org.model.bean.UserEmpBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*" %>
    <%@page import = "org.mis.ConnectionProvider" %>
<%String str = (String) session.getAttribute("Email : ");
Connection conn = null;
PreparedStatement pstm = null;
ResultSet rs = null;
String ename = null;

try {
    conn = ConnectionProvider.createC();
    pstm = conn.prepareStatement("select * from employer where e_email=?");
    pstm.setString(1, str);

    rs = pstm.executeQuery();

    if (rs.next()) {
        ename = rs.getString(1);
    }
} catch (SQLException e) {
    e.printStackTrace();  
} catch (Exception e) {
    e.printStackTrace();  
} finally {
    
    try {
        if (rs != null) rs.close();
        if (pstm != null) pstm.close();
        if (conn != null) conn.close();
    } catch (SQLException e) {
        e.printStackTrace();  
    }
}


%>
<!DOCTYPE html>
<html>
<head>
    <title>CareerConnector &mdash; Connecting Talents To Opportunities</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <link rel="stylesheet" href="css/custom-bs.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="css/bootstrap-select.min.css">
    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <link rel="stylesheet" href="fonts/line-icons/style.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/quill.snow.css">


    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/style.css">
    <style>
            .btn:hover {
  background-color: #ffff !important;
  color: rgb(36 106 175) !important;
}
.btn {
 border-color : #fff;
 color : rgb(36 106 175);
}
.bootstrap-select .dropdown-menu li.selected a {
  background-color: rgb(36 106 175) !important;
  color: white !important;
}
.bootstrap-select .dropdown-menu li a:hover {
      background-color: rgb(36 106 175) !important;
      color: white !important;
    }
    .custom-pagination a:hover,
    .custom-pagination a.active{
      color: white !important;
    }
    .badge:hover {
    color: white !important;
    }
    .block__87154 .position {
    color:#495057;
    }
    .home-section .search-jobs-form .btn-lg {
    height: calc(1.5em + 1rem + 2px);
    }
    .section-hero,.section-hero>.container>.row {
    min-height: 600px;
    }
</style>
</head>

<body id="top">

    <div class="site-wrap">

        <div class="site-mobile-menu site-navbar-target">
            <div class="site-mobile-menu-header">
                <div class="site-mobile-menu-close mt-3">
                    <span class="icon-close2 js-menu-toggle"></span>
                </div>
            </div>
            <div class="site-mobile-menu-body"></div>
        </div> <!-- .site-mobile-menu -->


        <!-- NAVBAR -->
        <%if(str != null)
      							{%>
        <header class="site-navbar mt-3">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="site-logo col-6"><a href="#"><img src="images/logo_cc.png" alt="CareerConnector" style="width:235px;
            height: 50px;
            margin: -19px;"></a></div>

                    <nav class="mx-auto site-navigation">
                        <ul class="site-menu js-clone-nav d-none d-xl-block ml-0 pl-0">
                            <li><a href="index_EMP.jsp">Home</a></li>
                            <li><a href="postjob_EMP.jsp">Post Jobs</a></li>
                            <li class="has-children">
                                <a href="#">About</a>
                                <ul class="dropdown">
                                    <li><a href="team_EMP.jsp">Team</a></li>
                                    <li><a href="TESTI_EMP.jsp">Testimonials</a></li>
                                    <li><a href="Terms_EMP.jsp">Terms</a></li>
                                    <li><a href="FAQ_EMP.jsp">FAQs</a></li>
                                </ul>
                            </li>
                            <li><a href="contact_EMP.jsp" class="active">Contact Us</a></li>
                             <li style = "color : #fff;margin-right: 20px;" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                             	<% if(ename != null){
                        		out.println("Hello," + ename);
                        		}  %>
                             </li>
                            
      							</ul>
                    </nav>

                    <div class="right-cta-menu text-right d-flex aligin-items-center col-6">
                        <div class="ml-auto" style="display: flex;">
                            <div>
                                <a href="Dash_EMP.jsp"><button
                                    class="btn btn-outline-white border-width-2 d-none d-lg-inline-block"
                                    type="button" id="signupDropdown" style="margin-right: 10px;">
                                    Dashboard
                                </button></a>
                            </div>
                            <div>
                                <a href="logout_EMP.jsp"><button class="btn btn-primary border-width-2 d-none d-lg-inline-block"
                                    type="button" id="signupDropdown" style="margin-right: 10px; background-color:rgb(36 106 175); border-color:rgb(36 106 175);">
                                    Logout
                                </button></a>
                            </div>
                        </div>
                        <a href="#" class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3"><span
                                class="icon-menu h3 m-0 p-0 mt-2"></span>
                        </a>
                    </div>
                                </div>
            </div>
        </header>
                             <%} else {%>
                        <header class="site-navbar mt-3">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="site-logo col-6"><a href="#"><img src="images/logo_cc.png" alt="CareerConnector" style="width:235px;
            height: 50px;
            margin: -19px;"></a></div>

                    <nav class="mx-auto site-navigation">
                        <ul class="site-menu js-clone-nav d-none d-xl-block ml-0 pl-0">
                            <li><a href="index_EMP.jsp">Home</a></li>
                            <li><a href="postjob_EMP.jsp">Post Jobs</a></li>
                            <li class="has-children">
                                <a href="#">About</a>
                                <ul class="dropdown">
                                    <li><a href="team_EMP.jsp">Team</a></li>
                                    <li><a href="TESTI_EMP.jsp">Testimonials</a></li>
                                    <li><a href="Terms_EMP.jsp">Terms</a></li>
                                    <li><a href="FAQ_EMP.jsp">FAQs</a></li>
                                </ul>
                            </li>
                            <li><a href="contact_EMP.jsp" class="active">Contact Us</a></li>
                             <li style = "color : #fff;margin-right: 20px;" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</li>
                            
      							</ul>
                    </nav>

                    <div class="right-cta-menu text-right d-flex aligin-items-center col-6">
                        <div class="ml-auto" style="display: flex;">
                            <div class="dropdown">
                                <button
                                    class="btn btn-outline-white border-width-2 d-none d-lg-inline-block dropdown-toggle"
                                    type="button" id="signupDropdown" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false" style="margin-right: 10px;">
                                    Sign Up
                                </button>                              
                                <div class="dropdown-menu" aria-labelledby="signupDropdown">
                                    <a class="dropdown-item" href="REGISTER (EMP).jsp"
                                        style="background:white;color:black;"
                                        onmouseover="this.style.color='rgb(36 106 175)';"
                                        onmouseout="this.style.color='black';">As an Employer</a>
                                    <a class="dropdown-item" href="REGISTER_Job Seeker.jsp"
                                        style="background:white;color:black;"
                                        onmouseover="this.style.color='rgb(36 106 175)';"
                                        onmouseout="this.style.color='black';">As a JobSeeker</a>
                                </div>
                            </div>
                            <div class="dropdown">
                                <button class="btn btn-primary border-width-2 d-none d-lg-inline-block dropdown-toggle"
                                    type="button" id="signupDropdown" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"
                                    style="margin-right: 10px; background-color:rgb(36 106 175); border-color:rgb(36 106 175);">
                                    Log In
                                </button>
                                <div class="dropdown-menu" aria-labelledby="loginDropdown">
                                    <a class="dropdown-item" href="login_EMP.jsp" style="background:white;color:black;"
                                        onmouseover="this.style.color='rgb(36 106 175)';"
                                        onmouseout="this.style.color='black';">As an Employer</a>
                                    <a class="dropdown-item" href="login_JS.jsp" style="background:white;color:black;"
                                        onmouseover="this.style.color='rgb(36 106 175)';"
                                        onmouseout="this.style.color='black';">As a JobSeeker</a>
                                </div>
                            </div>
                        </div>
                        <a href="#" class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3"><span
                                class="icon-menu h3 m-0 p-0 mt-2"></span>
                        </a>
                    </div>
                </div>
            </div>
        </header>
				<%}%>
                
<!-- HOME -->
<section class="home-section section-hero overlay bg-image" style="background-image: url('images/hero_1_2.jpg');" id="home-section">
<div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-12">
            <div class="mb-5 text-center">
              <h1 class="text-white font-weight-bold">Track applicants and manage your job </h1>
              <p>Track your overall hiring progress, connect with candidates and manage jobs.
              From posting jobs to scheduling interviews, Indeed provides all the tools you need to manage hiring across all roles and locations.
               Use your CareerConnector dashboard to update job posts, set budgets, connect with candidates, and more.</p>
            </div>
            <form method="post" class="search-jobs-form">
              <div class="col-md-3 ml-auto">
            <a href="postjob_EMP.jsp" class="btn btn:hover btn btn-warning btn-block btn-lg" style="background-color: rgb(36 106 175);width:60%;color:white;margin-left: -374px;border:1px solid rgb(36 106 175);">Get Started</a>
          </div>        
                </form>
              </div>
              </div>
              </div>
              <a href="#next" class="scroll-button smoothscroll">
        <span class=" icon-keyboard_arrow_down"></span>
      </a>
              
</section>

<section class="site-section">
      <div class="container">
      <h2 class="section-title mb-2 text-center">Featured Jobs</h2>
      
      <ul class="job-listings mb-5" style="margin-top:40px;">
              	<% 				   String name=null;
              					   String email=null;
              					 	String add=null; 
              					 	String res=null;
                                   
                                   
                                  
                                 
                                   try { 
                                	conn=ConnectionProvider.createC();
                                    pstm=conn.prepareStatement("select *from jobseeker"); 
                                    rs=pstm.executeQuery(); 
                                    int count=0;
                                    while(rs.next()) { 
                                    	
                                    	name = rs.getString(1);
                                    	email=rs.getString(3);
                                    	add=rs.getString(11);
                                    	res=rs.getString(6);
                                       
                                        
                                        if(count < 7){
                                        out.println("<li style = 'height : 120px;'>");
                                        out.println("<div class='job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4'>");
                                        out.println("<div class='job-listing-position custom-width w-50 mb-3 mb-sm-5' style='margin-top: 40px;'>");
                                        out.println("<h2 style='font-size: 40px;'>");
                                        out.println(name);
                                        out.println("</h2>");
                                        out.println("<strong style='font-size: 20px;'>");
                                        out.println(email);
                                        out.println("</strong>");
                                        out.println("</div>");
                                        out.println("<div class='job-listing-location mb-3 mb-sm-0 custom-width w-25' style='margin-top: 40px;margin-left: -105px;font-size: 28px;'>");
                                        out.println("<span class='icon-room'style='color:rgb(36 106 175); margin-top:50px;'>");
                                        out.println(add);
                                        out.println("</span>");
                                        out.println("</div>");
                                        out.println("<div style='margin-right: 80px;'>");

                                        out.println("<a href='/CareerConnector/resume/" + res + "'><input type='button' value='View Resume' class='btn btn-primary btn-md text-white' style='margin-left:-50px; margin-top:40px; background-color: rgb(36 106 175);'></a>");
                                        out.println("</div>");
                                        out.println("</div>");
                                        out.println("</li>");
                                        
                                        out.println("<hr>");
                                        
                                        }
                                        
                                        
                                       count++;
                                    }
									
                                    } catch (Exception e) {
                                    }

                                    %>
                
           </ul>

        <div class="row mb-5 justify-content-center" style="margin-top:90px;">
          <div class="col-md-7 text-center">
            <h2 class="section-title mb-2">Facts You Should Know</h2>
          </div>
        </div>
        
        <div class="owl-carousel single-carousel">

        
          <div class="container" style="padding:10px;">
            <div class="row">
              <div class="col-lg-6 align-self-center text-center text-lg-left">
                
                  <p style="color:rgb(36 106 175); font-size:26px">According to the Society for Human Resource Management (SHRM), the average time to fill a position is around 42 days. Streamlining the hiring process can reduce this time.</p>
              
              </div>
              <div class="col-lg-6 align-self-end text-center text-lg-right">
                <img src="images/mg2.jpg" alt="Image" class="img-fluid mb-0" height="34px" style="border-radius:45px">
              </div>
            </div>
          </div>

          <div class="container">
            <div class="row">
              <div class="col-lg-6 align-self-center text-center text-lg-left">
                
                  <p style="color:rgb(36 106 175); font-size:26px">The cost of hiring varies, but according to a study by the Society for Human Resource Management, it can range from 6-9 months of an employee's salary.</p>
              
              </div>
              <div class="col-lg-6 align-self-end text-center text-lg-right">
                <img src="images/mg2.jpg" alt="Image" class="img-fluid mb-0" style="border-radius:45px">
              </div>
            </div>
          </div>
          
          <div class="container">
            <div class="row">
              <div class="col-lg-6 align-self-center text-center text-lg-left">
                
                  <p style="color:rgb(36 106 175); font-size:26px">Employee referrals are a powerful source of quality hires. According to a LinkedIn report, 48% of employers believe employee referrals are their best source of quality hires.</p>
              
              </div>
              <div class="col-lg-6 align-self-end text-center text-lg-right">
                <img src="images/mg2.jpg" alt="Image" class="img-fluid mb-0" style="border-radius:45px">
              </div>
            </div>
          </div>
          
          <div class="container">
            <div class="row">
              <div class="col-lg-6 align-self-center text-center text-lg-left">
                
                  <p style="color:rgb(36 106 175); font-size:26px">Video interviews have become more prevalent, with 60% of hiring managers and recruiters using them in their hiring process</p>
              
              </div>
              <div class="col-lg-6 align-self-end text-center text-lg-right">
                <img src="images/mg2.jpg" alt="Image" class="img-fluid mb-0" style="border-radius:45px">
              </div>
            </div>
          </div>
          
          <div class="container">
            <div class="row">
              <div class="col-lg-6 align-self-center text-center text-lg-left">
                
                  <p style="color:rgb(36 106 175); font-size:26px">LinkedIn's Global Talent Trends report highlights that 92% of talent professionals and hiring managers believe that soft skills are equally or more important than hard skills.</p>
              
              </div>
              <div class="col-lg-6 align-self-end text-center text-lg-right">
                <img src="images/mg2.jpg" alt="Image" class="img-fluid mb-0" style="border-radius:45px">
              </div>
            </div>
          </div>
          
          <div class="container">
            <div class="row">
              <div class="col-lg-6 align-self-center text-center text-lg-left">
                
                  <p style="color:rgb(36 106 175); font-size:26px">A positive candidate experience is crucial. According to a survey by Talent Board, 46% of candidates who have a positive experience with a company will refer others to apply, even if they don't get the job.</p>
              
              </div>
              <div class="col-lg-6 align-self-end text-center text-lg-right">
                <img src="images/mg2.jpg" alt="Image" class="img-fluid mb-0" style="border-radius:45px">
              </div>
            </div>
          </div>
          
          <div class="container">
            <div class="row">
              <div class="col-lg-6 align-self-center text-center text-lg-left">
                
                  <p style="color:rgb(36 106 175); font-size:26px">AI is increasingly being used in the hiring process. According to a PwC survey, 72% of business leaders believe that AI will be fundamental in the future of HR and talent acquisition.</p>
              
              </div>
              <div class="col-lg-6 align-self-end text-center text-lg-right">
                <img src="images/mg2.jpg" alt="Image" class="img-fluid mb-0" style="border-radius:45px">
              </div>
            </div>
          </div>

      </div>
    </section>

    <section class="py-5 bg-image overlay-primary fixed overlay" style="background-image: url('images/hero_1.jpg');">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-8">
            <h2 class="text-white">Looking For best candidates?</h2>
            <p class="mb-0 text-white lead">Whether you are hiring for two roles or a hundred, your CareerConnector dashboard lets you quickly post jobs to multiple locations, search across and filter jobs, sponsor jobs, bulk edit job posts, and view hiring and performance metrics.</p>
          </div>
          <div class="col-md-3 ml-auto">
            <a href="login_EMP.jsp" class="btn btn:hover btn btn-warning btn-block btn-lg" style="background-color:#fff">Sign Up</a>
          </div>
        </div>
      </div>
    </section>
    <section class="site-section py-4">
      <div class="container">
  
        <div class="row align-items-center">
          <div class="col-12 text-center mt-4 mb-5">
            <div class="row justify-content-center">
              <div class="col-md-7">
                <h2 class="section-title mb-2">Companies We've Helped</h2>
                <p class="lead"style="color:rgb(36 106 175);">We believe in helping each other grow and making more connections.</p>
              </div>
            </div>
            
          </div>
          <div class="col-6 col-lg-3 col-md-6 text-center">
            <img src="images/logo_mailchimp.svg" alt="Image" class="img-fluid logo-1">
          </div>
          <div class="col-6 col-lg-3 col-md-6 text-center">
            <img src="images/logo_paypal.svg" alt="Image" class="img-fluid logo-2">
          </div>
          <div class="col-6 col-lg-3 col-md-6 text-center">
            <img src="images/logo_stripe.svg" alt="Image" class="img-fluid logo-3">
          </div>
          <div class="col-6 col-lg-3 col-md-6 text-center">
            <img src="images/logo_visa.svg" alt="Image" class="img-fluid logo-4">
          </div>

          <div class="col-6 col-lg-3 col-md-6 text-center">
            <img src="images/logo_apple.svg" alt="Image" class="img-fluid logo-5">
          </div>
          <div class="col-6 col-lg-3 col-md-6 text-center">
            <img src="images/logo_tinder.svg" alt="Image" class="img-fluid logo-6">
          </div>
          <div class="col-6 col-lg-3 col-md-6 text-center">
            <img src="images/logo_sony.svg" alt="Image" class="img-fluid logo-7">
          </div>
          <div class="col-6 col-lg-3 col-md-6 text-center">
            <img src="images/logo_airbnb.svg" alt="Image" class="img-fluid logo-8">
          </div>
        </div>
      </div>
    </section>
    <section class="bg-light pt-5 testimony-full">
        
        <div class="owl-carousel single-carousel">

        
          <div class="container" style="padding:10px;">
            <div class="row">
              <div class="col-lg-6 align-self-center text-center text-lg-left">
                <blockquote>
                  <p style="color:rgb(36 106 175);">&ldquo;With the great features, you can connect to candidates or publicly share with the CareerConnector community that you are looking for best suitable candidates.&rdquo;</p>
                  <p style="color:rgb(36 106 175);"><cite> &mdash; Ishita Chowbey, Paypal</cite></p>
                </blockquote>
              </div>
              <div class="col-lg-6 align-self-end text-center text-lg-right">
                <img src="images/testi7.jpg" alt="Image" class="img-fluid mb-0" style="border-radius:45px">
              </div>
            </div>
          </div>

          <div class="container">
            <div class="row">
              <div class="col-lg-6 align-self-center text-center text-lg-left">
                <blockquote>
                  <p style="color:rgb(36 106 175);">&ldquo;As a recruiter, I've worked with numerous job portals, but CareerConnector stands out for its commitment to both employers and job seekers.&ldquo;</p>
                  <p style="color:rgb(36 106 175);"><cite> &mdash; Debashish Dutta, Sony</cite></p>
                </blockquote>
              </div>
              <div class="col-lg-6 align-self-end text-center text-lg-right">
                <img src="images/testi8.jpg" alt="Image" class="img-fluid mb-0" style="border-radius:45px">
              </div>
            </div>
          </div>

      </div>

    </section>

    
          

    

 <footer class="site-footer" style="background-color:black;">

            <a href="#top" class="smoothscroll scroll-top">
                <span class="icon-keyboard_arrow_up"></span>
            </a>

            <div class="container" style="padding: 72px 10px;">
                <div class="row mb-5">
                    <div class="col-6 col-md-3 mb-4 mb-md-0">
                        <img src="images/logo_cc.png" alt="" style="width:235px;
                        height: 50px;
                        margin: -19px;"><br><br>
                        <p style="margin-left: -10px; text-align: left; color: rgba(255, 255, 255, 0.5);">A reliable
                            platform that links talents with opportunities for both businesses and job seekers.</p>
                        <h3 style="margin-left: -10px;">Connect with us :</h3>
                        <div class="footer-social" style="margin-left: -10px;">
                            <a href="https://www.facebook.com" target="_blank"><span class="icon-facebook"></span></a>
                            <a href="https://www.twitter.com" target="_blank"><span class="icon-twitter"></span></a>
                            <a href="https://www.instagram.com" target="_blank"><span class="icon-instagram"></span></a>
                            <a href="https://www.linkedin.com" target="_blank"><span class="icon-linkedin"></span></a>
                        </div>
                    </div>
                    <div class="col-6 col-md-3 mb-4 mb-md-0">
                        <h3>Trending Technologies</h3>
                        <ul class="list-unstyled">
                            <li><a href="https://www.google.com/search?q=web+design&rlz=1C1RXQR_enIN1030IN1030&oq=web+des&gs_lcrp=EgZjaHJvbWUqDAgBEAAYQxixAxiKBTIGCAAQRRg5MgwIARAAGEMYsQMYigUyDAgCEAAYFBiHAhiABDIKCAMQABixAxiABDIJCAQQABhDGIoFMg8IBRAAGBQYhwIYsQMYgAQyBggGEEUYQTIGCAcQRRg80gEINDEzNmowajeoAgCwAgA&sourceid=chrome&ie=UTF-8"
                                    target="_blank">Web Design</a></li>
                            <li><a href="https://www.google.com/search?q=artificial+intelligence&sca_esv=568919982&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKlfCQkFldKe54u72W7cM3RJTosANg%3A1695846602750&ei=ypAUZcyzLdSgseMP-7SviAs&oq=arti&gs_lp=Egxnd3Mtd2l6LXNlcnAiBGFydGkqAggDMgcQABiKBRhDMgcQABiKBRhDMgcQABiKBRhDMgoQABiKBRixAxhDMg0QABiKBRixAxiDARhDMgcQABiKBRhDMgcQABiKBRhDMgcQLhiKBRhDMgUQABiABDIIEAAYgAQYsQNI2i5QAFiSEXAAeAGQAQCYAaABoAHZBKoBAzAuNLgBA8gBAPgBAcICBxAjGIoFGCfCAhMQLhiKBRixAxiDARjHARjRAxhDwgILEAAYigUYsQMYgwHCAgsQABiABBixAxiDAcICBRAuGIAEwgIEECMYJ8ICBxAuGIoFGCfCAg0QLhiKBRixAxiDARhD4gMEGAAgQYgGAQ&sclient=gws-wiz-serp"
                                    target="_blank">Artificial Intelligence</a></li>
                            <li><a href="https://www.google.com/search?q=medical+robotics&sca_esv=568919982&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKniBMUZv6Ch6U68xLtF8hmywcj90Q%3A1695846641236&ei=8ZAUZYuODqO5seMPqsaRkAk&ved=0ahUKEwjLypOF0cuBAxWjXGwGHSpjBJIQ4dUDCBA&uact=5&oq=medical+robotics&gs_lp=Egxnd3Mtd2l6LXNlcnAiEG1lZGljYWwgcm9ib3RpY3MyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAESP84UABYqjJwAHgBkAEAmAGUAaAB3RCqAQQwLjE2uAEDyAEA-AEBwgIHEC4YigUYJ8ICBxAjGIoFGCfCAgcQABiKBRhDwgILEAAYgAQYsQMYgwHCAgsQLhiDARixAxiABMICDRAAGIoFGLEDGIMBGArCAggQABiABBixA8ICFBAuGIoFGJcFGNwEGN4EGOAE2AEBwgINEAAYgAQYFBiHAhixA8ICDRAuGIoFGMcBGNEDGEPCAgUQLhiABMICDRAAGIoFGLEDGIMBGEPCAhAQABiABBgUGIcCGLEDGIMBwgIKEAAYgAQYFBiHAsICCxAAGIoFGLEDGIMB4gMEGAAgQYgGAboGBggBEAEYFA&sclient=gws-wiz-serp"
                                    target="_blank">Medical Robotics</a></li>
                            <li><a href="https://www.google.com/search?q=python&sca_esv=568919982&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKnuqe3Np476Bvs1hfVg5FyrfjoFIQ%3A1695846685799&ei=HZEUZcC2MLWLseMP0KyEuAg&ved=0ahUKEwiAubOa0cuBAxW1RWwGHVAWAYcQ4dUDCBA&uact=5&oq=python&gs_lp=Egxnd3Mtd2l6LXNlcnAiBnB5dGhvbjIHECMYigUYJzIHECMYigUYJzIEECMYJzIHEAAYigUYQzIIEC4YigUYkQIyDhAAGIoFGLEDGIMBGJECMgcQLhiKBRhDMgcQABiKBRhDMgcQABiKBRhDMgoQABiKBRixAxhDSOYUUABYjhJwAHgBkAEAmAGoAaABwwaqAQMwLja4AQPIAQD4AQHCAggQABiKBRiRAsICBRAAGIAEwgILEAAYgAQYsQMYgwHCAggQABiABBixA-IDBBgAIEGIBgE&sclient=gws-wiz-serp"
                                    target="_blank">Python</a></li>
                            <li><a href="https://www.google.com/search?q=virtual+reality&sca_esv=568919982&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKmcrleg5ysig8WYd7Jiuh_KfxBjQw%3A1695846717455&ei=PZEUZeq1G76fseMP5Yy9qAE&oq=virtual+rea&gs_lp=Egxnd3Mtd2l6LXNlcnAiC3ZpcnR1YWwgcmVhKgIIADIOEAAYigUYsQMYgwEYkQIyCBAAGIoFGJECMggQABiKBRiRAjIIEAAYgAQYsQMyCxAAGIAEGLEDGIMBMg4QABiKBRixAxiDARiRAjIIEAAYigUYkQIyBRAAGIAEMgsQABiABBixAxiDATIFEAAYgARIoCxQAFjnIXAAeAGQAQCYAZUBoAHsC6oBBDAuMTG4AQPIAQD4AQHCAgcQIxiKBRgnwgIHEAAYigUYQ8ICDBAjGIoFGCcYRhj_AcICChAAGIoFGLEDGEPCAhYQABiKBRhGGP8BGJcFGIwFGN0E2AEBwgINEAAYigUYsQMYgwEYQ8ICCxAuGIAEGLEDGIMBwgILEAAYigUYsQMYgwHCAgkQABiKBRgKGEPiAwQYACBBiAYBugYGCAEQARgT&sclient=gws-wiz-serp"
                                    target="_blank">Virtual Reality</a></li>
                            <li><a href="https://www.google.com/search?q=cloud+computing&sca_esv=568919982&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKkvGZZKul_qdlZJ1-0eWKHic9R2qQ%3A1695846745844&ei=WZEUZdaWM6_useMPnc-F4AM&oq=clo&gs_lp=Egxnd3Mtd2l6LXNlcnAiA2NsbyoCCAEyBBAjGCcyDRAAGIoFGLEDGIMBGEMyDRAuGIoFGMcBGNEDGEMyChAAGIoFGMkDGEMyCBAAGIoFGJIDMggQABiKBRiSAzIHEAAYigUYQzIIEAAYgAQYsQMyBxAAGIoFGEMyChAAGIoFGLEDGENI_hNQAFjiA3AAeAGQAQCYAYwBoAGVA6oBAzAuM7gBA8gBAPgBAcICBxAjGIoFGCfCAgsQABiABBixAxiDAcICCxAAGIoFGLEDGIMBwgITEC4YigUYsQMYgwEYxwEY0QMYQ-IDBBgAIEGIBgE&sclient=gws-wiz-serp"
                                    target="_blank">Cloud Computing</a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-3 mb-4 mb-md-0">
                        <h3>Trending Job Roles</h3>
                        <ul class="list-unstyled">
                            <li><a href="https://www.google.com/search?q=Data+Scientist%2FAnalyst&rlz=1C1RXQR_enIN1030IN1030&oq=Data+Scientist%2FAnalyst&aqs=chrome..69i57j0i22i30l6j0i15i22i30j0i22i30l2.1136j0j7&sourceid=chrome&ie=UTF-8"
                                    target="_blank">Data Scientist/Analyst</a></li>
                            <li><a href="https://www.google.com/search?q=Software+Developer%2FEngineer&sca_esv=565268182&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKnwvqSFplnqHfBxW41CWFSfqMIOPg%3A1694677523811&ei=E7oCZeqyMJjlseMPpN2r4A0&ved=0ahUKEwiqiMLezamBAxWYcmwGHaTuCtwQ4dUDCBA&uact=5&oq=Software+Developer%2FEngineer&gs_lp=Egxnd3Mtd2l6LXNlcnAiG1NvZnR3YXJlIERldmVsb3Blci9FbmdpbmVlcjIFEAAYgAQyBRAAGIAEMgUQABiABDIGEAAYFhgeMgYQABgWGB4yBhAAGBYYHjIGEAAYFhgeMgYQABgWGB4yBhAAGBYYHjIGEAAYFhgeSOoQUABYhwdwAXgBkAEAmAHvAaAB7wGqAQMyLTG4AQPIAQD4AQH4AQKoAhTCAgcQIxjqAhgnwgINEC4YxwEY0QMY6gIYJ8ICFhAAGAMYjwEY5QIY6gIYtAIYjAPYAQHCAhYQLhgDGI8BGOUCGOoCGLQCGIwD2AEB4gMEGAAgQYgGAboGBggBEAEYCw&sclient=gws-wiz-serp"
                                    target="_blank">Software Developer/Engineer</a></li>
                            <li><a href="https://www.google.com/search?q=Machine+Learning+Engineer&sca_esv=565268182&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKm_BdxcZ8-LyxPCTE3rUrUSDe7B_g%3A1694677544932&ei=KLoCZYehOI7dseMPzZSxkAY&ved=0ahUKEwiH1cvozamBAxWObmwGHU1KDGIQ4dUDCBA&uact=5&oq=Machine+Learning+Engineer&gs_lp=Egxnd3Mtd2l6LXNlcnAiGU1hY2hpbmUgTGVhcm5pbmcgRW5naW5lZXIyCxAAGIoFGLEDGJECMgcQABiKBRhDMggQABiKBRiRAjIIEAAYigUYkQIyCxAAGIoFGLEDGJECMgUQABiABDIFEAAYgAQyBxAAGIoFGEMyBRAAGIAEMgUQABiABEj7GVCIA1iQE3ACeAGQAQSYAbkCoAHYC6oBBTItNS4xuAEDyAEA-AEB-AECqAIUwgIKEAAYRxjWBBiwA8ICBxAjGIoFGCfCAgYQABgWGB7CAgcQIxjqAhgnwgINEC4YxwEY0QMY6gIYJ8ICFhAAGAMYjwEY5QIY6gIYtAIYjAPYAQHCAhYQLhgDGI8BGOUCGOoCGLQCGIwD2AEB4gMEGAAgQYgGAZAGCLoGBggBEAEYCw&sclient=gws-wiz-serp"
                                    target="_blank">Machine Learning Engineer</a></li>
                            <li><a href="https://www.google.com/search?q=Cybersecurity+Analyst&sca_esv=565268182&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKkAqLhfZtCLkqGNpcic5MkCbR0RxA%3A1694677584525&ei=ULoCZd-8H_STseMPuui4yAQ&ved=0ahUKEwjfpLz7zamBAxX0SWwGHTo0DkkQ4dUDCBA&uact=5&oq=Cybersecurity+Analyst&gs_lp=Egxnd3Mtd2l6LXNlcnAiFUN5YmVyc2VjdXJpdHkgQW5hbHlzdDILEAAYigUYsQMYkQIyCBAAGIoFGJECMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyChAAGIAEGBQYhwIyBRAAGIAEMgUQABiABEjiDFAAWABwAHgBkAEAmAHmAaAB5gGqAQMyLTG4AQPIAQD4AQL4AQHiAwQYACBBiAYB&sclient=gws-wiz-serp"
                                    target="_blank">Cybersecurity Analyst</a></li>
                            <li><a href="https://www.google.com/search?q=Cloud+Computing+Specialist&sca_esv=565268182&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKmH3WbG3RRVxdFnlGteGTfHx42gvg%3A1694677612407&ei=bLoCZb-zGIqcseMP3bi7cA&ved=0ahUKEwi_meKIzqmBAxUKTmwGHV3cDg4Q4dUDCBA&uact=5&oq=Cloud+Computing+Specialist&gs_lp=Egxnd3Mtd2l6LXNlcnAiGkNsb3VkIENvbXB1dGluZyBTcGVjaWFsaXN0MgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBhAAGBYYHjIGEAAYFhgeMgYQABgWGB4yBhAAGBYYHjIGEAAYFhgeSI4GUABYAHAAeAGQAQCYAf8BoAH_AaoBAzItMbgBA8gBAPgBAvgBAeIDBBgAIEGIBgE&sclient=gws-wiz-serp"
                                    target="_blank">Cloud Computing Specialist</a></li>
                            <li><a href="https://www.google.com/search?q=Healthcare+Professionals&sca_esv=565268182&rlz=1C1RXQR_enIN1030IN1030&sxsrf=AM9HkKlQir2Ur_Ft8plNvLZzzGZ7-x0yDQ%3A1694677640070&ei=iLoCZfXvA6_fseMP67m-gAc&ved=0ahUKEwj10_qVzqmBAxWvb2wGHeucD3AQ4dUDCBA&uact=5&oq=Healthcare+Professionals&gs_lp=Egxnd3Mtd2l6LXNlcnAiGEhlYWx0aGNhcmUgUHJvZmVzc2lvbmFsczIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgARIwxtQAFjYFXABeAGQAQCYAZgCoAGYAqoBAzItMbgBA8gBAPgBAfgBAqgCFMICBxAjGOoCGCfCAg0QLhjHARjRAxjqAhgnwgIWEAAYAxiPARjlAhjqAhi0AhiMA9gBAcICFhAuGAMYjwEY5QIY6gIYtAIYjAPYAQHiAwQYACBBiAYBugYGCAEQARgL&sclient=gws-wiz-serp"
                                    target="_blank">Healthcare Professionals</a></li>
                        </ul>
                    </div>
                    <div class="col-6 col-md-3 mb-4 mb-md-0">
                        <h3>Support</h3>
                        <ul class="list-unstyled">
                            <li><a href="TESTI_EMP.jsp">Testimonials</a></li>
                            <li><a href="Terms_EMP.jsp">Terms</a></li>
                            <li><a href="helpcentre_EMP.jsp">Help Centre</a></li>
                            <li><a href="FAQ_EMP.jsp">FAQ</a></li>
                            <li><a href="contact_EMP.jsp">Contact Us</a></li>
                        </ul>
                    </div>
                </div>

                <div class="row text-center">
                    <div class="col-12">
                        <p class="copyright"><small>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;
                                <script>document.write(new Date().getFullYear());</script> All rights reserved.
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </small></p>
                    </div>
                </div>
            </div>
        </footer>

    </div>

    <!-- SCRIPTS -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/stickyfill.min.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>

    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/quill.min.js"></script>


    <script src="js/bootstrap-select.min.js"></script>

    <script src="js/custom.js"></script>
</body>
</html>