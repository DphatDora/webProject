<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="sidebar" id="sidebar">
    <div class="sidebar-inner slimscroll">
        <div id="sidebar-menu" class="sidebar-menu">
            <ul>
                <li id ="list-staff">
                    <a href="${pageContext.request.contextPath}/listStaff"><img src="assets/img/icons/users1.svg" alt="img"><span> Quản lý nhân viên</span> </a>
                </li>
            </ul>
            <ul>
                <li id="set-shift">
                    <a href="${pageContext.request.contextPath}/setShiftStaff"><img src="assets/img/icons/transcation.svg" alt="img"><span>Phân ca làm việc</span> </a>
                </li>
            </ul>
        </div>
    </div>
</div>