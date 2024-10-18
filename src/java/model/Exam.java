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
    private ClassS _class;
    private Subject subject;

    public Exam() {
    }

    public Exam(int examId, String examUrl, String examName, ClassS _class, Subject subject) {
        this.examId = examId;
        this.examUrl = examUrl;
        this.examName = examName;
        this._class = _class;
        this.subject = subject;
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

    public ClassS getClassS() {
        return _class;
    }

    public void setClass(ClassS _class) {
        this._class = _class;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    @Override
    public String toString() {
        return "Exam{" + "examId=" + examId + ", examUrl=" + examUrl + ", examName=" + examName + ", _class=" + _class + ", subject=" + subject + "} \n";
    }
    
    
    
}
