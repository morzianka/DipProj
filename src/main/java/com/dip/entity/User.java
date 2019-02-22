package com.dip.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.Collection;

@Entity
@Table(name = "users", schema = "web_chat")
public class User {
    @Id
    @Column(name = "username")
    @NotNull(message = "is required")
    @Size(min = 4, message = "is required")
    private String username;
    @Column(name = "password")
    @NotNull(message = "is required")
    @Size(min = 6, message = "is required")
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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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
                "username='" + username + '\'' +
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
        if (!(o instanceof User)) return false;

        User user = (User) o;

        if (getAge() != user.getAge()) return false;
        if (isFemale() != user.isFemale()) return false;
        if (getUsername() != null ? !getUsername().equals(user.getUsername()) : user.getUsername() != null)
            return false;
        if (getPassword() != null ? !getPassword().equals(user.getPassword()) : user.getPassword() != null)
            return false;
        if (getName() != null ? !getName().equals(user.getName()) : user.getName() != null) return false;
        if (getNativeLanguage() != null ? !getNativeLanguage().equals(user.getNativeLanguage()) : user.getNativeLanguage() != null)
            return false;
        if (getLanguageToLearn() != null ? !getLanguageToLearn().equals(user.getLanguageToLearn()) : user.getLanguageToLearn() != null)
            return false;
        if (getFriends() != null ? !getFriends().equals(user.getFriends()) : user.getFriends() != null) return false;
        return getFriendOf() != null ? getFriendOf().equals(user.getFriendOf()) : user.getFriendOf() == null;
    }

    @Override
    public int hashCode() {
        int result = getUsername() != null ? getUsername().hashCode() : 0;
        result = 31 * result + (getPassword() != null ? getPassword().hashCode() : 0);
        result = 31 * result + (getName() != null ? getName().hashCode() : 0);
        result = 31 * result + getAge();
        result = 31 * result + (isFemale() ? 1 : 0);
        result = 31 * result + (getNativeLanguage() != null ? getNativeLanguage().hashCode() : 0);
        result = 31 * result + (getLanguageToLearn() != null ? getLanguageToLearn().hashCode() : 0);
        result = 31 * result + (getFriends() != null ? getFriends().hashCode() : 0);
        result = 31 * result + (getFriendOf() != null ? getFriendOf().hashCode() : 0);
        return result;
    }
}
