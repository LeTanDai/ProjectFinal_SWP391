/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author TanDai
 */
public class Module {
    private int id;
    private String name;
    private String description;
    private int subjectsid;
    private int classid;

    public Module() {
    }

    public Module(int id, String name, String description, int subjectsid, int classid) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.subjectsid = subjectsid;
        this.classid = classid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getSubjectsid() {
        return subjectsid;
    }

    public void setSubjectsid(int subjectsid) {
        this.subjectsid = subjectsid;
    }

    public int getClassid() {
        return classid;
    }

    public void setClassid(int classid) {
        this.classid = classid;
    }
}
