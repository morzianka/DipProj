package com.dip.dao;

import com.dip.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.util.List;

@Repository
public class UserDAOImpl implements UserDAO {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void saveUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(user);
    }

    @Override
    public User getUser(String login) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(User.class, login);
    }

    @Override
    public List<User> getFriends(String login) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createSQLQuery("select login from user join user_friend on (user.login=user_friend.login) where usr like :login");
        query.setParameter("login", login);
        query.executeUpdate();
        return query.getResultList();
    }

    @Override
    public void addFriend(User user) {
        Session session = sessionFactory.getCurrentSession();
    }
}
