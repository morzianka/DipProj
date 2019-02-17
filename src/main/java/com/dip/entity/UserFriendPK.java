package com.dip.entity;

import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class UserFriendPK implements Serializable {
    private int usr;
    private Integer friend;

    public UserFriendPK() {}

    public UserFriendPK(int usr, int friend) {
        this.usr = usr;
        this.friend = friend;
    }
}
