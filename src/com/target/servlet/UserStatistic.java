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
 * Created by jiejiao on 2016/8/19.
 */


//显示user名次，平均分等
@WebServlet(name = "UserStatistic")
public class UserStatistic extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SqlDao sqlDao = new SqlDao();
        int times = 0;
        int max = 0;
        int avg = 0;
        int total = 0;
        HttpSession session = request.getSession(false);
        String userid = (String) session.getAttribute("userid");

        String sql = "SELECT * FROM statistic_table WHERE userid = '"+userid+"'";
        ResultSet rs = sqlDao.exectuteQuery(sql);
        try {
            while (rs.next()){
                times+=1;
                total = total+Integer.parseInt(rs.getString("grade"));
                avg = total/times;
                 if (max<Integer.parseInt(rs.getString("grade")))
                     max = Integer.parseInt(rs.getString("grade"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        Map map = new HashMap();
        map.put("times",times);
        map.put("avg",avg);
        map.put("max",max);

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
