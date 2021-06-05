<%-- 
    Document   : addReservation
    Created on : Nov 6, 2020, 6:44:39 PM
    Author     : diask
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Welcome to Air Reservation !</h2>
        <form action="AddReservationServlet" method="GET">
            <br>Name <input type="text" name="name">
            <br>Airline <input type="text" name="airline">
            <br>Date <input type="date" name="date">
            <br>Time <input type="time" name="time">
            <br>Flight <input type="text" name="flight">
            <br>Seat <input type="text" name="seat">
            <br><input type="submit" name="action" value="Submit">
<!--            <input type="button" value="Submit" 
                   onClick='location.href="viewReservation.jsp"'> -->
        </form>
    </body>
</html>
