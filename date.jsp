<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<HTML>
	<BODY>
		<%
			Date nowDate = new Date();
			//��¥������ yyyy��MM��dd�� ���·� ����ϱ� ���� SimpleDateFormat ��ü ����
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy��MM��dd��");
			//������ ���ڿ� �ð��� yyyy��MM��dd�� ������ format() �޼ҵ带 ����ؼ� ����
			String formatDate = dateFormat.format(nowDate);
		%>
		�Ϲ����� JSP �������� ���·� �Ʒ��� ���� ���� ��¥�� �����մϴ�.<br>
		���� ��¥�� <%= formatDate %> �Դϴ�.
	</BODY>
</HTML>