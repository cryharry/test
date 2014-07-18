import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class TodayMenu extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res)
	throws ServletException, IOException {
		res.setContentType("text/html;charset=euc-kr");
		PrintWriter out = res.getWriter();

		out.println("<HTML>");
		out.println("<HEAD><TITLE>SELECT & POST</TITLE></HEAD>");
		out.println("<BODY>");
		out.println("<CENTER><H3>���� ������</H3></CENTER>");

		String values[] = req.getParameterValues("lunch");
		for(int i=0; i<values.length; i++) {
			out.println("<br>");
			out.println(HangulConversion.toKor(values[i]));
		}

		out.println(" �̳� �Ծ�� �ڴ�.");
		out.println("</BODY>");
		out.println("</HTML>");
		out.close();
	}
}