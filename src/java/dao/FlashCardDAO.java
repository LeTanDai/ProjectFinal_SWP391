/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.FlashCard;
import org.apache.tomcat.dbcp.dbcp2.PoolingConnection;

/**
 *
 * @author lethe
 */
public class FlashCardDAO extends DBContext {

    public FlashCardDAO() {
    }

    public List<FlashCard> GetFlashCardByModule(int moduleId) {
        List<FlashCard> flashList = new ArrayList<>();
        String sql = "SELECT Flashcards.flashcard_id, Flashcards.question_name, Flashcards.option1, Flashcards.option2, Flashcards.option3, Flashcards.option4, Flashcards.true_answer, Flashcards.points, Flashcards.[index]\n"
                + "FROM Flashcards INNER JOIN Module_Flashcard ON Flashcards.flashcard_id = Module_Flashcard.flashcard_id\n"
                + "WHERE Module_Flashcard.module_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, moduleId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                FlashCard flashCard = new FlashCard();
                flashCard.setFlashCardId(rs.getInt("flashcard_id"));
                flashCard.setQuestionName(rs.getString("question_name"));
                flashCard.setOption1(rs.getString("option1"));
                flashCard.setOption2(rs.getString("option2"));
                flashCard.setOption3(rs.getString("option3"));
                flashCard.setOption4(rs.getString("option4"));
                flashCard.setTrue_answer(rs.getString("true_answer"));
                flashCard.setPoints(rs.getInt("points"));
                flashCard.setIndex(rs.getInt("index"));

                flashList.add(flashCard);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return flashList;
    }
}
