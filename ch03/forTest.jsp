<%@ page contentType="text/html;charset=euc-kr" %>
<H2>For ���� - 1~10���� �� ���ϱ�</H2>

<%
	int sum = 0;
	String str = "";

	for(int i=0; i<=10; i++) {
		if(i<10) {//i�� 10���� ������
			str += i+ "+";
		} else {//i�� 10�̸�
			str += i+ "=";
		}
		sum += i; //i�� 1~10���� sum�� i�� �ݺ� ���ϱ��Ѵ�.
	}//��������� for�� ����
%>
<%=str%><%=sum%>