<%@ page contentType="text/html;charset=euc-kr" %>
<HTML>
 <BODY>
  <H2>Request���尴ü ����1</H2>
  <FORM METHOD="post" ACTION="requestTest1.jsp">
  �̸� : <INPUT TYPE="text" NAME="name"><BR>
  ���� : <INPUT TYPE="text" NAME="age"><BR>
  ���� : ���� <INPUT TYPE="radio" NAME="gender" VALUE="m" CHECKED>
		 ���� <INPUT TYPE="radio" NAME="gender" VALUE="f"><BR>
  ��� : <SELECT NAME="hobby">
			<OPTION SELECTED VALUE="���ڱ�">���ڱ�</OPTION>
			<OPTION VALUE="TV��û">TV��û</OPTION>
			<OPTION VALUE="��ȭ����">��ȭ����</OPTION>
			<OPTION VALUE="����">����</OPTION>
			<OPTION VALUE="���">���</OPTION>
		</SELECT><BR>
   <INPUT TYPE="submit" VALUE="������">
   </FORM>
  </BODY>
 </HTML>