<%@ page contentType="text/html;charset=euc-kr" %>
<% request.setCharacterEncoding("euc-kr"); %>
<% //Form���κ��� �Ѿ�� �Ķ���� ó��
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");

	session.setAttribute("id", id); //session�Ӽ� id�� ���� id�������� �Ҵ�
	session.setMaxInactiveInterval(60*2); //2��
%>

<H2>Session���尴ü ����</H2>
<FORM METHOD="post" ACTION="sessionTest2.jsp">
	�� ���� �����ϴ� �������� �����ϼ���. ��<BR>
	<INPUT TYPE="radio" NAME="sports" VALUE="�±ǵ�">�±ǵ�
	<INPUT TYPE="radio" NAME="sports" VALUE="����">����
	<INPUT TYPE="radio" NAME="sports" VALUE="���η�����">���η�����
	<INPUT TYPE="radio" NAME="sports" VALUE="����������">����������<P>

	�� ���� �����ϴ� ������ �����ϼ���. ��<BR>
	<SELECT NAME="game">
		<OPTION VALUE="��Ÿũ">��Ÿũ(������ ����)</OPTION>
		<OPTION VALUE="WOW">WOW</OPTION>
		<OPTION VALUE="������">������</OPTION>
	</SELECT>
	<INPUT TYPE="submit" VALUE="����">
</FORM>