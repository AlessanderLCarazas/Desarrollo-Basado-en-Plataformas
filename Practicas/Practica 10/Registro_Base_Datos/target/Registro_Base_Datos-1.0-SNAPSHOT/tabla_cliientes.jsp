<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:forEach items="${clientes}" var="cliente" varStatus="status">
    <tr>
        <td>${cliente.dni}</td>
        <td>${cliente.nombres}</td>
        <td>${cliente.apellidos}</td>
        <td>${cliente.email}</td>
        <td>${cliente.telefono}</td>
    </tr>
</c:forEach>