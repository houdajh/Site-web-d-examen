<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

     <title>TESTEZ VOUS</title>

     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="author" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/font-awesome.min.css">
     <link rel="stylesheet" href="css/aos.css">
   
     <!-- MAIN CSS -->
     <link rel="stylesheet" href="css/tooplate-gymso-style.css">

</head>
<style>
#fixedbutton {
    position: fixed;
    bottom: 560px;
    right: 1000px; 
}
.card-image {
  width: 290px;
  height: 200px
}
.xx {
  font-family: 'Noto Sans JP', sans-serif;
  background-color: #fef8f8;
  box-sizing: border-box;
   --surface-color: #fff;
  --curve: 40;
}
.cards1 {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin: 4rem 5vw;
  padding: 0;
  list-style-type: none;
  
  
}
.card1 {
  position: relative;
  display: block;
  height: 100%;  
  border-radius: calc(var(--curve) * 1px);
  overflow: hidden;
  text-decoration: none;
 width:80%;
 height:170%;
}
.card__image1 {      
  width: 60%;
  height: 60%;
}
.card__overlay1 {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  z-index: 1;      
  border-radius: calc(var(--curve) * 1px);    
  background-color: var(--surface-color);      
  transform: translateY(100%);
  transition: .2s ease-in-out;
}
.card1:hover .card__overlay1 {
  transform: translateY(0);
}
.card__header1 {
  position: relative;
  display: flex;
  align-items: center;
  gap: 2em;
  padding: 2em;
  border-radius: calc(var(--curve) * 1px) 0 0 0;    
  background-color: var(--surface-color);
  transform: translateY(-100%);
  transition: .2s ease-in-out;
}
.card__arc1 {
  width: 80px;
  height: 80px;
  position: absolute;
  bottom: 100%;
  right: 0;      
  z-index: 1;
}
.card__arc1 path {
  fill: var(--surface-color);
  d: path("M 40 80 c 22 0 40 -22 40 -40 v 40 Z");
}       
.card1:hover .card__header1 {
  transform: translateY(0);
}
.card__thumb1 {
  flex-shrink: 0;
  width: 50px;
  height: 50px;      
  border-radius: 50%;      
}
.card__title1 {
  font-size: 2em;
  margin: 0 0 .3em;
  color: black;
}
.card__tagline1 {
  display: block;
  margin: 1em 0;
  font-family: "MockFlowFont";  
  font-size: .8em; 
  color: black;  
}
.card__status1 {
  font-size: 1em;
  color: #696969;
}
.card__description1 {
  padding: 0 2em 2em;
  margin: 0;
  color: black;
  font-family: "MockFlowFont";   
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 3;
  overflow: hidden;
}


.fixed-btn{
  position: fixed;
  bottom: 10%;
  right: 3%;
  width: 180px;
  height: 45px;
  line-height: 45px;
  text-align: center;
  border-radius: 3px;
  cursor: pointer;
}

.fixed-btn p{
  text-transform: uppercase;
  font-family: arial;
  font-weight: 900;
  color: #fff;
}

