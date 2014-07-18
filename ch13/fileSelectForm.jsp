<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/view/color.jsp" %>
<%!
    public String getParam(HttpServletRequest request, String paramName) {
        if(request.getParameter(paramName) != null) {
            return request.getParameter(paramName);
        } else {
            return "";
        }
    }
%>
<%
    request.setCharacterEncoding("utf-8");
    int filecounter = 0; //사용자가 입력한 파일 개수가 저장
    if(request.getParameter("addcnt") != null) {
        filecounter = Integer.parseInt(request.getParameter("addcnt"));
    }
%>
<html>
<head>
    <title>여러개의 파일을 업로드하는 예제</title>
    <link href="/view/style.css" rel="stylesheet" type="text/css">

    <script language="JavaScript">
        function inputValue(form1, param2, form2, idx) {
            var paramValue = form1.elements[idx].value; //frmName1의 user에 입력된 값을 paramValue 변수에 넣는다.

            form2.elements[idx].value = paramValue; //paramValue에 저장된 값을 frmName2의 hidden 속성으로 지정된 txtUser에 넣는다.

            return;
        }

        function addFile(formName) { //addFile() 자바스크립트 함수는 폼 이름을 인자로 받는다.
            if(formName.addcnt.value == "") {
                alert("입력할 파일 갯수를 입력하고 확인 단추를 눌러주세요.");
                formName.addcnt.focus();
                return;
            }
            formName.submit();
        }

        function elementCheck(formName) { //파일 선택부분에 아무런 값이 입력되지 않았을 때 파일을 선택하라는 메세지를 메시지 팡에 표시,
            //파일 선택란에 파일이 선택이 되었을 때는 인자로 받은 폼을 전송하게 된다.
            paramIndex = 1;
            for(idx = 0; idx<formName.elements.length; idx++) {
                if(formName.elements[idx].type == "file") {
                    if (formName.elements[idx].value == "") {
                        var message = paramIndex + "번째 파일정보가 없습니다.\n업로드할 파일을 선택해주세요.";
                        alert(message);
                        formName.elements[idx].focus();
                        return;
                    }

                    paramIndex++;
                }
            }
            formName.action = "fileSelectPro.jsp";
            formName.submit();
        }
    </script>
</head>
<body bgcolor="<%=bodyback_c%>">
<div align="center">
    <h2>여러개의 파일을 업로드하는 예제</h2>
    <font color="#0000ff" size="2">파일 갯수를 입력한 후 [확인]단추를 눌러주세요.<br>
    입력이 완료되면 파일업로드를 위한 [업로드]단추를 눌러주세요.</font>
</div>
<br>
<form name="frmName1" method="post"><!--이폼의 역활은 단순히 사용자의 입력을 받기 위한 필드들만을 갖고 있을 뿐이다-->
    <table width="50%" border="1" align="center" cellpadding="1" cellspacing="1">
        <tr>
            <td width="15%" bgcolor="<%=value_c%>" align="center">작성자</td>
            <td>
                <input type="text" name="user" onkeyup="inputValue(this.form, user, frmName2, 0)" value="<%=getParam(request, "user")%>">
            </td>
        </tr>
        <tr>
            <td width="15%" bgcolor="<%=value_c%>" align="center">제목</td>
            <td>
                <input type="text" name="title" onkeyup="inputValue(this.form, title, frmName2, 1)" value="<%=getParam(request, "title")%>">
            </td>
        </tr>
        <tr>
            <td width="15%" bgcolor="<%=value_c%>" align="center">내용</td>
            <td width="50%" colspan="3">
                <textarea name="abstract" cols="40" onkeyup="inputValue(this.form, abstract, frmName2, 2)"><%=getParam(request, "abstract")%></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="4" bgcolor="<%=value_c%>" align="center">
                업로드할 파일 수 입력
                <input type="text" name="addcnt">
                <input type="button" value="확인" onclick="addFile(this.form)">
            </td>
        </tr>
    </table>
</form>

<form name="frmName2" method="post" enctype="multipart/form-data">
    <!-- 이 폼을 통해서 파일 업로드를 위한 파일정보를 입력받는다. -->
    <table width="50%" border="1" align="center" cellpadding="1" cellspacing="1">
        <tr>
            <td width="40%" bgcolor="<%=value_c%>" align="center">
                <input type="hidden" name="txtUser" value="<%=getParam(request, "user")%>">
                <input type="hidden" name="txtTitle" value="<%=getParam(request, "title")%>">
                <input type="hidden" name="txtAbstract" value="<%=getParam(request, "abstract")%>">
                <%
                    for (int i=0; i<filecounter; i++) {
                %>
                        <input type="File" size="50" name="selectFile<%=i%>"><br>
                <%
                    }
                %>

                <input type="button" value="업로드" onclick="elementCheck(this.form)">
            </td>
        </tr>
    </table>
</form>
</body>
</html>