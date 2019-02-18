package com.dip.test;

import com.dip.dao.UserDAO;
import com.dip.entity.User;
import com.dip.service.UserService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.Collection;

/**
 * Created by Roman Petrov
 */

@ContextConfiguration(locations = "classpath:application-context-test.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class UserDAOImplTest {


    @Autowired
    private UserDAO userDAO;

    @Test
    public void testSaveAndGetUser(){
        User user1 = new User("Вася", 25, true, "RU", "EN");
        User user2 = new User("Маша", 30, false, "DE", "IT");


        /*
            todo - autoincrement (autogenerate?) on server side?
            Usually scripts to create database stores in project (or, use Hibirnate to create tables).
            I used Hibernate to create tables and my 'login' is not autoincrement
         */
        user1.setLogin(user1.getName());
        user2.setLogin(user2.getName());
        userDAO.saveUser(user1);
        userDAO.saveUser(user2);

        User user = userDAO.getUser("Вася");
        Assert.assertEquals(25, user.getAge());
        Assert.assertEquals("RU", user.getNativeLanguage());
        Assert.assertEquals("Вася", user.getName());
        Assert.assertTrue("Вася", user.getGender());
    }


    @Test
    public void testGetFriends(){
        User user1 = new User("Вася", 25, true, "RU", "EN");
        User user2 = new User("Маша", 30, false, "DE", "IT");
        User user3 = new User("Петя", 45, false, "CH", "FR");

        user1.setLogin(user1.getName());
        user2.setLogin(user2.getName());
        user3.setLogin(user3.getName());

        userDAO.saveUser(user1);
        userDAO.saveUser(user2);
        userDAO.saveUser(user3);

        Collection<User> friends = new ArrayList<>();
        friends.add(user2);
        friends.add(user3);
        user1.setFriends(friends);

        userDAO.saveUser(user1);

        User user = userDAO.getUser("Вася");
        Assert.assertEquals(2, user.getFriends().size());

        User userOneMore = userDAO.getUser("Маша");
        Assert.assertEquals(1, userOneMore.getFriendOf().size());



    }

}
