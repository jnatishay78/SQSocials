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
public class SurveyBean {
    private String name;
    private String email;
    private String gender;
    private String job;
    private String nextpos;
    private String future;
    private String gym;
    private String comments;
    private int age;
    private int duration;
    private int mean;
    private int sati;

    public SurveyBean(String name, String email, String gender, String job, String nextpos, String future, String gym, String comments, int age, int duration, int mean, int sati) {
        this.name = name;
        this.email = email;
        this.gender = gender;
        this.job = job;
        this.nextpos = nextpos;
        this.future = future;
        this.gym = gym;
        this.comments = comments;
        this.age = age;
        this.duration = duration;
        this.mean = mean;
        this.sati = sati;
    }

    public SurveyBean() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getNextpos() {
        return nextpos;
    }

    public void setNextpos(String nextpos) {
        this.nextpos = nextpos;
    }

    public String getFuture() {
        return future;
    }

    public void setFuture(String future) {
        this.future = future;
    }

    public String getGym() {
        return gym;
    }

    public void setGym(String gym) {
        this.gym = gym;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public int getMean() {
        return mean;
    }

    public void setMean(int mean) {
        this.mean = mean;
    }

    public int getSati() {
        return sati;
    }

    public void setSati(int sati) {
        this.sati = sati;
    }
    
    
}
