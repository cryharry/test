<%@ page contentType="text/html;charset=euc-kr" %>
<H2>�������ϴ� ������: forwardTagFrom1.jsp<H2>
<% request.setCharacterEncoding("euc-kr"); %>

<HTML>
 <BODY>
  forwardTagFrom1.jsp�� �����Դϴ�.<BR>
  ȭ�鿡 ���� ǥ�� �� �˴ϴ�.
  <jsp:forward page="forwardTagTo1.jsp" />
 </BODY>
</HTML>