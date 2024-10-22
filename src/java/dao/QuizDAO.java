package dao;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Quiz;

/**
 *
 */
public class QuizDAO extends DBContext {

    public List<Quiz> getQuizzesByModule(int moduleId) {
        List<Quiz> quizzes = new ArrayList<>();
        String sql = "SELECT q.quiz_id, q.question_name, q.option1, q.option2, q.option3, q.option4, q.true_answer, q.points, q.[index] "
                + "FROM Quiz q INNER JOIN Module_Quiz mq ON q.quiz_id = mq.quiz_id "
                + "WHERE mq.module_id = ?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, moduleId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Quiz quiz = new Quiz();
                quiz.setId(rs.getInt("quiz_id"));
                quiz.setName(rs.getString("question_name"));
                quiz.setOption1(rs.getString("option1"));
                quiz.setOption2(rs.getString("option2"));
                quiz.setOption3(rs.getString("option3"));
                quiz.setOption4(rs.getString("option4"));
                quiz.setTrue_answer(rs.getString("true_answer"));
                quiz.setPoints(rs.getInt("points"));
                quiz.setIndex(rs.getInt("index"));

                quizzes.add(quiz);
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        return quizzes;
    }
}
