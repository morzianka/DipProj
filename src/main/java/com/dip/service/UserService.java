package com.dip.service;

import com.dip.entity.User;

import java.util.Collection;

public interface UserService {

    void saveUser(User user);

    User getUser(String login);

    Collection<User> getFriends(User user);

    void addFriend(User user, String friendLogin);

    Collection<User> getSimilarUsers(String languageToLearn);
}
