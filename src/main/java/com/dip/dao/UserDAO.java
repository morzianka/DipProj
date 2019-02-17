package com.dip.dao;

import com.dip.entity.User;

import java.util.List;

public interface UserDAO {

    void saveUser(User user);

    User getUser(String login);

    List<User> getFriends(String login);

    void addFriend(User user);
}
