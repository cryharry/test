<%@ page contentType="text/html;charset=euc-kr" %>
<%
	String info = application.getServerInfo();
	int major = application.getMajorVersion();
	int minor = application.getMinorVersion();
	String path = application.getRealPath("/");
	application.log("�α� ���");
%>

<H2>Application���尴ü ����</H2>
�� �����̳��� �̸��� ���� : <%=info%><P>
������ ���� : <%=major%>.<%=minor%><P>
�� ���ø����̼� ������ ���� �ý��� ��� : <%=path%>