package servlets;

import beans.LoginBean;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by sunning on 2016/11/28.
 */
@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 获取用户输入的用户ID和口令
        String username = request.getParameter("username");
        String userpass = request.getParameter("userpass");
        // 创建模型对象
        LoginBean loginBean = new LoginBean();
        // 调用业务方法进行验证
        boolean b = loginBean.validate(username, userpass);
        // 要转向的文件
        String forward;
        // 如果登陆成功，把用户名写入session中，并且转向success.jsp，
        // 否则转向failure.jsp
        if (b) {
            // 获取session
            HttpSession session = (HttpSession) request.getSession(true);
            // 把用户名保存到session中
            session.setAttribute("username", username);
            // 目标转向文件是success.jsp
            forward = "setexam.jsp";
        } else {
            // 目标转向文件是failure.jsp
            forward = "failure.jsp";
        }
        // 获取Dispatcher对象
        RequestDispatcher dispatcher = request.getRequestDispatcher(forward);
        // 完成跳转
        dispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
