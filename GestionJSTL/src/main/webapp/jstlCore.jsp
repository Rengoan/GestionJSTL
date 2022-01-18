<!--Lo primero que hacemos es importar la libreria de JSTL core-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trabajando con JSLT</title>
    </head>
    <body>
        <h1>JSTL Core</h1>
        <c:set var="nombre" value="Pedro"/>
        <!--Mostramos el valor de nuestra variable -->
        Variable nombre: <c:out value="${nombre}"/>
        <br/>
        <br/>
        Variable con codigo HTML:
        <c:out value="<h4>Hola clase!</h4>" escapeXml="false"/>
        <!-- Añadimos un flag par incluir el codigo condicional-->
        <c:set var="flag" value="true" />
        <c:if test="${flag}" >
            El flag es verdadero.
        </c:if>
        <!-- Comprobamos el valor del parametro opcion 
        que nos han pasado por la URL-->
        <c:if test="${param.opcion != null}">
            <c:choose >
                <c:when test="${param.opcion == 1}">
                    La opcion seleccionada por el usuario es la 1.
                </c:when>
                <c:when test="${param.opcion == 2}">
                    <br/>
                    La opcion seleccionada por el usuario es la 2.
                </c:when>
                <c:otherwise>
                    <br/>
                    Opcion proporcionada desconocida: ${param.opcion}
                </c:otherwise>
            </c:choose>
        </c:if>
        <!-- Vamos a trabajar con un Array--> 
        <%
            String nombres[] = {"Luis", "Marta", "Lucia"};
            request.setAttribute("nombres", nombres);

        %>
        <br/>
        <!-- Listamos los nombres -->
        <ul>
            <c:forEach var="persona" items="${nombres}">
                <li>Nombre: ${persona}</li>
                </c:forEach>
        </ul>


    </body>
</html>
