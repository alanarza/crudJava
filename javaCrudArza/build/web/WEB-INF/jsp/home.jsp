<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <title>Usuarios</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/javaCrudArza/assets/css/bootstrap.min.css">
        <script src="/javaCrudArza/assets/js/bootstrap.min.js"></script>
        
        <style>
            body{
                margin-top: 15px;
            }
        </style>
    </head
    <body> 
        
    

        <div class="col-xs-offset-2 col-xs-8 ">
            
            <legend>Bienvenido al listado de Clientes</legend>
            
            <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">Clientes</h3>
            </div>
                <div class="panel-body">
                
            <table class="table table-responsive table-striped table-hover table-condensed">
               
                <tbody>
                    <tr>
                        <th>
                            Nombre
                        </th>
                        <th>
                            Apellido
                        </th>
                        <th>
                            Edad
                        </th>
                        <th>
                            Activo
                        </th>
                        <th>
                            Acciones
                        </th>
                    </tr>
                    <c:forEach var="cliente" items="${resultado}">
                        <tr>
                            <td>
                                ${cliente.nombre}
                            </td>
                            <td>
                                ${cliente.apellido}
                            </td>
                            <td>
                                ${cliente.fecha_nac}
                            </td>
                            <td>
                                <c:if test="${cliente.activo == 1}">
                                    <span class="glyphicon glyphicon-ok"></span>
                                </c:if>
                                <c:if test="${cliente.activo == 0}">
                                    <span class="glyphicon glyphicon-remove"></span>
                                </c:if>
                            </td>
                            <td>
                                
                                <a class="btn btn-primary" href="#"><span class="glyphicon glyphicon-pencil"></span> Editar</a>

                                <button type="button" class="btn btn-danger" id="${cliente.id}" <span class="glyphicon glyphicon-trash"></span> Borrar</button>
                                                         
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            
                <a class="btn btn-success pull-right" href="#"><span class="glyphicon glyphicon-plus"></span> Nuevo cliente</a>
            
            </div>
            </div>
        </div>
    </body>
</html>