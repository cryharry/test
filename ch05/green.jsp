<%@ page contentType="text/html;charset=euc-kr" %>
<%
	String name = request.getParameter("name");
	String selectedColor = request.getParameter("selectedColor");
%>
<H2>������ �Ǵ� ������ - <%=selectedColor+".jsp"%></H2>
<B><%=name%></B> ���� �����ϴ� ���� "<%=selectedColor%>"�̰�
����� ������ ��ȭ���� ��¡�ϴ� ���Դϴ�.<BR>
<img src="<%=selectedColor+".jsp"%>" border="0" width="70" height="30">