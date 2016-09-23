package com.target.bean;

import org.omg.CORBA.portable.ValueOutputStream;

/**
 * Created by jiejiao on 2016/8/7.
 */
public class User {
    public String name;
    public String userid;
    public String number;
    public String department;
    public String office;
    public String date;

    public User(String name,String userid,String number,String department,String office,String date){
        this.name = name;
        this.userid = userid;
        this.number = number;
        this.department = department;
        this.office = office;
        this.date = date;
    }

    public String getName(){
        return name;
    }

    public String getUserid(){
        return userid;
    }

    public String getNumber(){
        return number;
    }

    public String getDepartment(){
        return department;
    }

    public String getOffice(){
        return office;
    }

    public String getDate(){
        return date;
    }

    public void setName(String name){
        this.name = name;
    }

    public void setUserid(String userid){
        this.userid = userid;
    }

    public void setNumber(String number){
        this.number = number;
    }

    public void setDepartment(String department){
        this.department = department;
    }

    public void setOffice(String office){
        this.office = office;
    }

    public void setDate(String date){
        this.date = date;
    }
}
