<%-- 
    Document   : EventView
    Created on : Feb 16, 2016, 9:58:50 AM
    Author     : a
--%>

<%@include file="../top.jspf" %>

<%
    Event event = (Event)request.getAttribute("event");
    if(event == null) return;
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Event View</title>
    </head>
    <body>
        <h1>Event View</h1>
        
        <h2>${event.toString()}</h2>
        <%--
            <c:url var="eventsListUrl" value="Events">
                <c:param name="action" value="list"/>
            </c:url>
        <a href= "${eventsListUrl}"> <c:out value="Events List"/> </a>   --%>
    </body>
</html>
