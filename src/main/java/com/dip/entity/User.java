package com.dip.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Collection;

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
    private boolean female;
    @Column(name = "native_language")
    private String nativeLanguage;
    @Column(name = "language_to_learn")
    private String languageToLearn;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name="user_friend", schema = "web_chat",
            joinColumns=@JoinColumn(name="friend"),
            inverseJoinColumns=@JoinColumn(name="usr")
    )
    private Collection<User> friends;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name="user_friend", schema = "web_chat",
            joinColumns=@JoinColumn(name="usr"),
            inverseJoinColumns=@JoinColumn(name="friend")
    )
    private Collection<User> friendOf;

    public User() {}

    public User(String name, int age, boolean female, String nativeLanguage, String languageToLearn) {
        this.name = name;
        this.age = age;
        this.female = female;
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

    public Collection<User> getFriends() {
        return friends;
    }

    public void setFriends(Collection<User> friends) {
        this.friends = friends;
    }

    public boolean isFemale() {
        return female;
    }

    public void setFemale(boolean female) {
        this.female = female;
    }

    public void add(User friend) {
        if(friends == null)
            friends = new ArrayList<>();
        friends.add(friend);
    }

    public Collection<User> getFriendOf() {
        return friendOf;
    }

    public void setFriendOf(Collection<User> friendOf) {
        this.friendOf = friendOf;
    }

    @Override
    public String toString() {
        return "User{" +
                "login='" + login + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", female=" + female +
                ", nativeLanguage='" + nativeLanguage + '\'' +
                ", languageToLearn='" + languageToLearn + '\'' +
                ", friends=" + friends +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User user = (User) o;

        if (age != user.age) return false;
        if (female != user.female) return false;
        if (login != null ? !login.equals(user.login) : user.login != null) return false;
        if (name != null ? !name.equals(user.name) : user.name != null) return false;
        if (nativeLanguage != null ? !nativeLanguage.equals(user.nativeLanguage) : user.nativeLanguage != null)
            return false;
        if (languageToLearn != null ? !languageToLearn.equals(user.languageToLearn) : user.languageToLearn != null)
            return false;
        return friends != null ? friends.equals(user.friends) : user.friends == null;
    }

    @Override
    public int hashCode() {
        int result = login != null ? login.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + age;
        result = 31 * result + (female ? 1 : 0);
        result = 31 * result + (nativeLanguage != null ? nativeLanguage.hashCode() : 0);
        result = 31 * result + (languageToLearn != null ? languageToLearn.hashCode() : 0);
        result = 31 * result + (friends != null ? friends.hashCode() : 0);
        return result;
    }
}
