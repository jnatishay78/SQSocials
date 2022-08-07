/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UsersBean;

/**
 *
 * @author ASUS
 */
public class usersBean {
    private String name;
    private String userType;
    private String userName;
    private String password;

    public usersBean(String name, String userType, String userName, String password) {
        this.name = name;
        this.userType = userType;
        this.userName = userName;
        this.password = password;
    }

    public usersBean() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}
