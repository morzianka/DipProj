package com.dip.service;

import com.dip.entity.User;

import java.util.List;

public interface UserService {

    void saveUser(User user);

    User getUser(String login);

    List<User> getFriends(String login);
}
