package com.market.service;

import com.market.model.User;
import com.market.repository.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    public UserDao userDao;

    public int createUser(User user) {
        return userDao.createUser(user);
    }
}
