package com.dip.dao;

import com.dip.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import org.hibernate.query.NativeQuery;
import javax.transaction.Transactional;
import java.util.Collection;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO {
    @Autowired
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void saveUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(user);
    }

    @Override
    public User getUser(String username) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(User.class, username);
    }

    @Override
    public Collection<User> getSimilarUsers(String languageToLearn) {
        Session session = sessionFactory.getCurrentSession();
        NativeQuery<User> query = session.createNativeQuery("select * from web_chat.users where native_language like :languageToLearn", User.class);
        query.setParameter("languageToLearn", languageToLearn);
        return query.getResultList();
    }
}
