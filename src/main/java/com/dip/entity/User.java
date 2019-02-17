package com.dip.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "user", schema = "web_chat")
public class User {
    @Id
    @Column(name = "login")
    private String login;
    @Column(name = "password")
    private String password;
    @Column(name = "name")
    private String name;
    @Column(name = "age")
    private int age;
    @Column(name = "gender")
    private boolean gender;
    @Column(name = "native_language")
    private String nativeLanguage;
    @Column(name = "language_to_learn")
    private String languageToLearn;
    @ManyToMany(fetch = FetchType.LAZY, cascade = {CascadeType.DETACH,
            CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    @JoinTable(name = "user_friend",
            joinColumns = @JoinColumn(name = "friend"),
            inverseJoinColumns = @JoinColumn(name = "usr"))
    private List<User> friends;

    public User() {}

    public User(String name, int age, boolean gender, String nativeLanguage, String languageToLearn) {
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.nativeLanguage = nativeLanguage;
        this.languageToLearn = languageToLearn;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getNativeLanguage() {
        return nativeLanguage;
    }

    public void setNativeLanguage(String nativeLanguage) {
        this.nativeLanguage = nativeLanguage;
    }

    public String getLanguageToLearn() {
        return languageToLearn;
    }

    public void setLanguageToLearn(String languageToLearn) {
        this.languageToLearn = languageToLearn;
    }

    public List<User> getFriends() {
        return friends;
    }

    public void setFriends(List<User> friends) {
        this.friends = friends;
    }

    public boolean getGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public void add(User friend) {
        if(friends == null)
            friends = new ArrayList<>();
        friends.add(friend);
    }

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", sex=" + gender +
                ", nativeLanguage=" + nativeLanguage +
                ", languageToLearn=" + languageToLearn +
                '}';
    }
}
