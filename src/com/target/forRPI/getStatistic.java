package com.target.forRPI;

import org.json.JSONException;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * Created by mlh on 16-9-19.
 */
@WebServlet(name = "getStatistic")
public class getStatistic extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(request.getInputStream()));
        String get;
        while ((get=bufferedReader.readLine())!=null){
            System.out.println("接受到请求........"+get);
            String[] split = get.toString().split(",");
            int num = 0;
            for (String i : split){
                System.out.println("第"+(num++)+"次打靶为"+i+"环");
            }
        }

        JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("msg","1");
            jsonObject.put("succeed","true");
        } catch (JSONException e) {
            e.printStackTrace();
        }

        response.setContentType("text/html; charset=UTF-8");
        response.getWriter().print("响应请求..."+jsonObject);
        response.getWriter().flush();
        response.getWriter().close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
