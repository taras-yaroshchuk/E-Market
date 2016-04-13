package com.market.repository;

import com.market.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
//    private static final String SQL_INSERT_USER = "INSERT INTO users (username, password, email) VALUES (:username,:password,:email)";
    private static final String SQL_INSERT_USER = "INSERT INTO users (username, password, email) VALUES (?,?,?)";
    private static final String SQL_INSERT_USER_ROLES = "INSERT INTO user_roles (username, role) VALUES (?,?)";

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public int createUser(User user) {
        String username = user.getUsername();
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String hashedPassword = passwordEncoder.encode(user.getPassword());

        Object[] parameters = new Object[]{username, hashedPassword, user.getEmail()};
//        Map parameters = new HashMap<>();
//        parameters.put("username", user.getUsername());
//        parameters.put("password", user.getPassword());
//        parameters.put("email", user.getEmail());

        int user_id = jdbcTemplate.update(SQL_INSERT_USER, parameters);
        jdbcTemplate.update(SQL_INSERT_USER_ROLES, new Object[]{username, "ROLE_USER"});
        return user_id;
    }
}
