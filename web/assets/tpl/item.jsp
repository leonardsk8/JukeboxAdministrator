<%-- 
    Document   : item
    Created on : Jun 8, 2018, 9:44:04 PM
    Author     : leona
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <body>
            <div class="contenedor">
        <h2>{{title}}</h2>
        <div id="{{videoid}}" class="reproductor" data-id="{{videoid}}">
            <img id="{{videoid}}img" data-id="{{videoid}}" class="imagen-previa" src="//i.ytimg.com/vi/{{videoid}}/mqdefault.jpg"><div class="youtube-play"></div>
        </div>
        <div id="{{videoid}}tube"></div>
        <button id="{{videoid}}btn" type="button" class="btn btn-info btnList">A la lista de reproducción</button>
        
        </div>
        
        <% 
               out.println("<script>");
               out.println("$('#{{videoid}}').click(function (){");
               out.println("var video = '<iframe class='video w100' width='300' height='200' src='//www.youtube.com/embed/{{videoid}}?autoplay=1' frameborder='0' allowfullscreen></iframe>'");
               out.println("$('#{{videoid}}').hide();");
               out.println("$('#{{videoid}}tube').html(video);");
               out.println("});");
               out.println("");
               out.println("");
               out.println("");
               out.println("</script>");
        %>
<!--        <script>
            
//            $('#||').click(function (){
//               //alert("click video id: {{videoid}}"); 
//               var video = '<iframe class="video w100" width="300" height="200" src="//www.youtube.com/embed/{{videoid}}?autoplay=1" frameborder="0" allowfullscreen></iframe>';
//               $('').hide();
//              $('tube').html(video); 
//            });
//            $('btn').click(function (){
//                firebase.database().ref('reproduction_list/establishment/');
//            });
        </script>-->
    </body>
</html>
