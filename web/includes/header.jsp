<%@page import="bd.Url"%>
<%@page import="bd.User"%>

<header class="header">
    <div class="header-ctn">
        <div class="logo-container">
            <a href="<%= Url.linkTo("index.jsp")%>"><img src="<%= Url.linkTo("assets/img/logo.png") %>"></a>
        </div>
        <nav>
            <ul>
                <li><a href="<%= Url.linkTo("about.jsp")%>">Acerca de Nosotros</a></li>
                <li>
                    <a href="<%= Url.linkTo("foro") %>">
                        Contacto
                    </a>
                </li>
                <li>
                    <a href="<%= Url.linkTo("foro") %>">
                        <i class="fa fa-comments"></i> Foro
                    </a>
                </li>
                
                <% if(User.auth(request) != null) { %>
                <li><a href="<%= Url.linkTo("administrador/BienvenidaAdmin.jsp") %>"><%= User.auth(request).getNombre()  + " " + User.auth(request).getApellido() %> <i class="fa fa-user"></i></a></li>
                    <li><a href="<%= Url.linkTo("sign_out.do") %>"><i class="fa fa-sign-out"></i> Salir</a></li>    
                <% } else {%>
                    <li><a href="<%= Url.linkTo("login.jsp")%>" class="login">Iniciar Sesi�n</a></li>
                    <li><a href="<%= Url.linkTo("register.jsp")%>" class="register">Registrarse</a></li>
                <% } %>
                <li>
                    <a href="<%= Url.linkTo("cart.jsp") %>" class="shopping-icon">
                        <i class="fa fa-shopping-cart"></i>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</header>
                        