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

    <title>Quản lý nhân viên</title>
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
                            <a href="${pageContext.request.contextPath}/listStaff"><img src="assets/img/icons/dashboard.svg" alt="img"><span> Quản lý nhân viên</span> </a>
                        </li>
                    </ul>
                    <ul>
                        <li>
                            <a href="${pageContext.request.contextPath}/setShiftStaff"><img src="assets/img/icons/dashboard.svg" alt="img"><span>Phân ca làm việc</span> </a>
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
                    <div class="page-btn">
                        <a href="addStaff.jsp" class="btn btn-added"><img src="assets/img/icons/plus.svg" alt="img">Thêm nhân viên</a>
                    </div>
                    
                </div>
                
                <div class="card">
                    <div class="card-body">
                        <div class="table-top">
                            <div class="search-set form-group">
                                <div class="search-path">
                                    <a class="btn btn-filter" id="filter_search">
                                        <img src="assets/img/icons/filter.svg" alt="img">
                                        <span><img src="assets/img/icons/closes.svg" alt="img"></span>
                                    </a>
                                </div>
                                <form action="searchStaff" method="post" class="d-flex justify-content-center">
                                    <input type="text" class="form-control" name="search-name" value="${searchName}" placeholder="Nhập tên tìm kiếm..." style="margin-right: 5px;">
                                    <button type="submit" name="search-action" value="search-name" class="btn btn-filters ms-auto">
                                        <img src="assets/img/icons/search-whites.svg" alt="img">
                                    </button>
                                </form>
                            </div>
                        </div>
                    
                        <div class="card" id="filter_inputs">
                            <div class="card-body pb-0">
                                <form action="searchStaff" method="post">
                                    <div class="row">
                                        <div class="col-lg-2 col-sm-6 col-12">
                                            <select name="search-salary" id="search-salary" class="form-control select mb-3">
                                                <option value="all">Lương...</option>
                                                <option value="under10">Dưới 10 triệu</option>
                                                <option value="10to20">Từ 10 đến 20 triệu</option>
                                                <option value="over20">Trên 20 triệu</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-2 col-sm-6 col-12">
                                            <select name="search-age" id="search-age" class="form-control select mb-3">
                                                <option value="all">Tuổi...</option>
                                                <option value="18to25">Từ 18 - 25 tuổi</option>
                                                <option value="25to30">Từ 25 - 30 tuổi</option>
                                                <option value="over30">Trên 30 tuổi</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-2 col-sm-6 col-12">
                                            <select name="search-workTime" id="search-worktime" class="form-control select mb-3">
                                                <option value="all">Thời gian làm việc...</option>
                                                <option value="under1">Dưới 1 năm</option>
                                                <option value="1to3">Từ 1 - 3 năm</option>
                                                <option value="3to5">Từ 3 - 5 năm</option>
                                                <option value="over5">Trên 5 năm</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-1 col-sm-6 col-12 ms-auto">
                                            <div class="form-group">
                                                <button type="submit" name="search-action" value="search-filters" class="btn btn-filters ms-auto">
                                                    <img src="assets/img/icons/search-whites.svg" alt="img">
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Nhân viên</th>
                                        <th>Số điện thoại</th>
                                        <th>Email</th>
                                        <th>Lương (VND)</th>
                                        <th>Ngày làm việc</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody id="employee-table">
                                <%@ page import="finalProject.data.ImageUtil" %>
                                <c:forEach var="staff" items="${listStaff}">
                                    <tr>
                                        <td>
                                            <div class="d-flex align-items-center">
                                                <c:if test="${staff.avatar != null}">
                                                  <img src="data:image/jpeg;base64,${ImageUtil.DisplayImage(staff.avatar)}" alt="Avatar" class="rounded-circle me-2" style="width: 50px; height: 50px;">
                                                </c:if>
                                                <c:if test="${staff.avatar == null}">
                                                    <img src="styles/blankavatar.jpg" alt="Avatar" class="rounded-circle me-2" style="width: 50px; height: 50px;">
                                                </c:if>
                                                <span>${staff.name}</span>
                                            </div>
                                        </td>
                                        <td>${staff.phone}</td>
                                        <td>${staff.email}</td>
                                        <td><fmt:formatNumber value="${staff.salary}" pattern="0.##" /></td>
                                        <td><fmt:formatDate value="${staff.workDate}" pattern="yyyy-MM-dd" /></td>
                                        <td>
                                            <form action="editStaff" method="post" class="d-inline me-3" title="Chi tiết">
                                                <input type="hidden" name="emp-id" value="${staff.personID}"/>
                                                <button type="submit" class="btn p-0 border-0 bg-transparent">
                                                    <img src="assets/img/icons/edit.svg" alt="Edit" style="width: 24px; height: 24px;">
                                                </button>
                                            </form>
                                            <form action="deleteStaff" method="post" id="delete-form" class="d-inline me-3" title="Xóa">
                                                <input type="hidden" name="emp-id" value="${staff.personID}"/>
                                                <button type="submit" class="btn p-0 border-0 bg-transparent" id="delete-button" onclick="return confirmSubmission()">
                                                    <img src="assets/img/icons/delete.svg" alt="Delete" style="width: 24px; height: 24px;">
                                                </button>
                                            </form>

                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="container mt-5">
                            <div class="d-flex justify-content-center pagination form-group">
                                <button id="prev-page" class="btn btn-primary me-2" disabled>&lt;</button>
                                <span id="page-info" class="align-self-center">Page 1 of X </span>
                                <button id="next-page" class="btn btn-primary ms-2">&gt;</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
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
    <script src="scripts/pagination.js"></script>
    <script src="scripts/confirmDelete.js"></script>
    <script>
        function confirmSubmission() {
            const userConfirmed = confirm("Xác nhận xóa nhân viên này?");

            return userConfirmed;
        }
    </script>
</body>
</html>