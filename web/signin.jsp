<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">
  <link rel="stylesheet" href="fonts/icomoon/style.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/jquery.fancybox.min.css">
  <link rel="stylesheet" href="css/bootstrap-datepicker.css">
  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="css/aos.css">
  <link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="css/style.css">
 
    <title>Sign in donnateur</title>
    <script type="text/javascript">
        function validation(){
            var username=document.MyForm.username.value;
            if(username===""){
                alert("Entrez un nom d'utilisateur");
                document.MyForm.username.focus();
                return false;                
            }
            if(username.lenght<5 || username.lenght>20){
                alert("Nom d'utilisateur invalide!");
                document.MyForm.username.focus();
                return false;
            }
            var mdp=document.MyForm.username.value;
            var illegalchar=/[\w_]/;
            if(mdp===""){
                alert("Entrez un mot de passe");
                document.MyForm.username.focus();
                return false;                
            }
            else if(mdp.lenght<7 || mdp.lenght>15){
                alert("Mot de passe doit etre entre 7 et 15!");
                document.MyForm.username.focus();
                return false;
            }
            else if(illegalChar.test(mdp)){
                alert("Mot de passe contient des caractères invalides");
                document.MyForm.username.focus();
                return false;
            }
        }
    </script>
    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">
        <div class="container" style="background-image: url('images/hands.jpg') ; max-width:100%; " >
      <div class="container-fluid">
        <div class="d-flex align-items-center">
          <div class="site-logo"><a href="index.html">Application de gestion des dons<span>.</span> </a></div>
          <div class="ml-auto">
            <nav class="site-navigation position-relative text-right" role="navigation">
              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                  <li><a href='index.html'>Accueil</a></li>
                  <li><a>Connectez-vous</a>
                      <ul>  
                        <li><a href='signin.jsp' class="nav-link">Donnateur</a></li>
                        <li><a href='signinasso.jsp' class="nav-link">Association</a></li>
                      </ul>
                  </li>
                   <li><a>Compte</a>
                       <ul>
                        <li><a href='register.jsp' class="nav-link">Donnateur</a></li>
                        <li><a href='registerasso.jsp' class="nav-link">Association</a></li>
                       </ul>
                   </li>
                <li><a href="#schedule-section" class="nav-link">A propos</a></li>
                <li><a href="#schedule-section" class="nav-link">Nous contacter</a></li>  
              </ul>
            </nav>
            <a href="#" class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle float-right"><span class="icon-menu h3"></span></a>
          </div>

        </div>
      </div>
        </div>
    </header>
  

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
  
<div id="creationCompte">
<div class="container1" >
        <div class="row align-items-center">
          <div class="col-lg-12 mx-auto text-center" data-aos="fade-up">
             <form action="signindon" method="" >
                 <center><h3 style="margin-top: 200px"><u>Connectez vous</u></h3></center>
        <center>           
        <table style=" margin-left: 50px ; margin-top: 10px">            
            <tbody>
                <tr>
                    <td padding:15px><label>Username</label></td>
                    <td padding:15px><input type="text" class="form-control" name="username" placeholder="username"/></td> 
                </tr>
                                   <tr> <td padding:15px><label>Mot de passe</label></td>
                    <td padding:15px><input type="password" class="form-control" name="mdp" placeholder="mot de passe"/></td>
                </tr>
                
                <tr>
                    <td padding:15px colspan="2" style="text-align:center" onClick="return validation();"><input type="submit"  class="btn btn-success" value="S'indentifier" /></td>                      
                    <td padding:15px><a href="register.jsp">Creer mon compte</a></td>
                </tr>
            </tbody>
        </table>
        </center>
    </form>          
        </div>
        </div>
  </div>
    <br><br><br><br><br>
    <footer class="footer-section bg-dark">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <h3 class="text-white">Une derniere citation :</h3>
            <p>Aimer, c'est faire don de nos préférences à ceux que nous préférons. </p>
            <p> Daniel Pennac </p>
          </div>

          <div class="col-md-3 ml-auto">
            <h3 class="text-white">Contact</h3>
            <ul class="list-unstyled footer-links">
              <li><a href="#">Facebook</a></li>
              <li><a href="#">Instagram</a></li>
              <li><a href="#">WhatsApp</a></li>
              
            </ul>
          </div>

          

        </div>

        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class=" pt-5">
              <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;
            <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
            <script>document.write(new Date().getFullYear());</script> All rights reserved 
            
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
          </p>
            </div>
          </div>

        </div>
      </div>
      
    </footer>
   </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/mediaelement-and-player.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/circleaudioplayer.js"></script>
  <script src="js/main.js"></script>
    </body>

