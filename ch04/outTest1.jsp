<%@ page contentType="text/html;charset=euc-kr" %>
<%
	int bufferSize = out.getBufferSize();
	int remainSize = out.getRemaining();
	int usedSize = bufferSize - remainSize;
%>
<H2>Out���尴ü ����</H2>
<B>���� ������������ ������ �����Ȳ</B><P>
��� ������ ��ü ũ�� : <%=bufferSize%>byte<P>
���� ����� ������ ũ�� : <%=usedSize%>byte<P>
���� ������ ũ�� : <%out.println(remainSize);%>byte<P>