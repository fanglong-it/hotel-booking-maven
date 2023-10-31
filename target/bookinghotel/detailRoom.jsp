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
                        <div class="col-sm-7">
                            <div class="room-details-item">
                                <img src="img/room/room-details.jpg" alt="">
                                <div class="rd-text">
                                    <div class="rd-title">
                                        <h3>${requestScope.ROOM_DETAIL.roomName}</h3>
                                    <div class="rdt-right">
                                        <div class="rating">
                                            <i class="icon_star"></i>
                                            <i class="icon_star"></i>
                                            <i class="icon_star"></i>
                                            <i class="icon_star"></i>
                                            <i class="icon_star-half_alt"></i>
                                        </div>
                                    </div>
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
                    <div class="col-sm-5">
                        <div class="room-booking">
                            <div class="booking-form">
                                <h3>Booking Your Hotel</h3>
                                <c:if test="${requestScope.SEARCH_MSG != null}">
                                    <h3 class="text-danger">${requestScope.SEARCH_MSG}</h3>
                                </c:if>
                                <form action="MainController" method="post">
                                    <div class="modal-body">
                                        <!-- Form -->
                                        <div class="form-group">
                                            <input type="hidden" name="hotelId" class="" value="${requestScope.ROOM_DETAIL.hotelId}" readonly=""/>
                                            <input type="hidden" name="hotelName" class="form-control" value="${requestScope.ROOM_DETAIL.hotelName}" readonly=""/>
                                        </div>
                                        <div class="form-group">
                                            <input type="hidden" name="roomNo" class="form-control" value="${requestScope.ROOM_DETAIL.roomNo}" readonly=""/>
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label">room Name</label>
                                            <input type="text" name="roomName" class="form-control" value="${requestScope.ROOM_DETAIL.roomName}" readonly=""/>
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label">Quantity</label>
                                            <input type="number" name="quantity" class="form-control" value="${requestScope.ROOM_DETAIL.quantity}"/>
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label">type Id</label>
                                            <input type="text" name="typeId" class="form-control" value="${requestScope.ROOM_DETAIL.typeId}" readonly=""/>
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label">Room Available </label>
                                            <input type="text" name="roomavail" class="form-control" value="${requestScope.ROOM_Avail}" readonly=""/>
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label">room Price</label>
                                            <input type="text" name="roomPrice" class="form-control" value="${requestScope.ROOM_DETAIL.price}" readonly=""/>
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label">Check In</label>
                                            <input type="date" name="checkIn" class="form-control" value="${sessionScope.CHECKIN_DATE}"  />
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label">Check Out</label>
                                            <input type="date" name="checkOut" class="form-control" value="${sessionScope.CHECKOUT_DATE}" />
                                        </div>
                                        <div class="form-group">
                                            <c:if test="${requestScope.ORDER_MSG != null}">
                                                <label style="color: red">${requestScope.ORDER_MSG}</label>
                                            </c:if>
                                            <c:if test="${requestScope.ORDER_MSG == null}">
                                                <c:if test="${requestScope.ROOM_Avail == 0}">
                                                    <label style="color: red">The room is not available during this time period. Please choose a different time period. Thank</label>
                                                </c:if>
                                            </c:if>
                                        </div>
                                        <div class="form-group">

                                        </div>
                                    </div>


                                    <div class="modal-footer">
                                        <div class="form-group">
                                            <button type="submit" name="btnAction" class="btn btn-primary" value="Order Now">Booking Now</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Room Details Section End -->
        <jsp:include page="components/footer.jsp"></jsp:include>
    </body>
</html>
