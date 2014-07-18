<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>세션 사용 예제</title>
</head>
<body>
    <%
        Enumeration attr = session.getAttributeNames();
        while(attr.hasMoreElements()) {
            String attrName = (String)attr.nextElement();
            String attrValue = (String)session.getAttribute(attrName);
            out.println("세션의 속성명은 " +attrName+ "이고 ");
            out.println("세션의 속성값은 " +attrValue+ "입니다.<br>");
        }
    %>
</body>
</html>
