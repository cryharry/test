<%@ page contentType="text/html;charset=euc-kr" %>
<% request.setCharacterEncoding("euc-kr"); %>
<H2>Request���尴ü ����1</H2>
<% //form���κ��� �Ѿ�� �Ķ���Ͱ��� ó��
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String hobby = request.getParameter("hobby");

	if(gender.equals("m")) {
		gender = "����";
	} else {
		gender = "����";
	}
%>
<%=name%> ���� ������ ������ �����ϴ�.<P>
���� : <%=age%><P>
���� : <%=gender%><P>
��� : <%=hobby%>