/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author TanDai
 */
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
import java.sql.Date;

/**
 *
 * @author TanDai
 */
public class User {
    private int userId;
    private String fName;
    private String userName;
    private String password;
    private Date dob;
    private boolean gender;
    private String phone;
    private String email;
    private String avatar;
    private boolean isNormal;
    private boolean isPremium;
    private boolean isAdmin;
    private String address;

    public User() {
    }

    public User(int userId, String fName, String userName, String password, Date dob, boolean gender, String phone, String email, String avatar, boolean isNormal, boolean isPremium, boolean isAdmin, String address) {
        this.userId = userId;
        this.fName = fName;
        this.userName = userName;
        this.password = password;
        this.dob = dob;
        this.gender = gender;
        this.phone = phone;
        this.email = email;
        this.avatar = avatar;
        this.isNormal = isNormal;
        this.isPremium = isPremium;
        this.isAdmin = isAdmin;
        this.address = address;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
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

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public boolean isIsNormal() {
        return isNormal;
    }

    public void setIsNormal(boolean isNormal) {
        this.isNormal = isNormal;
    }

    public boolean isIsPremium() {
        return isPremium;
    }

    public void setIsPremium(boolean isPremium) {
        this.isPremium = isPremium;
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", fName=" + fName + ", userName=" + userName + ", password=" + password + ", dob=" + dob + ", gender=" + gender + ", phone=" + phone + ", email=" + email + ", avatar=" + avatar + ", isNormal=" + isNormal + ", isPremium=" + isPremium + ", isAdmin=" + isAdmin + ", address=" + address + '}';
    }


}

