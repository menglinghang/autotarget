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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by jiejiao on 2016/8/10.
 */
@WebServlet(name = "UserList")
public class UserList extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SqlDao sqlDao = new SqlDao();
        List users = new ArrayList();
        String sql = "SELECT * FROM user_table";
        ResultSet rs = null;
        rs = sqlDao.exectuteQuery(sql);
        try {
            while (rs.next()){
                Map map = new HashMap();
                map.put("id",rs.getString("id"));
                map.put("name",rs.getString("name"));
                map.put("userid",rs.getString("userid"));
                map.put("number",rs.getString("number"));
                map.put("department",rs.getString("department"));
                map.put("office",rs.getString("office"));
                map.put("date",rs.getString("date"));
                users.add(map);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        JSONObject json = new JSONObject();
        try {
            json.put("aaData",users);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        //String json = new Gson().toJson(info);
        try {
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // System.out.println(json);
        // PrintWriter pw = response.getWriter();
        //  pw.print(json.toString());
        response.setContentType("text/html; charset=UTF-8");
        response.getWriter().print(json);
        response.getWriter().flush();
        response.getWriter().close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
