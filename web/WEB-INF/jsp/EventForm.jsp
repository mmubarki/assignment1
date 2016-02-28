<%-- 
    Document   : EventForm
    Created on : Feb 16, 2016, 9:58:00 AM
    Author     : Mussa
--%>
<%@include file="../top.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Event Creation Form &quot;</title>
    </head>
    <body>
        <h1>Event Creation Form!</h1>
        <h3>
            <c:url value="Events?action=list" var="eventsURL"/>
            <a href="${eventsURL}"><c:out value="back to events" /></a>   </h3>
    </body>
</html>
