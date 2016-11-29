package servlets;

import beans.GetQstnBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by sunning on 2016/11/28.
 */
@WebServlet(name = "GetQstnServlet")
public class GetQstnServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String content = request.getParameter("content");
        String picked[] = request.getParameterValues("option");
        GetQstnBean getQstnBean = new GetQstnBean();
        getQstnBean.getQstn(content, picked);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
