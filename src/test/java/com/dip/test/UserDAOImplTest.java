package com.dip.test;

import com.dip.dao.UserDAO;
import com.dip.entity.User;
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

        user1.setUsername(user1.getName());
        user2.setUsername(user2.getName());
        userDAO.saveUser(user1);
        userDAO.saveUser(user2);

        User user = userDAO.getUser("Вася");
        Assert.assertEquals(25, user.getAge());
        Assert.assertEquals("RU", user.getNativeLanguage());
        Assert.assertEquals("Вася", user.getName());
        Assert.assertTrue("Вася", user.isFemale());
    }


    @Test
    public void testGetFriends(){
        User user1 = new User("Вася", 25, true, "RU", "EN");
        User user2 = new User("Маша", 30, false, "DE", "IT");
        User user3 = new User("Петя", 45, false, "CH", "FR");

        user1.setUsername(user1.getName());
        user2.setUsername(user2.getName());
        user3.setUsername(user3.getName());

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
