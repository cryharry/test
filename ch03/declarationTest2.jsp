<%@ page contentType="text/html;charset=euc-kr" %>

<H2>���� ����2 - ��������� �޼ҵ�</H2>
<%!
	double var1;
	int var2 = 1;

	public double sum() {
		return var1 + var2;
	}


	String str = "������..";
	int var3 = 10;
%>

����var1�� ����var2�� ��: <%= sum() %><P>
����str�� ����: <%= str %><P>
����var3�� ��: <%= var3 %>