<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        body{
            background-color: #B0C4DE;
        }
    </style>
    <title>PRODUCTOS</title>
  </head>
  <body>
      <div class="container">   
         <jsp:include page="WEB-INF/Menu.jsp">
             <jsp:param name="opcion" value="productos"/>
         </jsp:include>
          <br><br><br>
          <h1><center>LISTA DE PRODUCTOS</center></h1>
         <div class="d-grid gap-2 d-md-flex justify-content-md-end">
             <a href="ProductoControlador?action=add" class="btn btn-primary btn-sm"><i class="fas fa-plus-circle"></i> AÑADIR NUEVO</a>
         </div>
          <br>
         <table class="table table-dark table-hover">
             <tr>
                 <th>ID</th>
                 <th>NOMBRES</th>
                 <th>DESCRIPCION</th>
                 <th>PRECIO</th>
                 <th colspan="2">OPERACIÓN</th>
             </tr>
             <c:forEach var="item" items="${productos}">
                 <tr>
                 <td>${item.id}</td>
                 <td>${item.nombre}</td>
                 <td>${item.descripcion}</td>
                 <td>${item.precio}</td>
                 <td><a href="ProductoControlador?action=edit&id=${item.id}" class="fas fa-edit"></a></td>
                 <td><a href="ProductoControlador?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro de elimnar'))" class="fas fa-trash-alt"></a></td>
             </tr>
             </c:forEach>
         </table>
      </div>
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  </body>
</html>
