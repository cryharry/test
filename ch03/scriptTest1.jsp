<%@ page contentType="text/html;charset=euc-kr" %>
<HTML>
 <HEAD><TITLE>JSP��ũ��Ʈ ����</TITLE></HEAD>
  <BODY>
   <H2>JSP��ũ��Ʈ ����</H2>
    <%!
		String declaration = "���� �����Դϴ�";
	%>
	<%!
		public String declarationMethod() {
			return declaration;
		}
	%>
	<%
		String scriptlet = "��ũ��Ʈ�� ����";
		String comment = "�ּ��� ����";
		out.println("���尴ü�� �̿��� ���� ���: " +declaration+ "<P>");
	%>

	���� ����ϱ�(����): <%= declaration %><P>
	���� ����ϱ�(�޼ҵ�): <%= declarationMethod() %><P>
	��ũ��Ʈ�� ����ϱ�: <%= scriptlet %><P>
	<!--JSP���� ����ϴ� HTML �ּ��κ�-->
	<!--HTML�ּ�: <%= comment %> --><P>
	<%--JSP�ּ�: <%= comment %> --%>
	<% /*�ڹ��ּ�
	(���� �� �ּ�)
	*/
	%>
	<%// �ڹ� �ּ�(���� �ּ�)%>
   </BODY>
 </HTML>