.fixed-btn:active{
  box-shadow: 0  0;
}
</style>
<body data-spy="scroll" data-target="#navbarNav" data-offset="50">

    <!-- MENU BAR -->
    <nav class="navbar navbar-expand-lg fixed-top">
   
        <div class="container">

            <a class="navbar-brand" href="#homel">TESTEZ VOUS</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-lg-auto">
                    <li class="nav-item">
                        <a href="#home" class="nav-link smoothScroll">Accueil</a>
                    </li>

                    <li class="nav-item">
                        <a href="#about" class="nav-link smoothScroll">A propos de nous</a>
                    </li>

                    <li class="nav-item">
                        <a href="#class" class="nav-link smoothScroll">Quiz</a>
                    </li>


                    <li class="nav-item">
                        <a href="#contact" class="nav-link smoothScroll">Contact</a>
                    </li>
                     <li class="nav-item">
                        <a href="COMPONENTS/chatbot/index.jsp" class="nav-link smoothScroll">Contactez</a>
                    </li>
                    <%@ page import="dao.UserDAO, model.User,java.util.*" %>
                     <% 
                     HttpSession ses= request.getSession(true);
                     String email= (String)ses.getAttribute("email");
                     UserDAO UserDAO2 = new UserDAO();
                    
            		
      	
            		
            		%>
                   <%if (UserDAO2.is_Prof(email)==true){ %>
                     <li class="nav-item">
                        <a href="COMPONENTS/prof/dashboard.jsp" class="nav-link smoothScroll">Dashboard</a>
                    </li>
                    <%} else{%>
                     <%
		if(session.getAttribute("email")!=null){
																					
		%>
                   
                     <li class="nav-item">
                        <a href="COMPONENTS/etudiant/profile.jsp" class="nav-link smoothScroll">Profile</a>
                    </li>
                    <%} %>
                    <%} %>
                </ul>

                <ul class="social-icon ml-lg-3">
                    <li><a href="https://fb.com/tooplate" class="fa fa-facebook"></a></li>
                    <li><a href="#" class="fa fa-twitter"></a></li>
                    <li><a href="#" class="fa fa-instagram"></a></li>
                </ul>
            </div>

        </div>
    </nav>


     <!-- HERO -->
     <section class="hero d-flex flex-column justify-content-center align-items-center" id="home">

            <div class="bg-overlay"></div>

               <div class="container">
                    <div class="row">

                         <div class="col-lg-8 col-md-10 mx-auto col-12">
                              <div class="hero-text mt-5 text-center">
                                 <img
                        alt="..."
                        src="./images/logo11.png"
                        height ="120"
                        width="120"
                      />
                                    <h6 data-aos="fade-up" data-aos-delay="300">Voulez-vous tester vos connaissances !</h6>

                                    <h1 class="text-white" data-aos="fade-up" data-aos-delay="500">Améliorer vos compétances grace à TESTEZ VOUS</h1>

                                    <%
											if(session.getAttribute("email")==null){
																					
									%>
                                    <a href="COMPONENTS/login.jsp" class="btn custom-btn mt-3" data-aos="fade-up" data-aos-delay="600">Connecter</a>
                                    <%
											}else{
                                    %>
                                    <a href="COMPONENTS/logout.jsp" class="btn custom-btn mt-3" data-aos="fade-up" data-aos-delay="600"> deconnecter</a>
                                   
									<%
											}
										%>	
                                    <a href="#about" class="btn custom-btn bordered mt-3" data-aos="fade-up" data-aos-delay="700">Savoir plus</a>

                                  
                                   
                              </div>
                         </div>

                    </div>
               </div>
     </section>

  
     <section class="feature" id="feature">
        <div class="container">
            <div class="row">

                <div class="d-flex flex-column justify-content-center ml-lg-auto mr-lg-5 col-lg-5 col-md-6 col-12">
                    <h2 class="mb-3 text-white" data-aos="fade-up">C quoi TESTEZ VOUS?</h2>

                    

                    <p data-aos="fade-up" data-aos-delay="200">TESTEZ VOUS est une plateforme qui vous permet de tester votre connaissances dans
                    le domaine du developpement en passant des quiz de niveaux differents .</p>
					  <%
		if(session.getAttribute("email")==null){
																					
		%>
                    <a href="COMPONENTS/register.jsp" class="btn custom-btn bg-color mt-3" data-aos="fade-up" data-aos-delay="300" data-toggle="modal" >Devenir un membre</a>
              <%} %>
                </div>

                <div class="mr-lg-auto mt-3 col-lg-4 col-md-6 col-12">
                     <div class="about-working-hours">
                          <div>

                                 <img src="images/quiz.jpg" class="img-fluid" alt="Trainer">
                               </div>
                          </div>
                     </div>
                </div>

            </div>
        </div>
    </section>


     <!-- ABOUT -->
     <section class="about section" id="about">
               <div class="container">
                    <div class="row">
                         <div class="col-lg-12 col-12 text-center mb-5">
                               

                                <h2 data-aos="fade-up" data-aos-delay="200">Nos utilisateurs</h2>
                             </div>
                            <div class="  col-lg-4 col-md-8  col-12">
                            <img src="images/team/prof.jpg" class="img-fluid" alt="Trainer">
                                <h2 class="mb-4" data-aos="fade-up" data-aos-delay="300">Professeurs</h2>

                                <p data-aos="fade-up" data-aos-delay="400">
                                Nos Professeurs peuvent visualiser les statistiques de ces étudiants.
                                Il peut aussi créer des quiz dans différents thèmes de développement et pour différents niveaux.
                                </p>

                                <p data-aos="fade-up" data-aos-delay="500">Si vous avez des questions à propos de 
                                <a rel="nofollow" href="https://www.tooplate.com/view/2119-gymso-fitness" target="_parent">TESTEZ VOUS</a>,
                                 Vous pouvez nous<a rel="nofollow" href="https://www.tooplate.com/contact" target="_parent">
                                 contacter</a> MERCI.</p>

                            </div>

                            <div class="ml-lg-auto col-lg-4 col-md-8 col-12" data-aos="fade-up" data-aos-delay="700">
                            <img src="images/team/etudiant.jpg" class="img-fluid" alt="Trainer">
                               <h2 class="mb-4" data-aos="fade-up" data-aos-delay="300">Etudiants</h2>

                                <p data-aos="fade-up" data-aos-delay="400">
                                L'étudiant peut choisir le quiz qu'il veut passer
                                 ou bien dialoguer avec un chatbot pour facilité la recherche aprés l'évaluation de leur niveau.
                                 Si le quiz est achevé avec succées sans triche, le sytème offre un certificat,
                                 sinon l'étudiant repasse le quiz .</p>

                               <p data-aos="fade-up" data-aos-delay="500">Si vous avez des questions à propos de 
                                <a rel="nofollow" href="https://www.tooplate.com/view/2119-gymso-fitness" target="_parent">TESTEZ VOUS</a>,
                                 Vous pouvez nous<a rel="nofollow" href="https://www.tooplate.com/contact" target="_parent">
                                 contacter</a> MERCI.</p>
                            </div>
                            </div>

                            

                    </div>
               </div>
               
     </section>

 
     <!-- CLASS -->
     <section class="" id="class">
      <h2 data-aos="fade-up" data-aos-delay="200" style="text-align:center;">Nos quiz</h2>
               <div class="xx">
                    <%@ page import="dao.QuizDAO, model.Quiz,java.util.*" %>
                     <% 
                     QuizDAO quizDAO2 = new QuizDAO();
                    
            		List<Quiz> listquiz =  quizDAO2.selectQuizAll() ;
            		Iterator<Quiz> iter = listquiz.iterator();
            		%>
           <ul class="cards1">
              <% while(iter.hasNext()){
                    	Quiz quiz = iter.next();
                    	int id=quiz.getId();
                    	%>
  <li>
     <% 
                     
                 
            		 ses.setAttribute("id", id);
            		
            		%>
    
      <% if(quiz.getSujet().equals("java")){ %>   
      <div class="card" style="width: 18rem;">
  <img class="card-image card-img-top embed-responsive-item" src="https://www.malekal.com/wp-content/uploads/Java_logo.jpg" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><%=quiz.getSujet() %></h5>
    <p class="card-text"><%=quiz.getNiveau() %> <br> 8 Questions <br><%=quiz.getDescription() %></p>
    <a href="<%= request.getContextPath() %>/QuestionServlet?id=<%=quiz.getId()%>" class="btn btn-dark">Commencer</a>
  </div>
</div>               
         
          <%} %>
          
          
          <% if(quiz.getSujet().equals("php")){ %>   
                <div class="card" style="width: 18rem;">
  <img class="card-image card-img-top embed-responsive-item" class="card-image" src="https://wp.lean.fr/wp-content/uploads/2021/01/icon.php_.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><%=quiz.getSujet() %></h5>
    <p class="card-text"><%=quiz.getNiveau() %> <br> 8 Questions <br><%=quiz.getDescription() %></p>
    <a href="<%= request.getContextPath() %>/QuestionServlet?id=<%=quiz.getId()%>" class="btn btn-dark">Commencer</a>
  </div>
</div>     
          <%} %>
          
          <% if(quiz.getSujet().equalsIgnoreCase("python")){ %>        
                    <div class="card" style="width: 18rem;">
  <img class="card-image card-img-top embed-responsive-item" class="card-image" src="https://www.developpez.net/forums/attachments/p597954d1/a/a/a" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><%=quiz.getSujet() %></h5>
    <p class="card-text"><%=quiz.getNiveau() %> <br> 8 Questions <br><%=quiz.getDescription() %></p>
    <a href="<%= request.getContextPath() %>/QuestionServlet?id=<%=quiz.getId()%>" class="btn btn-dark">Commencer</a>
  </div>
</div>             
         
          <%} %>
          
          <% if(quiz.getSujet().equals("JS")){ %>       
                    <div class="card" style="width: 18rem;">
  <img class="card-image embed-responsive-item"  src="http://moralogiq.fr/wp-content/themes/moralogiq/images/logo/techno-js.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><%=quiz.getSujet() %></h5>
    <p class="card-text"><%=quiz.getNiveau() %> <br> 8 Questions <br><%=quiz.getDescription() %></p>
    <a href="<%= request.getContextPath() %>/QuestionServlet?id=<%=quiz.getId()%>" class="btn btn-dark">Commencer</a>
  </div>
</div>              
          
          <%} %>
          
  </li>
   
  <% } %>
  
 
  
