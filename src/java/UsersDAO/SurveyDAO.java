/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UsersDAO;

import Connection.connectionPool;
import UsersBean.SurveyBean;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS
 */
public class SurveyDAO {
    static Connection conn=null;
    public boolean entry(SurveyBean sb){
        conn=connectionPool.connectDB();
        int x=0;
        String sql="insert into feedback(name,email,gender,job,nextpos,future,gym,comments,age,duration,mean,sati) values('"+sb.getName()+"','"+sb.getEmail()+"','"+sb.getGender()+"','"+sb.getJob()+"','"+sb.getNextpos()+"','"+sb.getFuture()+"','"+sb.getGym()+"','"+sb.getComments()+"','"+sb.getAge()+"','"+sb.getDuration()+"','"+sb.getMean()+"','"+sb.getSati()+"')";
        
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
    
    public static void main(String[] args) {
        SurveyBean sb=new SurveyBean("aj","@g","M","jr","se","bright","neet","nice",22,4,2,3);
        SurveyDAO sd=new SurveyDAO();
        System.out.println(sd.entry(sb));
    }
}
