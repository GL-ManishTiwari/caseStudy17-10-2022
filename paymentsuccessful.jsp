<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
            <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

                <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
                <html lang="eng">

                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
                    <title>Transaction Details</title>
                    <link href="../../webjars/bootstrap/5.2.2/css/bootstrap.min.css" rel="stylesheet" />
                    <script src="../../webjars/bootstrap/5.2.2/js/bootstrap.min.js"></script>
                    <script src="../../webjars/jquery/3.6.1/js/jquery.min.js"></script>
                </head>

                <body>
                    <div class="container">

                        <h2>Transaction Details</h2>
                        <br>
                        <h4>
                            Recharge on Mobile Number: ${transactionList.mobileNumber}
                        </h4>
                        <br>
                        <table aria-describedby="rechare plan list" class="table table-striped">
                            <thead class="table-dark">
                                <th scope="row">Transaction Id</th>
                                <th scope="row">Offer Id</th>
                                <th scope="row">Valid For</th>
                                <th scope="row">Talktime</th>
                                <th scope="row">Data</th>
                                <th scope="row">Amount Payable</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>${transactionList.transactionId}</td>
                                    <td>${transactionList.offerId}</td>
                                    <td>${rechargeplan.days}</td>
                                    <td>${rechargeplan.talkTime}</td>
                                    <td>${rechargeplan.data}</td>
                                    <td>${rechargeplan.price}</td>
                                </tr>
                            </tbody>
                        </table>
                        <br />
                        <a href="welcome" class="">
                            Return
                        </a>
                    </div>
                </body>

                </html>