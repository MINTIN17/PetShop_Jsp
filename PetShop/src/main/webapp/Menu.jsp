<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<!--begin of menu-->

<nav class="navbar navbar-expand-md navbar-dark bg-custom" style="padding: 0;margin: 0;display: flex; flex-direction: column;position: fixed; top: 0; width:100%;  z-index: 100000; background-color: #de8ebe;">
     <div class="extra-div" style="height:32px;width: 100%; background-color: #d261a4;">
  	 <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav" style="margin-right:30px; padding-top:-8px;">
                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="#" style="font-size: 14px;">Xin chào,  ${sessionScope.acc.user}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout" style="font-size: 14px; ">Đăng xuất</a>
                    </li> 
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="login" style="font-size: 14px;">Đăng nhập</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="forgotPassword" style="font-size: 14px;">Đăng kí</a>
                    </li>
                </c:if>
              
               <%--  <c:if test="${sessionScope.acc.isAdmin == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="statistic">Statistic</a>
                    </li>
                </c:if> --%>
            </ul>
            </div>
     </div>
    
    <div class="container">
      <a class="navbar-brand" href="home">
    <img src="data:image/png;base64,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" style="max-height: 60px;" />
	</a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
            <li class="nav-item">
                        <a class="nav-link" href="home">Trang chủ</a>
                    </li> 
            <li class="nav-item">
                        <a class="nav-link" href="shop">Cửa hàng</a>
                    </li> 
            <li class="nav-item">
                        <a class="nav-link" href="#intro">Giới thiệu</a>
                    </li> 
            <li class="nav-item">
                        <a class="nav-link" href="#footer">Liên hệ</a>
                    </li> 
                
               
            </ul>

            <form action="search" method="post" class="form-inline my-2 my-lg-0">
                 <div class="rounded-circle p-3 d-flex align-items-center justify-content-center" style="width: 40px; height: 40px; border: 1px solid white;">
                            <i class="fa-solid fa-phone fs-5" style="color:white;"></i>
                        </div>
                                
                        <div style="font-size: 12px; margin-left: 7px; color:white;">
                            Phone number<br>
                            <strong>19001008</strong>
                        </div>
    	           <a class="btn btn-success btn-sm ml-3" href="managerCart" style="background-color: #b0171c !important; border: 1px solid #b0171c;">
    			<i class="fa-solid fa-cart-plus fs-6"></i> <span style="font-size: 14px;">Cart</span>
               <b><span id="amountCart" class="badge badge-light" style="color:black; font-size: 12px;"></span></b>
               </a>


            </form>
        </div>
    </div>
</nav>
	



<!--end of menu-->