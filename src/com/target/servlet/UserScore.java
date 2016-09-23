package com.target.servlet;

import com.target.DAO.SqlDao;
import org.json.JSONException;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
@WebServlet(name = "UserScore")
public class UserScore extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        String userid;
        userid = (String) session.getAttribute("userid");
        SqlDao sqlDao = new SqlDao();
        List users = new ArrayList();

        String sql = "SELECT * FROM statistic_table WHERE userid = '" + userid +"'";
        ResultSet rs;
        rs = sqlDao.exectuteQuery(sql);
        try {
            while (rs.next()) {
                Map map = new HashMap();
                map.put("id", rs.getString("id"));
                map.put("grade",rs.getString("grade"));
                map.put("type",rs.getString("type"));
                map.put("place",rs.getString("place"));
                map.put("distance",rs.getString("distance"));
                map.put("date",rs.getString("date"));
                users.add(map);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        JSONObject json = new JSONObject();
        try {
            json.put("aaData",users);
        } catch (JSONException e){
            e.printStackTrace();
        }

        try{
            rs.close();
        } catch (SQLException e){
            e.printStackTrace();
        }

        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().print(json);
        response.getWriter().flush();
        response.getWriter().close();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
