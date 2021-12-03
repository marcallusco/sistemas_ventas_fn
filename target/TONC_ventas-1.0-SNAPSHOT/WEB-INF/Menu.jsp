<%
    String opcion = request.getParameter("opcion");
%>

    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark" aria-label="Main navigation">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">MINI MARKET "SAN LUIS"</a>
            <button class="navbar-toggler p-0 border-0" type="button" id="navbarSideCollapse" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav me-auto mb-3 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link  <%= (opcion.equals("clientes") ? "active" : "")%>" href="ClienteControlador">Clientes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <%= (opcion.equals("empleados") ? "active" : "")%>" href="EmpleadoControlador">Empleados</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <%= (opcion.equals("productos") ? "active" : "")%>" href="ProductoControlador">Productos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link  <%= (opcion.equals("ventas") ? "active" : "")%>" href="VentaControlador">Ventas</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Buscar" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">BUSCAR</button>
                </form>
                     <a href="Logout" class="btn btn-outline-success"> CERRAR SESSION</a>
            </div>
        </div>
    </nav>
