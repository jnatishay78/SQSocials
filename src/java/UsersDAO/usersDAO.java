/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UsersDAO;

import Connection.connectionPool;
import UsersBean.usersBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS
 */
public class usersDAO {
    public ArrayList<String> result=new ArrayList<String>();
    static Connection conn=null;
    public boolean register(usersBean ub){
        conn=connectionPool.connectDB();
        int x=0;
        String sql="insert into users(name,username,user_type,password) values('"+ub.getName()+"','"+ub.getUserName()+"','"+ub.getUserType()+"','"+ub.getPassword()+"')";
        
        try {
            Statement stmt=conn.createStatement();
            x=stmt.executeUpdate(sql);
            
        } catch (SQLException ex) {
            Logger.getLogger(usersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(x!=0){
            return true;
        }
        else{
            return false;
        }
    }
    
    
    public boolean training(String tt, String at, String d, String td){
        conn=connectionPool.connectDB();
        int x=0;
        String sql="insert into training(title,assign,description,date) values('"+tt+"','"+at+"','"+td+"','"+d+"')";
        
        try {
            Statement stmt=conn.createStatement();
            x=stmt.executeUpdate(sql);
            
        } catch (SQLException ex) {
            Logger.getLogger(usersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(x!=0){
            return true;
        }
        else{
            return false;
        }
    }
    
    public void assigned(String ut){
        
        conn=connectionPool.connectDB();
        String sql="select username from users where user_type='"+ut+"'";
        try {
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery(sql);
            while(rs.next()){
                result.add(rs.getString("username"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(usersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    } 
    
    public int loginCheck(String un,String ps, String ut){
        int x=0;
        conn=connectionPool.connectDB();
        String sql="select id from users where username='"+un+"' and password='"+ps+"'and user_type='"+ut+"'";
        try {
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery(sql);
            if(rs.next()){
                x=rs.getInt("id");
            }
        } catch (SQLException ex) {
            Logger.getLogger(usersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return x;
    }
    
    public static void main(String[] args) {
        //usersBean  ub=new usersBean("Ankit","Super Admin", "ankit123", "tiwari123");
        usersDAO ud=new usersDAO();
        //System.out.println(ud.register(ub));
        
//        int id=ud.loginCheck("aryan.jain2019@vitbhopal.ac.in", "asdfghjkl","Super Admin");
//        if(id==0){
//            System.out.println("Login Fail");  
//        }
//        else{
//            System.out.println("Login success  : "+id);
//        }

//            ud.assigned("Super Admin");
//            System.out.println(ud.result);

          System.out.println(ud.training("New", "atishay", "2019-20-02", "hello"));
    }
}
