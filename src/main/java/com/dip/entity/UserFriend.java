package com.dip.entity;

import javax.persistence.*;

@Entity
@Table(name = "user_friend")
public class UserFriend {
    @EmbeddedId
    private UserFriendPK userFriendPK;

    public UserFriend() {}

    public UserFriendPK getUserFriendPK() {
        return userFriendPK;
    }

    public void setUserFriendPK(UserFriendPK userFriendPK) {
        this.userFriendPK = userFriendPK;
    }
}
