package com.target.DAO;

import org.omg.Messaging.SYNC_WITH_TRANSPORT;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.InputMismatchException;
import java.util.Properties;
import java.util.concurrent.locks.ReadWriteLock;

/**
 * Created by jiejiao on 2016/8/4.
 */
public class SqlDao {
    public Connection conn = null;
    public ResultSet rs = null;
    Statement st = null;
    private String driver = null;
    private String url = null;
    private String username = null;
    private String password = null;


    public SqlDao(){
        Properties properties = new Properties();
        InputStream inputStream = this.getClass().getResourceAsStream("database.properties");
        try {
            properties.load(inputStream);
            driver = properties.getProperty("driver");
            url = properties.getProperty("url");
            username = properties.getProperty("username");
            password = properties.getProperty("password");
            Class.forName(driver);
            conn = DriverManager.getConnection(url,username,password);
            st = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
        } catch (SQLException e) {
            e.printStackTrace();
        }catch (IOException e) {
            e.printStackTrace();
        }catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public int executeCreate(String sql){
        int num = 0;
        try{
            num = st.executeUpdate(sql);
        } catch (SQLException e){
            System.out.println("create table error:"+e.getMessage());
        }
        return num;
    }


    public int exectuteInsert(String sql){
        int num = 0;
        try{
            num = st.executeUpdate(sql);
        } catch (SQLException e){
            System.out.println("insert error:"+e.getMessage());
        }
        return num;
    }

    public int exectuteUpdate(String sql){
        int num = 0;
        try{
            num = st.executeUpdate(sql);
        } catch (SQLException e){
            System.out.println("update error:"+e.getMessage());
        }
        return num;
    }

    public int exectuteDelete(String sql){
        int num = 0;
        try{
            num = st.executeUpdate(sql);
        } catch (SQLException e){
            System.out.println("delete error:"+e.getMessage());
        }
        return num;
    }

    public ResultSet exectuteQuery(String sql){
        try{
            //System.out.println("sqlshi:"+sql);
            rs = st.executeQuery(sql);
        } catch (SQLException e){
            System.out.println("query error:"+e.getMessage());
        }
        return rs;
    }

    public void CloseDataBase() {
        try {
            conn.close();
            st.close();
        } catch (Exception ex) {
            System.err.println("执行关闭Connection对象有错误:" + ex.getMessage());
            System.out.print("执行关闭Connection对象有错误:" + ex.getMessage());
        }
    }


}
