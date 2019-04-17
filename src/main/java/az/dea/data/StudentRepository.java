package az.dea.data;

import az.dea.model.Student;
import org.hibernate.query.Query;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.sql.*;
import java.util.List;

@Repository
public class StudentRepository extends DataManager {

    public List<Student> getStudentsHiber() {
        return session().createQuery("from Student", Student.class).list();
    }

    public Student findStudent(int id) {
        return session().get(Student.class, id);
    }

    public void addStudent(Student student) {
        session().save(student);
    }

    public void updateStudent(Student student) {
        session().update(student);
    }

    public void deleteStudentHiber(Student student){
        Query query = session().createQuery("delete Student s where s.id = :id");
        query.setParameter("id", student.getId());
        query.executeUpdate();
    }
    public Number addStudentLastId(Student s) {
        String query = "insert into students (name,surname,parent,birthDate,phone,gmail,gmailCode,gender,status) values(?,?,?,?,?,?,?,?,1)";
        KeyHolder keyHolder = new GeneratedKeyHolder();
        jdbcTemplate.update(new PreparedStatementCreator() {
            @Override
            public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
                PreparedStatement statement = connection.prepareStatement(query, new String[]{"id"});
                statement.setString(1, s.getName());
                statement.setString(2, s.getSurname());
                statement.setString(3, s.getParent());
                statement.setDate(4, new Date(s.getBirthDate().getTime()));
                statement.setString(5, s.getPhone());
                statement.setString(6, s.getGmail());
                statement.setString(7, s.getGmailCode());
                statement.setString(8, s.getGender());

                return statement;
            }
        }, keyHolder);
        return keyHolder.getKey();
    }
}
