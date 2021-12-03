<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>FORMULARIO DE VENTAS</title>
  </head>
  <body>
      <div class="container">   
         <jsp:include page="WEB-INF/Menu.jsp">
             <jsp:param name="opcion" value="ventas"/>
         </jsp:include>
          <br><br><br>
         <h1><center>FORMULARIO DE VENTAS</center></h1>
         <form action="VentaControlador" method="post">
             <input type="hidden" name="id" value="${venta.id}">
             <div class="mb-3">
                 <label for="" class="form-label">Cliente</label>
                 <select name="cliente_id" class="form-control">
                     <option value="">Selecione una opción</option>
                     <c:forEach var="item" items="${lista_clientes}">
                         <option value="${item.id}"
                                 <c:if test="${venta.cliente_id == item.id}">
                                     selected
                                 </c:if>
                                     >${item.nombre}</option>
                     </c:forEach>
                 </select>
             </div>
             
             <div class="mb-3">
                 <label for="" class="form-label">Producto</label>
                 <select name="producto_id" class="form-control">
                    <option value="">Selecione una opción</option>
                    <c:forEach var="item" items="${lista_productos}">
                        <option value="${item.id}" 
                                <c:if test="${venta.producto_id == item.id}">selected
                                </c:if>
                                >${item.nombre}</option>
                    </c:forEach>
                 </select>
             </div>
             <div class="mb-3 ">
                 <label for="" class="form-label">Fecha</label>
                 <input type="text" class="form-control" name="fecha" value="${venta.fecha}" placeholder="Escriba la fecha">
             </div>
             <button type="submit" class="btn btn-primary">Enviar</button>
         </form>
      </div>
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  </body>
</html>
