package model;

/**
 *
 * @author TanDai
 */
public class Module_Quiz {

    private int moduleId;
    private int quizId;

    public Module_Quiz() {
    }

    public Module_Quiz(int moduleId, int quizId) {
        this.moduleId = moduleId;
        this.quizId = quizId;
    }

    public int getModuleId() {
        return moduleId;
    }

    public void setModuleId(int moduleId) {
        this.moduleId = moduleId;
    }

    public int getQuizId() {
        return quizId;
    }

    public void setQuizId(int quizId) {
        this.quizId = quizId;
    }

    @Override
    public String toString() {
        return "Module_Quiz{"
                + "moduleId=" + moduleId
                + ", quizId=" + quizId
                + '}';
    }
}
