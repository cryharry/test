<%@ page contentType="text/html;charset=euc-kr" %>
<% request.setCharacterEncoding("euc-kr"); %>

<jsp:useBean id="simpleBean" class="ch08.simpleBean.SimpleBean" />
<jsp:setProperty name="simpleBean" property="msg" />

<HTML>
	<BODY>
		<H1>������ �ڹٺ� ���α׷���</H1>
		<BR>
		�޼��� : <jsp:getProperty name="simpleBean" property="msg" />
	</BODY>
</HTML>