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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by mlh on 16-10-6.
 */

//删除某一个user
@WebServlet(name = "DeleteOneUser")
public class DeleteOneUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        SqlDao sqlDao = new SqlDao();

        String sql = "DELETE FROM user_table WHERE name='"+name+"'";
        int result;
        result=sqlDao.exectuteDelete(sql);
System.out.println("result结果是："+result);
        Map map = new HashMap();
        map.put("result",result);

        List jsonList = new ArrayList();
        jsonList.add(map);

        JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("aaData",jsonList);
            jsonObject.put("msg",1);
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
