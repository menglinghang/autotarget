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
 * Created by mlh on 16-10-2.
 */


//管理员基本信息
@WebServlet(name = "AdminProfile")
public class AdminProfile extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SqlDao sqlDao = new SqlDao();
        HttpSession session = request.getSession(false);
        String userid = (String) session.getAttribute("userid");

        //System.out.println(userid);

        String sql = "SELECT * FROM admin_table WHERE userid = '"+userid+"'";

        //System.out.println("succcess!!!!!!");

        ResultSet rs;
        rs = sqlDao.exectuteQuery(sql);

        Map map = new HashMap();
        try {
            while (rs.next()){
                map.put("id",rs.getString("id"));
                map.put("name",rs.getString("name"));
                map.put("userid",rs.getString("userid"));
                map.put("department",rs.getString("department"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        List jsonlist = new ArrayList();
        jsonlist.add(map);

        JSONObject jsonObject =new JSONObject();
        try {
            jsonObject.put("aaData",jsonlist);
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
