/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import model.Video;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import model.Classes;
import model.Document;
import model.Lesson;
import model.Lesson_Content;
import model.Subjects;

/**
 *
 * @author Admin
 */
public class VideoDAO extends DBContext {

    public VideoDAO() throws Exception {
    }

    public ArrayList<Video> getAllVideo() throws Exception {
        PreparedStatement prepare = null;
        ResultSet rs = null;
        Video video = null;
        ArrayList<Video> list = new ArrayList<>();
        try {
            prepare = connection.prepareStatement("select * from Video");
            rs = prepare.executeQuery();
            while (rs.next()) {
                video = new Video(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
                list.add(video);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Video getVideoByVideoid(int videoid) throws Exception {
        PreparedStatement prepare = null;
        ResultSet rs = null;
        Video video = null;
        try {
            prepare = connection.prepareStatement("select * from Video where Video.video_id = ?");
            prepare.setInt(1, videoid);
            rs = prepare.executeQuery();
            while (rs.next()) {
                video = new Video(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return video;
    }

    public void DeleteVideobyVideoid(int videoid, int contentid) {
        PreparedStatement prepare = null;
        ResultSet rs = null;
        Video video = null;
        try {
            ContentDAO contdao = new ContentDAO();
            VideoDAO viddao = new VideoDAO();
            CourseDAO courdao = new CourseDAO();
            prepare = connection.prepareStatement("delete from Lesson where Lesson.video_id = ? and Lesson.content_id = ? \n"
                    + "delete from Video where Video.video_id = ?\n"
                    + "delete from Lesson_Content where Lesson_Content.content_id = ?" );
//                    + "DBCC CHECKIDENT ('Lesson', RESEED, ?);\n"
//                    + "DBCC CHECKIDENT ('Video', RESEED, ?);\n"
//                    + "DBCC CHECKIDENT ('Lesson_Content', RESEED, ?);");
            prepare.setInt(1, videoid);
            prepare.setInt(2, contentid);
            prepare.setInt(3, videoid);
            prepare.setInt(4, contentid);
//            prepare.setInt(5, courdao.getMaxLessonId());
//            prepare.setInt(6, viddao.getMaxVideoId());
//            prepare.setInt(7, contdao.getMaxContentId());
            prepare.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ArrayList<Video> getListVideoBySearch(String search) {
        ArrayList<Video> list = new ArrayList<>();
        PreparedStatement prepare = null;
        ResultSet rs = null;
        try {
            prepare = connection.prepareStatement("SELECT * FROM Video\n"
                    + "WHERE video_title LIKE ?");
            prepare.setString(1, "%" + search + "%");
            rs = prepare.executeQuery();
            while (rs.next()) {
                list.add(new Video(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public void addVideo(Video video) {
        PreparedStatement prepare = null;
        ResultSet rs = null;
        try {
            prepare = connection.prepareStatement("Insert into Video(video_title, video_url,subject_id,class_id ) values (?,?,?,?)");
            prepare.setString(1, video.getTitle());
            prepare.setString(2, video.getUrl());
            prepare.setInt(3, video.getSubjectid());
            prepare.setInt(4, video.getClassid());
            prepare.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int getMaxVideoId() {
        PreparedStatement prepare = null;
        ResultSet rs = null;
        try {
            prepare = connection.prepareStatement("select MAX(Video.video_id) from Video");
            rs = prepare.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    public static void main(String[] args) {
        try {
            VideoDAO vid = new VideoDAO();
            SubjectDAO dao = new SubjectDAO();
            Subjects sub = dao.getSubjectByName("Lý");
            ClassDAO cldao = new ClassDAO();
            ContentDAO contdao = new ContentDAO();
            CourseDAO coudao = new CourseDAO();
            ModuleDAO modao = new ModuleDAO();
            DocumentDAO docdao = new DocumentDAO();
            DocumentPendingDAO docpenddao = new DocumentPendingDAO();
            ArrayList<Document> listdoc = docpenddao.getAllDocumentWithSubject();
            for ( Document doc : listdoc ) {
                System.out.println(doc.getDocName());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
