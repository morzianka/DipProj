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
        user1.setLogin(user1.getName());
        user2.setLogin(user2.getName());
        userDAO.saveUser(user1);
        userDAO.saveUser(user2);

        User user = userDAO.getUser("Вася");
        Assert.assertEquals(user1, user);
    }


    @Test
    public void testGetFriends(){

    }

}
