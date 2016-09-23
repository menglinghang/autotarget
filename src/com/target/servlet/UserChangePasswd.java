package com.target.servlet;

import com.target.DAO.SqlDao;
import org.json.JSONException;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by mlh on 16-9-19.
 */
@WebServlet(name = "UserChangePasswd")
public class UserChangePasswd extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        //System.out.println("access success...");

        String oldpassword = request.getParameter("oldpassword");
        String newpassword = request.getParameter("newpassword");
        String repeatpassword = request.getParameter("repeatpassword");

        String sql = "UPDATE user_table SET password='"+newpassword+"' WHERE password='"+oldpassword+"'";
        SqlDao sqlDao = new SqlDao();
        int num;
        String msg;  //返回给前端，1代表修改密码成功，0代表失败
        num = sqlDao.exectuteUpdate(sql);
        if (num==1){
            msg = "修改密码成功！";
        } else {
            msg = "抱歉，修改密码失败！";
        }

        JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("msg",msg);
            //jsonObject.put("oldpassword",oldpassword);
            //jsonObject.put("newpassword",newpassword);
            //cd jsonObject.put("repeatpassword",repeatpassword);
        } catch (JSONException e) {
            e.printStackTrace();
        }

        response.getWriter().print(jsonObject);
        response.getWriter().flush();
        response.getWriter().close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
