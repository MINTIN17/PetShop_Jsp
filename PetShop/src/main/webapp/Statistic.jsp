<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:formatNumber var="sumAllInvoiceFormatted" value="${sumAllInvoice}" type="number" pattern="###,###,###"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Statistic</title>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
	 <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ------>
       <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 
        
      
  
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
  <!-- Material Design Bootstrap -->
  <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb-pro.min.css">
  <!-- Material Design Bootstrap Ecommerce -->
  <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb.ecommerce.min.css">
  <!-- Your custom styles (optional) -->
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ------>
       <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 
        <style>
        body {
            margin: 0;
            padding: 0;
        }
    </style>
<link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css"><link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&amp;display=swap"><link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/css/mdb5/3.8.1/compiled.min.css"><link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/css/mdb-plugins-gathered.min.css"><style>body {
  background-color: #fbfbfb;
}
@media (min-width: 991.98px) {
  main {
    padding-left: 240px;
  }
}

/* Sidebar */
.sidebar {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  padding: 58px 0 0; /* Height of navbar */
  box-shadow: 0 2px 5px 0 rgb(0 0 0 / 5%), 0 2px 10px 0 rgb(0 0 0 / 5%);
  width: 240px;
  z-index: 600;
}

@media (max-width: 991.98px) {
  .sidebar {
    width: 100%;
  }
}
.sidebar .active {
  border-radius: 5px;
  box-shadow: 0 2px 5px 0 rgb(0 0 0 / 16%), 0 2px 10px 0 rgb(0 0 0 / 12%);
}

.sidebar-sticky {
  position: relative;
  top: 0;
  height: calc(100vh - 48px);
  padding-top: 0.5rem;
  overflow-x: hidden;
  overflow-y: auto; /* Scrollable contents if viewport is shorter than content. */
}</style>
</head>
<body>

<!--Main Navigation-->
<header>
 <jsp:include page="LeftAdmin.jsp"></jsp:include>

  <style>
  	/* Định dạng phần Total Products */
#total .card {
    border-radius: 10px; /* Bo tròn các góc của card */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Thêm hiệu ứng bóng đổ cho card */
}

#total .card-body {
    padding: 1rem; /* Thêm padding cho phần nội dung của card */
}

#total h4 {
    font-size: 1.2rem; /* Đổi kích thước font cho tiêu đề */
}

#total .h1 {
    font-size: 2.5rem; /* Đổi kích thước font cho số liệu lớn */
    font-weight: bold; /* In đậm số liệu */
    color: #007bff; /* Đổi màu chữ của số liệu */
}

#total .fa-pencil-alt {
    color: #17a2b8; /* Đổi màu biểu tượng */
}

/* Định dạng phần Total Sales */
#total .card:last-child {
    margin-top: 20px; /* Khoảng cách giữa 2 card */
}

#total .fa-heart {
    color: #dc3545; /* Đổi màu biểu tượng */
}
  	
  </style>
</header>
<!--Main Navigation-->

<!--Main layout-->
<main>

<div class="nav11" style="position: fixed;top: 0;width: 100%;z-index: 1000;">
                <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #d261a4;">
                    <a class="navbar-brand" href="#" style="margin-left: 900px;">Admin Dashboard</a>
                </nav>
            </div>
   
  <div class="container pt-4" style="margin-top: 50px">
  
  

    <!--Section: Statistics with subtitles-->
  <section>
    <div class="row mt-3" id="total">
        <div class="col-xl-6 col-md-6 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="text-center">
                        <h4 style=" color:#b0171c;">TỔNG SẢN PHẨM</h4>
                        <h2>${allProduct}</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6 col-md-6 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="text-center">
                        <h4 style=" color:#b0171c;">TỔNG DOANH THU</h4>
                        <h2>${sumAllInvoiceFormatted} ₫</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


    <!--Section: Statistics with subtitles-->
  </div>
</main>
 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--Main layout-->
<!-- SCRIPTS -->
  <!-- JQuery -->
  <script src="https://mdbootstrap.com/previews/ecommerce-demo/js/jquery-3.4.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/bootstrap.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.min.js"></script>
    <!-- MDB Ecommerce JavaScript -->
    <script type="text/javascript" src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.ecommerce.min.js"></script>
 <!-- MDB -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
    <!-- Custom scripts -->
    <script type="text/javascript" src="js/script.js"></script>
    <script src="https://mdbootstrap.com/api/snippets/static/download/MDB5-Free_3.8.1/js/mdb.min.js"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
    <script>// Graph
  //pie
    var ctxP = document.getElementById("pieChart").getContext('2d');

   
    function loadAmountCart(){
   	 $.ajax({
            url: "/PetShop/loadAllAmountCart",
            type: "get", //send it through get method
            data: {
                
            },
            success: function (responseData) {
                document.getElementById("amountCart").innerHTML = responseData;
            }
        });
   }         
</script>
<script>// Graph
  //Horizontal Bar Chart
   
</script>
<script type="text/javascript" src="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/js/plugins/mdb-plugins-gathered.min.js"></script>
	 <!-- MDB -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
    <!-- Custom scripts -->
    <script type="text/javascript" src="js/script.js"></script>
</body>
</html>