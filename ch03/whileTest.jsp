<%@ page contentType="text/html;charset=euc-kr" %>
<% request.setCharacterEncoding("euc-kr"); %>
<H2>While�� ���� - ������ ���� ������ Ƚ���� ���ϱ�</H2>
<%
	int number = Integer.parseInt(request.getParameter("number"));
	int num = Integer.parseInt(request.getParameter("num"));
	long multiply = 1;
	int count = 0;

	while(count<num) { //count�� num���� Ŀ�������� �ݺ��Ѵ�
		multiply *= number; //number���� multiply�� ���ؼ� �����Ѵ�.
		count++; //count�� 1�� ������Ų��.
	}
%>
���: <%=multiply%>