<%@ page contentType="text/html;charset=euc-kr" %>

<H2>If-else�� ���� - �����ϴ� �� ����</H2>

<%
	String name = request.getParameter("name"); //�����κ��� �Ѿ�� �̸� �Ķ����
	String color = request.getParameter("color"); //�����κ��� �Ѿ�� ���� �Ķ����
	String selectColor = "";

	if(color.equals("blue")) {
		selectColor = "�Ķ���";
	} else if(color.equals("green")) {
		selectColor = "�ʷϻ�";
	} else if(color.equals("red")) {
		selectColor = "������";
	} else {
		selectColor = "��Ÿ��";
	}
%>

<%=name%>���� ������ ���� <%=selectColor%>�Դϴ�.<P>
������ ��:<BR>
<img src=" <%=color+ ".jpg"%> BORDER=0"" ">