package com.order.model;

import java.io.Serializable;

public class doctor implements Serializable {
    private int DoctorID;
    private String Username;
    private String Password;
    private String Gender;
    private String Title;
    private Enumrole Role;
    private String Department;


    public enum Enumrole{
        DOCTOR,
        ADMIN,
        NULL
    }

    // 构造方法
    
    public doctor(int doctorID, String username, String password, String gender, String title, Enumrole role, String department) {
        DoctorID = doctorID;
        Username = username;
        Password = password;
        Gender = gender;
        Title = title;
        Role = role;
        Department = department;
    }

    public int getDoctorID() {
        return DoctorID;
    }

    public void setDoctorID(int doctorID) {
        DoctorID = doctorID;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String username) {
        Username = username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String gender) {
        Gender = gender;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String title) {
        Title = title;
    }

    public Enumrole getRole() {
        return Role;
    }

    public void setRole(Enumrole role) {
        Role = role;
    }

    public String getDepartment() {
        return Department;
    }

    public void setDepartment(String department) {
        Department = department;
    }
}
