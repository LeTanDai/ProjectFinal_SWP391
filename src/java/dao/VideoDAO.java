/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import model.Video;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class VideoDAO extends DBContext {

    public VideoDAO() throws Exception{
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
}
