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
import model.Module;
import java.sql.*;
import model.Classes;
import model.Subjects;

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

    public FlashCard getFlashCardById(int flashCardId) throws SQLException {
        FlashCard flashCard = null;
        String sql = "SELECT f.flashcard_id, "
                + "f.question_name, "
                + "f.option1, "
                + "f.option2, "
                + "f.option3, "
                + "f.option4, "
                + "f.true_answer, "
                + "f.points, "
                + "f.[index], "
                + "m.module_name, "
                + "s.subject_id, "
                + "s.subject_name, "
                + "c.class_id, "
                + "c.class_name "
                + "FROM Flashcards f "
                + "JOIN Module_Flashcard mf ON f.flashcard_id = mf.flashcard_id "
                + "JOIN Module m ON mf.module_id = m.module_id "
                + "JOIN Subjects s ON m.subject_id = s.subject_id "
                + "JOIN Classes c ON m.class_id = c.class_id "
                + "WHERE f.flashcard_id = ?";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, flashCardId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                flashCard = new FlashCard();
                flashCard.setFlashCardId(rs.getInt("flashcard_id"));
                flashCard.setQuestionName(rs.getString("question_name"));
                flashCard.setOption1(rs.getString("option1"));
                flashCard.setOption2(rs.getString("option2"));
                flashCard.setOption3(rs.getString("option3"));
                flashCard.setOption4(rs.getString("option4"));
                flashCard.setTrue_answer(rs.getString("true_answer"));
                flashCard.setPoints(rs.getInt("points"));
                flashCard.setIndex(rs.getInt("index"));

                Module module = new Module();
                module.setName(rs.getString("module_name"));

                Subjects subject = new Subjects();
                subject.setName(rs.getString("subject_name"));

                Classes classes = new Classes();
                classes.setName(rs.getString("class_name"));

                flashCard.setModule(module);
                flashCard.setSubject(subject);
                flashCard.setClasses(classes);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flashCard;
    }

    public void updateFlashCard(FlashCard flashCard) throws SQLException {
        String sql = "UPDATE Flashcards SET question_name = ?, option1 = ?, option2 = ?, option3 = ?, option4 = ?, "
                + "true_answer = ? WHERE flashcard_id = ?";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, flashCard.getQuestionName());
            ps.setString(2, flashCard.getOption1());
            ps.setString(3, flashCard.getOption2());
            ps.setString(4, flashCard.getOption3());
            ps.setString(5, flashCard.getOption4());
            ps.setString(6, flashCard.getTrue_answer());
            ps.setInt(7, flashCard.getFlashCardId());
            
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteFlashCard(int flashCardId) {
        String sql = "DELETE FROM Flashcards WHERE flashcard_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, flashCardId);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public List<FlashCard> getAllFlashcardsWithModules() {
        List<FlashCard> list = new ArrayList<>();
        String sql = "SELECT f.flashcard_id, "
                + "f.question_name, "
                + "f.option1, "
                + "f.option2, "
                + "f.option3, "
                + "f.option4, "
                + "f.true_answer, "
                + "f.points, "
                + "f.[index], "
                + "m.module_name, "
                + "s.subject_id, "
                + "s.subject_name, "
                + "c.class_id, "
                + "c.class_name "
                + "FROM Flashcards f "
                + "JOIN Module_Flashcard mf ON f.flashcard_id = mf.flashcard_id "
                + "JOIN Module m ON mf.module_id = m.module_id "
                + "JOIN Subjects s ON m.subject_id = s.subject_id "
                + "JOIN Classes c ON m.class_id = c.class_id";

        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

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

                Module module = new Module();
                module.setName(rs.getString("module_name"));
                Subjects subject = new Subjects();
                subject.setName(rs.getString("subject_name"));

                Classes classes = new Classes();
                classes.setName(rs.getString("class_name"));

                flashCard.setModule(module);
                flashCard.setSubject(subject);
                flashCard.setClasses(classes);

                list.add(flashCard);
            }
        } catch (SQLException e) {
            System.err.println("SQL Exception: " + e.getMessage());
        } catch (Exception e) {
            System.err.println("Exception: " + e.getMessage());
        }
        return list;
    }

    public int getLastIndex() throws SQLException {
        String sql = "SELECT MAX([index]) AS maxIndex FROM Flashcards";
        try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                return rs.getInt("maxIndex");
            }
        }
        return 0;
    }

    public boolean addFlashCardToExistingModule(FlashCard flashCard, int moduleId) throws SQLException {
        String flashcardSql = "INSERT INTO Flashcards (question_name, option1, option2, option3, option4, true_answer, [index], points) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        String moduleFlashcardSql = "INSERT INTO Module_Flashcard (module_id, flashcard_id) VALUES (?, ?)";

        try {
            connection.setAutoCommit(false);

            int lastIndex = getLastIndex();
            int newIndex = lastIndex + 1;
            flashCard.setIndex(newIndex);
            flashCard.setPoints(1);

            try (PreparedStatement flashcardPs = connection.prepareStatement(flashcardSql, Statement.RETURN_GENERATED_KEYS)) {
                flashcardPs.setString(1, flashCard.getQuestionName());
                flashcardPs.setString(2, flashCard.getOption1());
                flashcardPs.setString(3, flashCard.getOption2());
                flashcardPs.setString(4, flashCard.getOption3());
                flashcardPs.setString(5, flashCard.getOption4());
                flashcardPs.setString(6, flashCard.getTrue_answer());
                flashcardPs.setInt(7, flashCard.getIndex());
                flashcardPs.setInt(8, flashCard.getPoints());

                int rowsInserted = flashcardPs.executeUpdate();
                if (rowsInserted > 0) {
                    ResultSet generatedKeys = flashcardPs.getGeneratedKeys();
                    if (generatedKeys.next()) {
                        int flashcardId = generatedKeys.getInt(1);

                        try (PreparedStatement moduleFlashcardPs = connection.prepareStatement(moduleFlashcardSql)) {
                            moduleFlashcardPs.setInt(1, moduleId);
                            moduleFlashcardPs.setInt(2, flashcardId);

                            int associationRows = moduleFlashcardPs.executeUpdate();
                            if (associationRows > 0) {
                                connection.commit();
                                return true;
                            }
                        }
                    }
                }
            }
        } catch (SQLException e) {
            connection.rollback();
            throw e;
        } finally {
            connection.setAutoCommit(true);
        }
        return false;
    }

    public int getModuleIdByFlashCardId(int flashCardId) throws SQLException {
        String query = "SELECT module_id FROM Module_Flashcard WHERE flashcard_id = ?";
        int moduleId = -1;

        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, flashCardId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                moduleId = rs.getInt("module_id");
            }
        } catch (SQLException e) {
            System.err.println("Error fetching module ID: " + e.getMessage());
            throw e;
        }

        return moduleId;
    }

}
