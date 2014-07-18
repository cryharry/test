<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="ch09.logon.LogonDBBean" %>
<%@ page import="java.sql.Timestamp" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="member" class="ch09.logon.LogonDataBean">
    <jsp:setProperty name="member" property="*" />
</jsp:useBean>

<%
    member.setReg_date(new Timestamp(System.currentTimeMillis()));
    LogonDBBean manager = LogonDBBean.getInstance();
    manager.insertMember(member);
%>
<jsp:getProperty name="member" property="name" />님 회원 가입을 축하드립니다.
