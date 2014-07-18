<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="ch12.board.BoardDBBean" %>
<%@ page import="java.sql.Timestamp" %>

<%
    request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="article" scope="page" class="ch12.board.BoardDataBean">
    <jsp:setProperty name="article" property="*" />
</jsp:useBean>

<%
    article.setReg_date(new Timestamp(System.currentTimeMillis()));
    article.setIp(request.getRemoteAddr());

    BoardDBBean dbPro = BoardDBBean.getInstance();
    dbPro.insertArticle(article);

    response.sendRedirect("list.jsp");
%>