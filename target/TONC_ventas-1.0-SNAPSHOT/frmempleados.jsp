<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>FORMULARIO DE EMPLEADOS</title>
</head>
<body>
    <div class="container">   
        <jsp:include page="WEB-INF/Menu.jsp">
            <jsp:param name="opcion" value="empelados"/>
        </jsp:include>
        <br><br><br>
        <h1><center>FORMULARIO DE EMPLEADOS</center></h1>
        <form action="EmpleadoControlador" method="post">
            <input type="hidden" name="id" value="${empleado.id}">
            <div class="mb-3">
                <label for="" class="form-label">CI</label>
                <input type="text" class="form-control" name="ci" value="${empleado.ci}" placeholder="Escriba su ci">
            </div>
            <div class="mb-3">
                <label for="" class="form-label">NOMBRES</label>
                <input type="text" class="form-control" name="nombres" value="${empleado.nombres}" placeholder="Escriba su nombre">
            </div>
            <div class="mb-3">
                <label for="" class="form-label">APELLIDOS</label>
                <input type="text" class="form-control" name="apellidos" value="${empleado.apellidos}" placeholder="Escriba su apellido">
            </div>
            <div class="mb-3 ">
                <label for="" class="form-label">CELULAR</label>
                <input type="text" class="form-control" name="precio" value="${empleado.celular}" placeholder="Escriba su celular">
            </div>
            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</html>
