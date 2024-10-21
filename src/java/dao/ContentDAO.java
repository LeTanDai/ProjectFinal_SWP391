/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import model.Lesson_Content;
import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class ContentDAO extends DBContext {
    
   public ContentDAO() throws Exception {
       
   }

    public Lesson_Content getContentByContentid(int contentid) throws Exception{
        Lesson_Content lct = null;
        PreparedStatement prepare = null;
        ResultSet rs = null;
        try {
            prepare = connection.prepareStatement("select * from Lesson_Content \n"
                    + "where Lesson_Content.content_id = ?");
            prepare.setInt(1, contentid);
            rs = prepare.executeQuery();
            while (rs.next()) {
                lct = new Lesson_Content(rs.getInt(1), rs.getString(2), rs.getString(3));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lct;
    }

}
