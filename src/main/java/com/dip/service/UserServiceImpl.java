package com.dip.service;

import com.dip.dao.UserDAO;
import com.dip.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collection;

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
    public Collection<User> getFriends(User user)  {
        return userDAO.getFriends(user);
    }

    @Override
    @Transactional
    public Collection<User> getSimilarUsers(String languageToLearn) {
        return userDAO.getSimilarUsers(languageToLearn);
    }
}
