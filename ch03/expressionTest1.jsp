<%@ page contentType="text/html;charset=euc-kr" %>

<H2>ǥ���� ����1 - �迭�� ���� ���</H2>
<%!
	String str[] = {"JSP��","����","���","�ִ�"};
%>
<TABLE BORDER="1" WIDTH="250">
 <TR><TD>�迭�� ÷��</TD><TD>�迭�� ����</TD></TR>
 <%
	for(int i=0; i<str.length; i++) {
%>
		<TR><TD><%=i%></TD><TD><%=str[i]%></TD></TR>
	<%}%>
</TABLE>