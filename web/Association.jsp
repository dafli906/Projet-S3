<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Association</title>
           <link href="css/navbar.css" rel="stylesheet">
   <meta name="viewport" content="width=device-width, initial-scale=1">

  </head>
  <body>
        
    
    <div id="container">

      <nav>
        <div id="logo">
         Association
        </div>
        <ul>
          <li class="dropdown" onmouseover="hover(this);" onmouseout="out(this);"><a href="#">Evénement &nbsp;<i class="fa fa-caret-down"></i></a>
            <div class="dd">
              <div id="up_arrow"></div>
            <ul>
              
              <li><a href="CreationEvent.jsp">Création</a></li>
              <li><a href="#">Modification</a></li>
              <li><a href="#">Supression</a></li>
            </ul>
            </div>
          </li>
          
          <li class="dropdown"><a href="#">Compte &nbsp;<i class="fa fa-caret-down"></i> </a>
           <div class="dd">
             <div id="u_a_c"><div id="up_arrow"></div></div>
            <ul>
              
              <li><a href="CompteAssociation.jsp">Voir Prfile</a></li>
              <li><a href="#">Se déconnecter</a></li>
            </ul>
            </div>
              <li class="dropdown"><a href="#">Other &nbsp;<i class="fa fa-caret-down"></i> </a>
           <div class="dd">
             <div id="u_a_c"><div id="up_arrow"></div></div>
            <ul>
              
              <li><a href="#">Langage</a></li>
            </ul>
            </div>
        </ul>
      </nav>
    </div>
      <br><br><br><br><br>
  <center>
      <h1><i>Bienvenue sur votre plateforme</i></h1>
      <br><br>
      <p>Vous pouvez créer des événements qui seront aficher aux différents donnateurs </p>
  </center>
    </body>
</html>
