package com.target.servlet;

import com.target.DAO.SqlDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.concurrent.locks.ReentrantLock;

/**
 * Created by jiejiao on 2016/8/5.
 */
@WebServlet(name = "LoginCheck")
public class LoginCheck extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        String userid = request.getParameter("userid");
        String password = request.getParameter("password");
        int is_admin = Integer.parseInt(request.getParameter("is_admin"));
        HttpSession session = request.getSession(true);  //若session不存在则新建session
        //PrintWriter out = response.getWriter();
        //out.println(userid+password+is_admin);     //测试用

        SqlDao sqlDao = new SqlDao();
        if (is_admin == 0) {
            String sql = "SELECT * FROM user_table WHERE userid = '" + userid + "'AND password = '" + password + "'";
            //System.out.println(sql);
            ResultSet rs = sqlDao.exectuteQuery(sql);
            try {
                if (rs.next()) {
                    session.setAttribute("userid",userid);
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/user_index.jsp");
                    rd.forward(request, response);
                } else {
                    request.setAttribute("error", "<font color=\"purple\">用户名或密码错误！</font>");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
                    rd.forward(request, response);
                }
            } catch (Exception e) {
                System.out.println("用户名或密码错误：" + e.getMessage());
            }
        } else {
            String sql = "SELECT * FROM admin_table WHERE userid = '" + userid + "'AND password = '" + password + "'";
            //System.out.println(sql);
            ResultSet rs = sqlDao.exectuteQuery(sql);
            try {
                if (rs.next()) {
                    session.setAttribute("userid",userid);
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/admin_index.jsp");
                    rd.forward(request, response);
                } else {
                    request.setAttribute("error", "<font color=\"purple\">管理用户名或密码错误！</font>");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
                    rd.forward(request, response);
                }
            } catch (Exception e) {
                System.out.println("管理用户名或密码错误：" + e.getMessage());
            }
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
