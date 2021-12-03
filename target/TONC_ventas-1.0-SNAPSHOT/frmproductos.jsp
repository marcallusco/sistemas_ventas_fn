<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>FORMULARIO DE PRODUCTOS</title>
  </head>
  <body>
      <div class="container">   
         <jsp:include page="WEB-INF/Menu.jsp">
             <jsp:param name="opcion" value="productos"/>
         </jsp:include>
          <br><br><br>
          <h1><center>FORMULARIO DE PRODUCTOS</center></h1>
         <form action="ProductoControlador" method="post">
             <input type="hidden" name="id" value="${producto.id}">
             <div class="mb-3">
                 <label for="" class="form-label">Nombre</label>
                 <input type="text" class="form-control" name="nombre" value="${producto.nombre}" placeholder="Escriba su nombre">
             </div>
             <div class="mb-3">
                 <label for="" class="form-label">Descripcion</label>
                 <input type="text" class="form-control" name="descripcion" value="${producto.descripcion}" placeholder="Escriba su correo">
             </div>
             <div class="mb-3 ">
                 <label for="" class="form-label">Precio</label>
                 <input type="number" class="form-control" name="precio" value="${producto.precio}" placeholder="Escriba su celular">
             </div>
             <button type="submit" class="btn btn-primary">Enviar</button>
         </form>
      </div>
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  </body>
</html>
