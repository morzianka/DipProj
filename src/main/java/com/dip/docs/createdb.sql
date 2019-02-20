CREATE TABLE web_chat.user
(
  login             varchar(20) NOT NULL,
  password          varchar(20) NOT NULL,
  name              varchar(40) NULL,
  age               integer     NULL,
  gender            boolean     NULL,
  native_language   varchar(40) NULL,
  language_to_learn varchar(40) NULL,
  PRIMARY KEY (login)
);

CREATE TABLE web_chat.user_friend
(
  usr    varchar(20) NOT NULL,
  friend varchar(20) NOT NULL,
  foreign key ("usr") references web_chat.user ("login"),
  foreign key ("friend") references web_chat.user ("login"),
  CONSTRAINT usr_friend PRIMARY KEY (usr, friend)
);


