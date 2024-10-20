/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author PC
 */
public class Exam {
    private int examId;
    private String examUrl;
    private String examName;
    private int class_id;
    private int subject_id;

    public Exam() {
    }

    public Exam(int examId, String examUrl, String examName, int class_id, int subject_id) {
        this.examId = examId;
        this.examUrl = examUrl;
        this.examName = examName;
        this.class_id = class_id;
        this.subject_id = subject_id;
    }

    public int getExamId() {
        return examId;
    }

    public void setExamId(int examId) {
        this.examId = examId;
    }

    public String getExamUrl() {
        return examUrl;
    }

    public void setExamUrl(String examUrl) {
        this.examUrl = examUrl;
    }

    public String getExamName() {
        return examName;
    }

    public void setExamName(String examName) {
        this.examName = examName;
    }

    public int getClass_id() {
        return class_id;
    }

    public void setClass_id(int class_id) {
        this.class_id = class_id;
    }

    public int getSubject_id() {
        return subject_id;
    }

    public void setSubject_id(int subject_id) {
        this.subject_id = subject_id;
    }

    @Override
    public String toString() {
        return "Exam{" + "examId=" + examId + ", examUrl=" + examUrl + ", examName=" + examName + ", class_id=" + class_id + ", subject_id=" + subject_id + "} \n";
    }
    
    
    
}
