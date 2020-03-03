-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-02-25 02:14:31.098

-- tables
-- Table: Auth_token
CREATE TABLE Auth_token (
    User_email varchar(255) NOT NULL,
    refresh_token varchar(255) NOT NULL,
    expiry timestamp NOT NULL,
    CONSTRAINT Auth_token_pk PRIMARY KEY (User_email)
);

-- Table: Followers
CREATE TABLE Followers (
    User_email varchar(255) NOT NULL,
    id int NOT NULL,
    email varchar(255) NOT NULL,
    CONSTRAINT Followers_pk PRIMARY KEY (id)
);

-- Table: Following
CREATE TABLE Following (
    User_email varchar(255) NOT NULL,
    id int NOT NULL,
    email varchar(255) NOT NULL,
    CONSTRAINT Following_pk PRIMARY KEY (id)
);

-- Table: Stock_Collection
CREATE TABLE Stock_Collection (
    User_email varchar(255) NOT NULL,
    vote bool NULL,
    vote_price int NULL,
    vote_datetime timestamp NULL,
    recent_predictions int NULL,
    total_predictiond int NULL,
    correct_prediction int NULL,
    CONSTRAINT Stock_Collection_pk PRIMARY KEY (User_email)
);

-- Table: User
CREATE TABLE User (
    email varchar(255) NOT NULL,
    password varchar(128) NOT NULL,
    reputation int NOT NULL,
    CONSTRAINT User_pk PRIMARY KEY (email)
);

-- foreign keys
-- Reference: Auth_token_User (table: Auth_token)
ALTER TABLE Auth_token ADD CONSTRAINT Auth_token_User FOREIGN KEY Auth_token_User (User_email)
    REFERENCES User (email);

-- Reference: Followers_User (table: Followers)
ALTER TABLE Followers ADD CONSTRAINT Followers_User FOREIGN KEY Followers_User (User_email)
    REFERENCES User (email);

-- Reference: Following_User (table: Following)
ALTER TABLE Following ADD CONSTRAINT Following_User FOREIGN KEY Following_User (User_email)
    REFERENCES User (email);

-- Reference: Stock_Collection_User (table: Stock_Collection)
ALTER TABLE Stock_Collection ADD CONSTRAINT Stock_Collection_User FOREIGN KEY Stock_Collection_User (User_email)
    REFERENCES User (email);

-- End of file.

