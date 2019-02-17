package com.dip.service;

import com.dip.dao.UserDAO;
import com.dip.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDAO userDAO;

    @Override
    @Transactional
    public void saveUser(User user) {
        userDAO.saveUser(user);
    }

    @Override
    @Transactional
    public User getUser(String login) {
        return userDAO.getUser(login);
    }

    @Override
    @Transactional
    public List<User> getFriends(String login) {
        return userDAO.getFriends(login);
    }

    @Override
    @Transactional
    public void addFriend(User user) {
        userDAO.addFriend(user);
    }
}
