<%-- 
    Document   : viewReservation
    Created on : Nov 6, 2020, 6:44:57 PM
    Author     : diask
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.Reservation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>The detail of your reservation are as follows: </h1>
        <%
        ArrayList<Reservation> reservations = 
                (ArrayList<Reservation>)session.getAttribute("reservations");
        if (reservations==null || reservations.size()==0){
        %>
            No Reservation
        <% 
            }else{
        %>
        <table>
<!--            <tr><td>Name: </td>
                <td>Airline: </td>
                <td>Date: </td>
                <td>Time: </td>
                <td>Flight: </td>
                <td>Seat: </td>
            </tr>-->
            <%
            for(Reservation reservation: reservations){
            %>
            <tr>
                <td>Name: <%=reservation.getName()%></td>
                <td>Airline: <%=reservation.getAirline()%></td>
                <td>Date: <%=reservation.getDate()%></td>
                <td>Time: <%=reservation.getTime()%></td>
                <td>Flight: <%=reservation.getFlight()%></td>
                <td>Seat: <%=reservation.getSeat()%></td>               
            </tr>
            <%
            }
            %>
        </table>
        <%
          }
        %>
    </body>
</html>
