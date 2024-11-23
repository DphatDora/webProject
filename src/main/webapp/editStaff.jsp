<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="POS - Bootstrap Admin Template">
    <meta name="keywords" content="admin, estimates, bootstrap, business, corporate, creative, invoice, html5, responsive, Projects">
    <meta name="author" content="Dreamguys - Bootstrap Admin Template">
    <meta name="robots" content="noindex, nofollow">
    
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.jpg">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">
    <link rel="stylesheet" href="assets/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <title>Chi tiết nhân viên</title>
</head>
<body>
    <div id="global-loader">
        <div class="whirly-loader"> </div>
    </div>
        
    <div class="main-wrapper">
        
        <div class="header">
        
            <div class="header-left active">
                <a href="index.html" class="logo">
                    <img src="assets/img/logo.png" alt="">
                </a>
                <a href="index.html" class="logo-small">
                    <img src="assets/img/logo-small.png" alt="">
                </a>
                <a id="toggle_btn" href="javascript:void(0);">
                </a>
            </div>

            <a id="mobile_btn" class="mobile_btn" href="#sidebar">
                <span class="bar-icon"></span>
                <span></span>
                <span></span>
                <span></span>
            </a>

        <ul class="nav user-menu">

            <li class="nav-item">
                <div class="top-nav-search">
                    <a href="javascript:void(0);" class="responsive-search">
                        <i class="fa fa-search"></i>
                    </a>
                    <form action="#">
                        <div class="searchinputs">
                            <input type="text" placeholder="Search Here ...">
                            <div class="search-addon">
                                <span><img src="assets/img/icons/closes.svg" alt="img"></span>
                            </div>
                        </div>
                        <a class="btn" id="searchdiv"><img src="assets/img/icons/search.svg" alt="img"></a>
                    </form>
                </div>
            </li>
            
            
            <li class="nav-item dropdown has-arrow flag-nav">
                <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="javascript:void(0);" role="button">
                    <img src="assets/img/flags/us1.png" alt="" height="20">
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a href="javascript:void(0);" class="dropdown-item">
                        <img src="assets/img/flags/us.png" alt="" height="16"> English
                    </a>
                    <a href="javascript:void(0);" class="dropdown-item">
                        <img src="assets/img/flags/fr.png" alt="" height="16"> French
                    </a>
                    <a href="javascript:void(0);" class="dropdown-item">
                        <img src="assets/img/flags/es.png" alt="" height="16"> Spanish
                    </a>
                    <a href="javascript:void(0);" class="dropdown-item">
                        <img src="assets/img/flags/de.png" alt="" height="16"> German
                    </a>
                </div>
            </li>
            
            
            <li class="nav-item dropdown">
                <a href="javascript:void(0);" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                <img src="assets/img/icons/notification-bing.svg" alt="img"> <span class="badge rounded-pill">4</span>
                </a> 
                <div class="dropdown-menu notifications">
                    <div class="topnav-dropdown-header">
                        <span class="notification-title">Notifications</span>
                        <a href="javascript:void(0)" class="clear-noti"> Clear All </a>
                    </div>
                    <div class="noti-content">
                        <ul class="notification-list">
                            <li class="notification-message">
                                <a href="activities.html">
                                    <div class="media d-flex">
                                        <span class="avatar flex-shrink-0">
                                            <img alt="" src="assets/img/profiles/avatar-02.jpg">
                                        </span>
                                        <div class="media-body flex-grow-1">
                                            <p class="noti-details"><span class="noti-title">John Doe</span> added new task <span class="noti-title">Patient appointment booking</span></p>
                                            <p class="noti-time"><span class="notification-time">4 mins ago</span></p>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li class="notification-message">
                                <a href="activities.html">
                                    <div class="media d-flex">
                                        <span class="avatar flex-shrink-0">
                                            <img alt="" src="assets/img/profiles/avatar-03.jpg">
                                        </span>
                                        <div class="media-body flex-grow-1">
                                            <p class="noti-details"><span class="noti-title">Tarah Shropshire</span> changed the task name <span class="noti-title">Appointment booking with payment gateway</span></p>
                                            <p class="noti-time"><span class="notification-time">6 mins ago</span></p>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li class="notification-message">
                                <a href="activities.html">
                                    <div class="media d-flex">
                                        <span class="avatar flex-shrink-0">
                                            <img alt="" src="assets/img/profiles/avatar-06.jpg">
                                        </span>
                                        <div class="media-body flex-grow-1">
                                            <p class="noti-details"><span class="noti-title">Misty Tison</span> added <span class="noti-title">Domenic Houston</span> and <span class="noti-title">Claire Mapes</span> to project <span class="noti-title">Doctor available module</span></p>
                                            <p class="noti-time"><span class="notification-time">8 mins ago</span></p>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li class="notification-message">
                                <a href="activities.html">
                                    <div class="media d-flex">
                                        <span class="avatar flex-shrink-0">
                                            <img alt="" src="assets/img/profiles/avatar-17.jpg">
                                        </span>
                                        <div class="media-body flex-grow-1">
                                            <p class="noti-details"><span class="noti-title">Rolland Webber</span> completed task <span class="noti-title">Patient and Doctor video conferencing</span></p>
                                            <p class="noti-time"><span class="notification-time">12 mins ago</span></p>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li class="notification-message">
                                <a href="activities.html">
                                    <div class="media d-flex">
                                        <span class="avatar flex-shrink-0">
                                            <img alt="" src="assets/img/profiles/avatar-13.jpg">
                                        </span>
                                        <div class="media-body flex-grow-1">
                                            <p class="noti-details"><span class="noti-title">Bernardo Galaviz</span> added new task <span class="noti-title">Private chat module</span></p>
                                            <p class="noti-time"><span class="notification-time">2 days ago</span></p>
                                        </div>
                                    </div>
                                </a>
                            </li>

                        </ul>
                    </div>
                    <div class="topnav-dropdown-footer">
                        <a href="activities.html">View all Notifications</a>
                    </div>
                </div>
            </li>
            
            <li class="nav-item dropdown has-arrow main-drop">
                <a href="javascript:void(0);" class="dropdown-toggle nav-link userset" data-bs-toggle="dropdown">
                    <span class="user-img"><img src="assets/img/profiles/avator1.jpg" alt="">
                    <span class="status online"></span></span>
                </a>
                <div class="dropdown-menu menu-drop-user">
                    <div class="profilename">
                        <div class="profileset">
                            <span class="user-img"><img src="assets/img/profiles/avator1.jpg" alt="">
                            <span class="status online"></span></span>
                            <div class="profilesets">
                                <h6>John Doe</h6>
                                <h5>Admin</h5>
                            </div>
                        </div>
                        <hr class="m-0">
                            <a class="dropdown-item" href="profile.html"> <i class="me-2" data-feather="user"></i> My Profile</a>
                            <a class="dropdown-item" href="generalsettings.html"><i class="me-2" data-feather="settings"></i>Settings</a>
                        <hr class="m-0">
                            <a class="dropdown-item logout pb-0" href="signin.html"><img src="assets/img/icons/log-out.svg" class="me-2" alt="img">Logout</a>
                    </div>
                </div>
            </li>

        </ul>

        <div class="dropdown mobile-user-menu">
            <a href="javascript:void(0);" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
            <div class="dropdown-menu dropdown-menu-right">
                <a class="dropdown-item" href="profile.html">My Profile</a>
                <a class="dropdown-item" href="generalsettings.html">Settings</a>
                <a class="dropdown-item" href="signin.html">Logout</a>
            </div>
        </div>
            
    </div>

    <div class="sidebar" id="sidebar">
        <div class="sidebar-inner slimscroll">
            <div id="sidebar-menu" class="sidebar-menu">
                <ul>
                    <li class="active">
                        <a href="${pageContext.request.contextPath}/listStaff"><img src="assets/img/icons/dashboard.svg" alt="img" class="active"><span> Quản lý nhân viên</span> </a>
                    </li>
                </ul>
                <ul>
                    <li>
                        <a href="${pageContext.request.contextPath}/setShiftStaff"><img src="assets/img/icons/dashboard.svg" alt="img" class=""><span>Phân ca làm việc</span> </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="page-wrapper">
        <div class="content">

            <div class="page-header">
                <div class="page-title">
                    <h4>Quản lý nhân viên</h4>
                    <h6>Thêm/Chỉnh sửa nhân viên</h6>
                </div>
            </div>

            <div class="card">
                <div class="card-body">
                    <form action="" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="emp-id" value="${staff.personID}">
                        <div class="row">
                            <c:if test="${not empty message}">
                                <c:if test="${isSuccess == true}">
                                <div id="success-alert" class="alert alert-success alert-dismissible fade show" role="alert">
                                        ${message}
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>
                                </c:if>
                                <c:if test="${isSuccess == false}">
                                    <div id="success-alert" class="alert alert-warning alert-dismissible fade show" role="alert">
                                            ${message}
                                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                    </div>
                                </c:if>
                            </c:if>
                            <div class="d-flex justify-content-center">
                                <div class="col-lg-3">
                                    <div class="form-group avatar-preview text-center">
                                        <%@ page import="finalProject.data.ImageUtil" %>
                                        <c:if test="${staff.avatar != null}">
                                            <img id="avatar-image" src="data:image/jpeg;base64,${ImageUtil.DisplayImage(staff.avatar)}" alt="Avatar" class="img-thumbnail mb-3" style="width: 150px; height: 150px;">
                                        </c:if>
                                        <c:if test="${staff.avatar == null}">
                                            <img id="avatar-image" src="styles/blankavatar.jpg" alt="Avatar" class="img-thumbnail mb-3" style="width: 150px; height: 150px;">
                                        </c:if>
                                        <label for="avatar" class="btn btn-primary btn-sm">Upload Avatar</label>
                                        <input type="file" class="form-control-file" id="avatar" name="avatar" accept="image/*" onchange="previewAvatar(event)" value="${staff.avatar}" style="display: none;">
                                    </div>      
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>Tên nhân viên</label>
                                    <input type="text" name="emp-name" value="${staff.name}" required>
                                </div>
                            </div>
    
                            <div class="col-lg-3 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="text" name="email" value="${staff.email}" required>
                                </div>
                            </div>
    
                            <div class="col-lg-3 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>Số điện thoại</label>
                                    <input type="tel" name="phone" class = "form-control" pattern="^[0-9]{10}$" value="${staff.phone}" required>
                                </div>
                            </div>
    
                            <div class="col-lg-3 col-sm-6 col-12">
                                <div class="form-group">
                                    <label> Ngày tháng năm sinh</label>
                                    <input type="date" id="birth-date" name="birth-date" class = "form-control" value="<fmt:formatDate value='${staff.birthDate}' pattern='yyyy-MM-dd' />" required>
                                </div>
                            </div>
    
                            <div class="col-lg-3 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>Quốc gia</label>
                                    <input type="text" name="address-country" value = "${staff.address.country}" required>
                                </div>
                            </div>
    
                            <div class="col-lg-3 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>Tỉnh/Thành phố</label>
                                    <input type="text" name="address-province" value = "${staff.address.province}" required>
                                </div>
                            </div>
    
                            <div class="col-lg-3 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>Quận/Huyện</label>
                                    <input type="text" name="address-city" value = "${staff.address.city}" required>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>Đường</label>
                                    <input type="text" name="address-street" value = "${staff.address.street}" required>
                                </div>
                            </div>
    
                            <div class="col-lg-3 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>Tiền lương/Tháng</label>
                                    <input type="number" name="salary" class="form-control" value="<fmt:formatNumber value='${staff.salary}' pattern='0.##' />" required>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>Ngày bắt đầu làm việc</label>
                                    <input type="date" name = "work-date" class="form-control" value="<fmt:formatDate value='${staff.workDate}' pattern='yyyy-MM-dd' />" required>
                                </div>
                            </div>

                            <div class="col-lg-3 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>Mật khẩu tài khoản:</label>
                                    <input type="text" name = "password" class="form-control" value="${staff.password}" readonly>
                                </div>
                            </div>

                            <div class="col-lg-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>Xem ca làm việc trong tháng</label>
                                    <select name="list-shift" id="list-shift" class="form-control mb-3">
                                        <c:forEach var="shift" items="${listShift}">
                                            <option value="${shift.shiftID}">Ca ngày: <fmt:formatDate value="${shift.shiftDate}" pattern="yyyy-MM-dd" />: từ <span>${shift.startTime} - ${shift.endTime}</span></option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            
                            <div class="col-lg-12">
                                <button type="submit" name="action" value="edit" class="btn btn-submit me-2">Chỉnh sửa</button>
                                <button class="btn btn-cancel" type="button" onclick="window.location.href='${pageContext.request.contextPath}/listStaff'">Quay lại</button>
                            </div>

                        </div>
                    </form>
                </div>
            </div>

        </div>

    </div>
    </div>
	<script src="scripts/loadAvatar.js"></script>
    <script src="assets/js/jquery-3.6.0.min.js"></script>
    <script src="assets/js/feather.min.js"></script>
    <script src="assets/js/jquery.slimscroll.min.js"></script>
    <script src="assets/js/jquery.dataTables.min.js"></script>
    <script src="assets/js/dataTables.bootstrap4.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/plugins/select2/js/select2.min.js"></script>
    <script src="assets/plugins/sweetalert/sweetalert2.all.min.js"></script>
    <script src="assets/plugins/sweetalert/sweetalerts.min.js"></script>
    <script src="assets/js/script.js"></script>

</body>
</html>