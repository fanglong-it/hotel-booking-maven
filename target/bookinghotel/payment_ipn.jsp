
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
                    <div class="row flex-row justify-content-center align-items-center">
                        <div class="col-md-6 text-center" >
                            <h3 class="mb-5 text-black">${message}</h3>
                        <a href="HomeController" class="btn btn-primary">Go to Home</a>
                    </div>
                    <div class="col-md-6">
                        <img src="https://www.pngmart.com/files/7/Payment-PNG-Transparent-Picture.png" 
                             alt="image payment" class="img-fluid"/>
                    </div>
                </div>
            </div>
        </section>
        <!-- Room Details Section End -->
        <jsp:include page="components/footer.jsp"></jsp:include>
    </body>
</html>