<%-- 
    Document   : EventsList
    Created on : Feb 16, 2016, 10:12:01 AM
    Author     : Mussa
--%>
<%@include file="../top.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Events List</title>
    </head>
    <body>

        <h1>Events List!</h1>
        <c:url var="createEventUrl" value="Events">
            <c:param name='action' value="create" /> 
        </c:url>
        <a href="${createEventUrl}"><c:out value="create event" /> </a><br>
        Events<ul>
        <c:choose>
            <c:when test="${requestScope.eventsCollection != null}">
                <c:forEach items="${eventsCollection}" var="event">
                    <li>    <c:url var="viewEventUrl" value='Events'>
                                <c:param name="action" value="view"/>
                                <c:param name="eventId" value="${event.value.getId()}"/>
                            </c:url>
                     Event <a href='${viewEventUrl}'> 
                            <c:out value="${event.value.getDescription()}"/> 
                            in : <c:out value="${event.value.getTimeStr()}"/>               
                            at : <c:out value="${event.value.getLocation()}"/>
                            </a> 
                            
                            <c:if test="${user != null &&
                                          user.getInterestedEvents() != null &&
                                           !user.getInterestedEvents().contains(event.value)}">
                                
                                <c:url var="likeEventUrl" value='Events'>
                                    <c:param name="action" value="likeEvent"/>
                                    <c:param name="userId" value="${user.getId()}"/>
                                    <c:param name="eventId" value="${event.value.getId()}"/>
                                </c:url>
                              &ensp;  <a href='${likeEventUrl}'> 
                                    <img src="public/like.png" alt="Like" width="15" height="15"/>
                                </a>                                     
                            </c:if>
                    </li>
                </c:forEach>
            </ul>
            </c:when>
            <c:otherwise>
                there are no coming events
            </c:otherwise>
        </c:choose>
    </body>
</html>
