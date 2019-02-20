package com.dip.dao;

import com.dip.entity.User;

import java.util.Collection;

public interface UserDAO {

    void saveUser(User user);

    User getUser(String login);

    Collection<User> getFriends(User user);

    Collection<User> getSimilarUsers(String languageToLearn);
}
