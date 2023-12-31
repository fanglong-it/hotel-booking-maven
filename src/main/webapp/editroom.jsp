<%-- 
    Document   : Booking
    Created on : Mar 11, 2023, 10:05:51 PM
    Author     : DELL-G3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="components/head.jsp"></jsp:include>
<link type="text/css" rel="stylesheet" href="css/style.css"/>
<link rel="stylesheet" href="css/BookingStyle.css">
<jsp:include page="components/header.jsp"></jsp:include>
<div class="BookingForm">

    <h1 style="color:#000">Edit Room</h1>

    <form action="editRoom" method="post">
        <div class="modal-header">
            <h4 class="modal-title">Edit Room</h4>

        </div>
        <div class="modal-body">
            <div class="form-group">
                <label>Room Name</label>
                <input name="roomName" type="text" value="${requestScope.room.roomName}" class="form-control" required>
            </div>

            <div class="form-group">
                <label>Room No</label>
                <input name="numberroom" readonly="" type="text" value="${requestScope.room.roomNo}"
                       class="form-control" required>
            </div>

            <div class="form-group">
                <label>Price</label>
                <input name="price" type="text" value="${requestScope.room.price}" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Quantity</label>
                <input name="quantity" type="text" value="${requestScope.room.quantity}" class="form-control" required>
            </div>
            <div class="form-group">
                <input name="roomNo" type="hidden" value="${roomNo}" class="form-control">
            </div>


        </div>
        <div class="modal-footer">
            <input type="submit" class="btn btn-success" value="Add" style="margin-right: 180px">
        </div>
        <a href="MainController?">
            <button type="button" class="btn btn-primary">Back to home</button>
        </a>
    </form>


</div>
<!-- Footer Section Begin -->
<footer class="footer-section">
    <div class="container">
        <div class="footer-text">
            <div class="row">
                <div class="col-lg-4">
                    <div class="ft-about">
                        <div class="logo">
                            <a href="#">
                                <img src="img/footer-logo.png" alt="">
                            </a>
                        </div>
                        <p>We inspire and reach millions of travelers<br/> across 90 local websites</p>
                        <div class="fa-social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-tripadvisor"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1">
                    <div class="ft-contact">
                        <h6>Contact Us</h6>
                        <ul>
                            <li>(12) 345 67890</li>
                            <li>info.colorlib@gmail.com</li>
                            <li>856 Cordia Extension Apt. 356, Lake, United State</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1">
                    <div class="ft-newslatter">
                        <h6>New latest</h6>
                        <p>Get the latest updates and offers.</p>
                        <form action="#" class="fn-form">
                            <input type="text" placeholder="Email">
                            <button type="submit"><i class="fa fa-send"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <ul>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">Terms of use</a></li>
                        <li><a href="#">Privacy</a></li>
                        <li><a href="#">Environmental Policy</a></li>
                    </ul>
                </div>
                <div class="col-lg-5">
                    <div class="co-text">
                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                            All rights reserved | This template is made with <i class="fa fa-heart"
                                                                                aria-hidden="true"></i> by <a
                                    href="https://colorlib.com" target="_blank">Colorlib</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<!-- Search model Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch"><i class="icon_close"></i></div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search model end -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>

