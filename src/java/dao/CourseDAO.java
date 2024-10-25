/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import model.Lesson;
import model.Lesson_Content;
import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import model.Module;
import model.Video;
import java.util.LinkedHashMap;

/**
 *
 * @author Admin
 */
public class CourseDAO extends DBContext {

    public CourseDAO() throws Exception {
    }

    public Map<Module, ArrayList<Map<Lesson, Video>>> getAllModuleBySubjectid(int subjectid, int classid) throws Exception {
        ArrayList<Map<Lesson, Video>> list = new ArrayList();
        Map<Module, ArrayList<Map<Lesson, Video>>> map = new LinkedHashMap<>();
        PreparedStatement prepare = null;
        ResultSet rs = null;
        Module module = null;
        try {
            prepare = connection.prepareStatement("select * from Module\n"
                    + " where subject_id = ? and class_id = ?");
            prepare.setInt(1, subjectid);
            prepare.setInt(2, classid);
            rs = prepare.executeQuery();
            while (rs.next()) {
                module = new Module(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
                list = getAllLessonByModuleid(module.getId());
                map.put(module, list);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }

    public ArrayList<Map<Lesson, Video>> getAllLessonByModuleid(int moduleid) throws Exception {
        ArrayList<Map<Lesson, Video>> list = new ArrayList<>();
        VideoDAO viddao = new VideoDAO();
        PreparedStatement prepare = null;
        ResultSet rs = null;
        try {
            prepare = connection.prepareStatement("select Module.module_id,Module.module_name,Lesson.lesson_id,Lesson.lesson_name,Lesson.status_lesson, Lesson.content_id,Lesson.video_id,Lesson.isPremium from Module\n"
                    + "join Lesson on Module.module_id = Lesson.module_id\n"
                    + "where Module.module_id = ?");
            prepare.setInt(1, moduleid);
            rs = prepare.executeQuery();
            while (rs.next()) {
                Map<Lesson, Video> map = new LinkedHashMap<>();
                Lesson les = new Lesson(rs.getInt(3), rs.getString(4), rs.getInt(1), (boolean) rs.getBoolean(5), rs.getInt(6), rs.getInt(7), rs.getBoolean(8));
                Video video = viddao.getVideoByVideoid(les.getVideoid());
                map.put(les, video);
                list.add(map);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Lesson getLessonByVideoid(int videoid) throws Exception {
        Lesson less = null;
        PreparedStatement prepare = null;
        ResultSet rs = null;
        try {
            prepare = connection.prepareStatement("select * from Lesson \n"
                    + "where video_id = ?");
            prepare.setInt(1, videoid);
            rs = prepare.executeQuery();
            while (rs.next()) {
                less = new Lesson(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getBoolean(4), rs.getInt(5), rs.getInt(6), rs.getBoolean(7));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return less;
    }

    public void addLesson(Lesson les) {
        PreparedStatement prepare = null;
        ResultSet rs = null;
        try {
            prepare = connection.prepareStatement("INSERT INTO Lesson (lesson_name, module_id, status_lesson, content_id, video_id, isPremium) VALUES (?,?,?,?,?,?)");
            prepare.setString(1, les.getName());
            prepare.setInt(2, les.getModuleid());
            prepare.setBoolean(3, les.isStatus());
            prepare.setInt(4, les.getContentid());
            prepare.setInt(5, les.getVideoid());
            prepare.setBoolean(6, les.isIsPremium());
            prepare.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int getMaxLessonId() {
        PreparedStatement prepare = null;
        ResultSet rs = null;
        try {
            prepare = connection.prepareStatement("select MAX(Lesson.lesson_id) from Lesson");
            rs = prepare.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
}
