<%@ page contentType="text/html;charset=euc-kr" %>
<H2>includeTag2.jsp �������Դϴ�.</H2>
<%
	request.setCharacterEncoding("euc-kr");
	String siteName1 = request.getParameter("siteName1");
%>
<HR>
<jsp:include page="includeTagTop2.jsp">
	<jsp:param name="siteName" value="<%=siteName1%>" />
</jsp:include>

includeTag2.jsp �������� ������ �����Դϴ�.<P>