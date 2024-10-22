package dao;

import context.DBContext;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Module;

public class ModuleDAO extends DBContext {

    public List<Module> getAllModules() {
        List<Module> modules = new ArrayList<>();

        String sql = "SELECT m.module_id, m.module_name, m.module_description, "
                   + "m.subject_id, s.subject_name, "
                   + "m.class_id, c.class_name "
                   + "FROM Module m "
                   + "JOIN Subjects s ON m.subject_id = s.subject_id "
                   + "JOIN Classes c ON m.class_id = c.class_id";

        try (Statement stmt = connection.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                int moduleId = rs.getInt("module_id");
                String moduleName = rs.getString("module_name");
                String description = rs.getString("module_description");
                int subjectId = rs.getInt("subject_id");
                int classId = rs.getInt("class_id");

                Module module = new Module(moduleId, moduleName, description, subjectId, classId);
                modules.add(module);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return modules;
    }
}
