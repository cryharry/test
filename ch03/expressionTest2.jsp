<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.util.Date" %>

<H2>ǥ���� ����2 - �⺻������Ÿ�� �� ���۷���Ÿ�����</H2>

<%
	Date date =  new Date();
	int var1 = 10;
	int var2 = var1 > 8 ? 20 : 10; //���� �����ڸ� ����ؼ� var2������ ���� ����
%>

���� ��¥�� �ð�: <%=date.toString()%><P>
���� var1�� ��: <%=var1%><P>
���� var2�� ��: <%=var2%><P>
���� var1 + ���� var2�� ��: <%=var1+var2%><P>

<%--WrapperŬ����: �⺻������Ÿ���� ��ü�� ��ȯ�ؾ��� ��� ���--%>
���� var1�� ��(WrapperŬ���� ���): <%=(new Integer(var1)).toString()%><P>