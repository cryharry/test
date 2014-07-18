<%@ page contentType="text/html;charset=euc-kr" %>

<%
	String protocol = request.getProtocol();
	String server = request.getServerName();
	int port = request.getServerPort();
	String clientIp = request.getRemoteAddr();
	String clientHost = request.getRemoteHost();
	String methodType = request.getMethod();
	String url = new String(request.getRequestURL());
	String uri = request.getRequestURI();
	String contextPath = request.getContextPath();
	String browser = request.getHeader("User-Agent");
	String mediaType = request.getHeader("Accept");
%>

<H2>Request���� ��ü ����2</H2>
�������ݸ� : <%=protocol%><P>
������ ������ : <%=server%><P>
������ ������ ��Ʈ ��ȣ : <%=port%><P>
Ŭ���̾�Ʈ�� IP : <%=clientIp%><P>
Ŭ���̾�Ʈ�� ȣ��Ʈ�� : <%=clientHost%><P>
���� �������� method��� : <%=methodType%><P>
��û�� �������� ���(URL) : <%=url%><P>
��û�� �������� ���(URI) : <%=uri%><P>
�����ø����̼��� ���ؽ�Ʈ ��� : <%=contextPath%><P>
����� �� ������ : <%=browser%><P>
�� �������� �����ϴ� ��ü(media)�� Ÿ�� : <%=mediaType%>