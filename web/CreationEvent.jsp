<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Création événenement</title>
        <link href="css/navbar.css" rel="stylesheet">
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
    <format action="Creationevent" method="" enctype="multipart/form-data">
         <center>
        <table>
            <tbody>
           
                <tr>
                    <td padding:15px><label>Nom de l'événement</label></td>
                    <td padding:15px><input type="text"  name="nomevent" placeholder="écrire ici"/></td> 
                </tr>
               <tr> <td padding:80px><label>Description</label></td>
                    <td padding:80px><input type="text" name="description" placeholder="écrire ici"/></td>
                </tr>
                <tr> <td padding:15px><label>Image</label></td>
                    <td padding:15px><input type="file" src=""  name="file" /></td>
                </tr>
                <tr>
                    <td padding:15px colspan="2" style="text-align:center" ><input type="submit"  class="btn btn-success" value="Enregistrer" /></td>                       
                </tr>
            
            </tbody>
        </table>
             </center>
    </format>  
    </body>
</html>
