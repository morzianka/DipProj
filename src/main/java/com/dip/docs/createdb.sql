CREATE TABLE web_chat.users
(
  username          varchar(20) NOT NULL,
  password          varchar(68) NOT NULL,
  name              varchar(40) NULL,
  age               integer     NULL,
  gender            boolean     NULL,
  native_language   varchar(40) NULL,
  language_to_learn varchar(40) NULL,
  PRIMARY KEY (username)
);

CREATE TABLE web_chat.user_friend
(
  usr    varchar(20) NOT NULL,
  friend varchar(20) NOT NULL,
  foreign key ("usr") references web_chat.users ("username"),
  foreign key ("friend") references web_chat.users ("username"),
  CONSTRAINT usr_friend PRIMARY KEY (usr, friend)
);


