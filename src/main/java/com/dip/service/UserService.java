package com.dip.service;

import com.dip.entity.User;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface UserService {

    void saveUser(User user);

    User getUser(String login);

    List<User> getFriends(String login);

    void addFriend(User user);
}
