<%@ page import="model.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 09/11/2021
  Time: 5:02 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer(1,"Nguyen Minh Tam","Hai Duong"));
    customers.add(new Customer(1,"Pham Minh Trang","Hai Duong"));
    customers.add(new Customer(1,"Pham Viet Hoang","Hai Duong"));
    request.setAttribute("List",customers);
  %>
<body>

<h1>danh sách Lớp</h1>
<table>
    <tr>

        <td><c:out value="${'id'}">id</c:out> </td>
        <td><c:out value="${'name'}">name</c:out></td>
        <td><c:out value="${'address'}">add</c:out></td>
    </tr>
    <c:forEach items="${List}" var="cs" >
        <tr>

            <td>${cs.id}</td>
            <td>${cs.name}</td>
            <td>${cs.address}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
