<%-- 
    Document   : detailRoom
    Created on : Oct 16, 2021, 8:33:14 PM
    Author     : Phước Hà
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <jsp:include page="components/head.jsp"></jsp:include>
        </head>
        <body>
        <jsp:include page="components/header.jsp"></jsp:include>   
            <!-- Room Details Section Begin -->
            <section class="room-details-section spad">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="room-details-item">
                                <img src="img/room/room-details.jpg" alt="">
                                <div class="rd-text">
                                    <div class="rd-title">
                                        <h3>${requestScope.ROOM_DETAIL.roomName}</h3>
                                </div>
                                <h2>${requestScope.ROOM_DETAIL.price}<span>/Pernight</span></h2>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="r-o">Capacity:</td>
                                            <td>Max persion ${requestScope.ROOM_DETAIL.roomTypesDTO.maxPeople}</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Bed:</td>
                                            <td>${requestScope.ROOM_DETAIL.roomTypesDTO.bed} Beds</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Services:</td>
                                            <td>Wifi, Television, Bathroom,...</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <p class="f-para">
                                    ${requestScope.ROOM_DETAIL.roomTypesDTO.discription}
                                </p>
                            </div>
                        </div>
                        <div class="rd-reviews">
                            <h4>Reviews</h4>

                            <c:forEach var="feed" items="${requestScope.FEED_BACKS}">
                                <div class="review-item">
                                    <div class="ri-pic">
                                        <img src="img/room/avatar/avatar-1.jpg" alt="">
                                    </div>
                                    <div class="ri-text">
                                        <div class="rating">
                                            <c:forEach begin="1" end="${feed.value}">
                                                <i class="icon_star"></i>
                                            </c:forEach>
                                        </div>
                                        <h5>${feed.userDTO.name}</h5>
                                        <p>${feed.description}.</p>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Room Details Section End -->
        <jsp:include page="components/footer.jsp"></jsp:include>
    </body>
</html>
