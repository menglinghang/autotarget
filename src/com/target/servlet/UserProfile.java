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
 * Created by jiejiao on 2016/9/5.
 */
@WebServlet(name = "UserProfile")
public class UserProfile extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SqlDao sqlDao = new SqlDao();
        HttpSession session = request.getSession(false);
        String userid = (String) session.getAttribute("userid");

        String sql = "SELECT * FROM user_table WHERE userid = '"+userid+"'";
        ResultSet rs = sqlDao.exectuteQuery(sql);

        Map map = new HashMap();
        try {
            while (rs.next()){
                map.put("userid",rs.getString("userid"));
                map.put("number",rs.getString("name"));
                map.put("name",rs.getString("name"));
                map.put("department",rs.getString("department"));
                map.put("office",rs.getString("office"));
                map.put("date",rs.getString("date"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        List jsonlist = new ArrayList();
        jsonlist.add(map);

        JSONObject json = new JSONObject();
        try {
            json.put("aaData",jsonlist);
        } catch (JSONException e) {
            e.printStackTrace();
        }

        response.getWriter().print(json);
        response.getWriter().flush();
        response.getWriter().close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
