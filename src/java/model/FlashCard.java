/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author lethe
 */
public class FlashCard {
    private int flashCardId;
    private String questionName;
    private String option1;
    private String option2;
    private String option3;
    private String option4;
    private String true_answer;
    private int points;
    private int index;

    public FlashCard() {
    }

    public FlashCard(int flashCardId, String questionName, String option1, String option2, String option3, String option4, String true_answer, int points, int index) {
        this.flashCardId = flashCardId;
        this.questionName = questionName;
        this.option1 = option1;
        this.option2 = option2;
        this.option3 = option3;
        this.option4 = option4;
        this.true_answer = true_answer;
        this.points = points;
        this.index = index;
    }

    public int getFlashCardId() {
        return flashCardId;
    }

    public void setFlashCardId(int flashCardId) {
        this.flashCardId = flashCardId;
    }

    public String getQuestionName() {
        return questionName;
    }

    public void setQuestionName(String questionName) {
        this.questionName = questionName;
    }

    public String getOption1() {
        return option1;
    }

    public void setOption1(String option1) {
        this.option1 = option1;
    }

    public String getOption2() {
        return option2;
    }

    public void setOption2(String option2) {
        this.option2 = option2;
    }

    public String getOption3() {
        return option3;
    }

    public void setOption3(String option3) {
        this.option3 = option3;
    }

    public String getOption4() {
        return option4;
    }

    public void setOption4(String option4) {
        this.option4 = option4;
    }

    public String getTrue_answer() {
        return true_answer;
    }

    public void setTrue_answer(String true_answer) {
        this.true_answer = true_answer;
    }

    public int getPoints() {
        return points;
    }

    public void setPoints(int points) {
        this.points = points;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    @Override
    public String toString() {
        return "FlashCard{" + "flashCardId=" + flashCardId + ", questionName=" + questionName + ", option1=" + option1 + ", option2=" + option2 + ", option3=" + option3 + ", option4=" + option4 + ", true_answer=" + true_answer + ", points=" + points + ", index=" + index + '}';
    }
    
    
}
