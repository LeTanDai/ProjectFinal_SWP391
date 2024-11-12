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


    public void addModule(Module module) {
        String sql = "INSERT INTO Module (module_name, module_description,subject_id,class_id) VALUES \n"
                + "(?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, module.getName());
            ps.setString(2, module.getDescription());
            ps.setInt(3, module.getSubjectsid());
            ps.setInt(4, module.getClassid());
            ps.execute();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public List<Module> getAllModulesWithSubject( int subjectid, int classid ) {
        List<Module> modules = new ArrayList<>();
        String sql = "SELECT m.module_id, m.module_name, m.module_description, "
                + "m.subject_id, s.subject_name, "
                + "m.class_id, c.class_name "
                + "FROM Module m "
                + "JOIN Subjects s ON m.subject_id = s.subject_id "
                + "JOIN Classes c ON m.class_id = c.class_id where m.subject_id = ? and m.class_id = ?";

        try  {
            PreparedStatement ps = connection.prepareStatement(sql);
           ps.setInt(1, subjectid);
           ps.setInt(2, classid);
            ResultSet rs = ps.executeQuery();
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
    public int getModuleIdByName(String moduleName, int subjectId, int classId) {
        int moduleId = -1;
        String sql = "SELECT module_id FROM Module WHERE module_name = ? AND subject_id = ? AND class_id = ?"; // Adjust the SQL based on your actual table structure

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, moduleName);
            ps.setInt(2, subjectId);
            ps.setInt(3, classId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                moduleId = rs.getInt("module_id");
            }
        } catch (SQLException e) {
            System.err.println("Error while retrieving module ID: " + e.getMessage());
        }

        return moduleId;

    }
}
