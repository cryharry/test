<%@ page contentType="text/html;charset=euc-kr" %>
<% request.setCharacterEncoding("euc-kr"); %>
<H2>Session���尴ü ����</H2>
<%
	String sports = request.getParameter("sports");
	String game = request.getParameter("game");
	String id = (String)session.getAttribute("id"); //session�Ӽ� id�� ���� ����
	String sessionId = session.getId(); //�� �������� �Ҵ�� ����ID�� ����

	if(id != null) {
%>
<B><%=id%></B> �� �������ּż� �����մϴ�.<BR>
<%=id%> �� �����ϴ� �������� <%=sports%> �̰�, <BR>
�����ϴ� ������ <%=game%> �Դϴ�.<P>
���� ���������� ����ID = <%=sessionId%><P>

<%
	session.invalidate(); //������ ��ȿȭ
	} else {
		out.println("�α����� �Ͻñ� �ٶ��ϴ�.");
	}
%>