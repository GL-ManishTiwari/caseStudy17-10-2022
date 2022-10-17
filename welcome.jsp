<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
            <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

                <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
                <html lang="eng">

                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
                    <title>Recharge Plan</title>
                    <link href="../../webjars/bootstrap/5.2.2/css/bootstrap.min.css" rel="stylesheet" />
                    <script src="../../webjars/bootstrap/5.2.2/js/bootstrap.min.js"></script>
                    <script src="../../webjars/jquery/3.6.1/js/jquery.min.js"></script>
                </head>

                <body>
                    <div class="container">
                        <spring:url value="/recharge/successful" var="addURL" />
                        <h2>Mobile Recharge</h2>
                        <form:form modelAttribute="mobileRechargeForm" method="post" action="${addURL}" cssClass="form">
                            <div class="form-group">
                                <label>Enter Mobile Number</label>
                                <form:input path="mobileNumber" cssClass="form-control" id="mobilenumber" />
                            </div>
                            <br />
                            <table aria-describedby="rechare plan list" class="table table-striped">
                                <thead class="table-dark">
                                    <th scope="row">Plan Id</th>
                                    <th scope="row">Days</th>
                                    <th scope="row">Talktime</th>
                                    <th scope="row">Data</th>
                                    <th scope="row">Price</th>
                                    <th scope="row">Select</th>
                                </thead>
                                <tbody>
                                    <c:forEach items="${rechargePlanList}" var="rechargeplan">
                                        <tr>
                                            <td>${rechargeplan.id}</td>
                                            <td>${rechargeplan.days}</td>
                                            <td>${rechargeplan.talkTime}</td>
                                            <td>${rechargeplan.data} GB</td>
                                            <td>${rechargeplan.price}</td>
                                            <td>
                                                <form:radiobutton name="select" path="offerId"
                                                    value="${rechargeplan.id}" />
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <button type="submit" class="btn btn-success">Submit</button>
                        </form:form>
                    </div>
                </body>

                </html>