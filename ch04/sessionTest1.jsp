<%@ page contentType="text/html;charset=euc-kr" %>
<% request.setCharacterEncoding("euc-kr"); %>
<% //Form으로부터 넘어온 파라미터 처리
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");

	session.setAttribute("id", id); //session속성 id의 값에 id변수값을 할당
	session.setMaxInactiveInterval(60*2); //2분
%>

<H2>Session내장객체 예제</H2>
<FORM METHOD="post" ACTION="sessionTest2.jsp">
	☆ 가장 좋아하는 스포츠를 선택하세요. ☆<BR>
	<INPUT TYPE="radio" NAME="sports" VALUE="태권도">태권도
	<INPUT TYPE="radio" NAME="sports" VALUE="유도">유도
	<INPUT TYPE="radio" NAME="sports" VALUE="프로레슬링">프로레슬링
	<INPUT TYPE="radio" NAME="sports" VALUE="이종격투기">이종격투기<P>

	☆ 가장 좋아하는 게임을 선택하세요. ☆<BR>
	<SELECT NAME="game">
		<OPTION VALUE="스타크">스타크(아직도 좋다)</OPTION>
		<OPTION VALUE="WOW">WOW</OPTION>
		<OPTION VALUE="리니지">리니지</OPTION>
	</SELECT>
	<INPUT TYPE="submit" VALUE="전송">
</FORM>