/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author PC
 */
public class Document {
    private int docId;
    private String doc_url;
    private String docName;    
    private String image_url;
    private Subject subject;

    public Document() {
    }

    public Document(int docId, String doc_url, String docName, String image_url, Subject subject) {
        this.docId = docId;
        this.doc_url = doc_url;
        this.docName = docName;
        this.image_url = image_url;
        this.subject = subject;
    }

    public int getDocId() {
        return docId;
    }

    public void setDocId(int docId) {
        this.docId = docId;
    }

    public String getDoc_url() {
        return doc_url;
    }

    public void setDoc_url(String doc_url) {
        this.doc_url = doc_url;
    }

    public String getDocName() {
        return docName;
    }

    public void setDocName(String docName) {
        this.docName = docName;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    @Override
    public String toString() {
        return "Document{" + "docId=" + docId + ", doc_url=" + doc_url + ", docName=" + docName + ", image_url=" + image_url + ", subject=" + subject + "}\n";
    }
    
    
}
