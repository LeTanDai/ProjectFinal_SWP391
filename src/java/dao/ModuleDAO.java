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

        try ( Statement stmt = connection.createStatement();  ResultSet rs = stmt.executeQuery(sql)) {

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

    public Module GetModuleById(int id) {
        Module module = null;
        String sql = "SELECT * FROM Module\n"
                + "WHERE Module.module_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String moduleName = rs.getString("module_name");
                String description = rs.getString("module_description");
                int subjectId = rs.getInt("subject_id");
                int classId = rs.getInt("class_id");

                module = new Module(id, moduleName, description, subjectId, classId);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return module;
    }

    public Module getModuleByName(String name, int classid, int subjectid) {
        if (!name.toLowerCase().contains("chương")) {
            name = "chương" + name;
        }
        Module module = null;
        String sql = "select * from Module\n"
                + "where Module.module_name like ? \n"
                + "and Module.subject_id = ? and Module.class_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setInt(2, subjectid);
            ps.setInt(3, classid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String moduleName = rs.getString("module_name");
                String description = rs.getString("module_description");
                int subjectId = rs.getInt("subject_id");
                int classId = rs.getInt("class_id");
                int moduleid = rs.getInt("module_id");
                module = new Module(moduleid, moduleName, description, subjectId, classId);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return module;
    }
}