</ul>
               </div>
     </section>

<br><br><br><br>
     <!-- CONTACT -->
     <section class="contact section" id="contact">
          <div class="container">
               <div class="row">

                   

                    <div class="mx-auto mt-4 mt-lg-0 mt-md-0 col-lg-5 col-md-6 col-12">
                        <h2 class="mb-4" data-aos="fade-up" data-aos-delay="600">Où peux-tu <span> nous trouver</span></h2>

                        <p data-aos="fade-up" data-aos-delay="800"><i class="fa fa-map-marker mr-1"></i> Avenue Mohamed Ben Abdellah, Av. Regragui, Rabat</p>
<!-- How to change your own map point
	1. Go to Google Maps
	2. Click on your location point
	3. Click "Share" and choose "Embed map" tab
	4. Copy only URL and paste it within the src="" field below
-->
                        <div class="google-map" data-aos="fade-up" data-aos-delay="900">
                          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6616.609604528583!2d-6.866331899999982!3d33.9847039!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda76ce7f9462dd1%3A0x2e9c39cfa1d9e8d7!2s%C3%89cole%20Nationale%20Sup%C3%A9rieure%20d&#39;Informatique%20et%20d&#39;Analyse%20des%20Syst%C3%A8mes!5e0!3m2!1sfr!2sma!4v1639406699280!5m2!1sfr!2sma" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                        </div>
                    </div>
                    
               </div>
          </div>
     </section>


     <!-- FOOTER -->
     <footer class="site-footer">
          <div class="container">
               <div class="row">

                    <div class="ml-auto col-lg-4 col-md-5">
                        <p class="copyright-text">Copyright &copy; 2021 TESTEZ VOUS.
                        
                    </div>

                    <div class="d-flex justify-content-center mx-auto col-lg-5 col-md-7 col-12">
                        <p class="mr-4">
                            <i class="fa fa-envelope-o mr-1"></i>
                            <a href="https://www.linkedin.com/in/jouhar-houda-245035177/">HOUDA JOUHAR</a>
                        </p>
                        
                        <p class="mr-4">
                            <i class="fa fa-envelope-o mr-1"></i>
                            <a href="https://www.linkedin.com/in/ikrame-nouigua-b32613193/">IKRAME NOUIGUA</a>
                        </p>

                    </div>
                    
               </div>
          </div>
     </footer>

    <!-- Modal -->
    <div class="modal fade" id="membershipForm" tabindex="-1" role="dialog" aria-labelledby="membershipFormLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">

        <div class="modal-content">
          <div class="modal-header">

            <h2 class="modal-title" id="membershipFormLabel">Membership Form</h2>

            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>

          <div class="modal-body">
            <form class="membership-form webform" role="form">
                <input type="text" class="form-control" name="cf-name" placeholder="John Doe">

                <input type="email" class="form-control" name="cf-email" placeholder="Johndoe@gmail.com">

                <input type="tel" class="form-control" name="cf-phone" placeholder="123-456-7890" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" required>

                <textarea class="form-control" rows="3" name="cf-message" placeholder="Additional Message"></textarea>

                <button type="submit" class="form-control" id="submit-button" name="submit">Submit Button</button>

                <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="signup-agree">
                    <label class="custom-control-label text-small text-muted" for="signup-agree">I agree to the <a href="#">Terms &amp;Conditions</a>
                    </label>
                </div>
            </form>
          </div>

          <div class="modal-footer"></div>

        </div>
      </div>
    </div>

     <!-- SCRIPTS -->
     <script src="js/jquery.min.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/aos.js"></script>
     <script src="js/smoothscroll.js"></script>
     <script src="js/custom.js"></script>
      <%
		if(session.getAttribute("email")!=null){
																					
		%>
<div  class="fixed-btn">
<a href="COMPONENTS/chatbot/index.jsp">
  <img
                        alt="..."
                        src="images/chatb.png"
                        height ="120"
                        width="120"
                      />
                       <br> <br> <br> <br>
                       
</a>
    
  </div>
   <%
		}
																					
									%>
</body>

</html>