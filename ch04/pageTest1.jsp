<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page info= "Page 내장 객체 예제" %>
<%
	String info = this.getServletInfo();
%>
<H2>Page내장객체 예제</H2>
page디렉티브의 info속성값 " <%=info%> "을 얻어낸다.