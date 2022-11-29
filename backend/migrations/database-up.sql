CREATE DATABASE scp_website;

CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY UNIQUE NOT NULL,
    username VARCHAR(100) UNIQUE NOT NULL,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    usf_email VARCHAR(100) UNIQUE,
    year_in_college INTEGER,
    major VARCHAR(100),
    DOB DATE
);

CREATE TABLE Admin (
    is_faculty BOOLEAN,
    e_board_position VARCHAR(100)
) INHERITS (Users);

CREATE TABLE Problems (
	problem_id SERIAL UNIQUE NOT NULL PRIMARY KEY,
    web_url TEXT UNIQUE NOT NULL,
    problem_name VARCHAR(100),
    website_name VARCHAR(100),
    category VARCHAR(100),
    programming_language VARCHAR(100),
    difficulty VARCHAR(100)
);

CREATE TABLE Solved (
    user_name INTEGER REFERENCES Users,
    problem_id INTEGER REFERENCES Problems,
    CONSTRAINT pk_solved PRIMARY KEY (user_name, problem_id)
);

CREATE TABLE CodeSnippets (
    snippet_id SERIAL PRIMARY KEY UNIQUE NOT NULL,
    name VARCHAR(255),
    description TEXT,
    programming_language VARCHAR(100),
    content TEXT,
    username INTEGER REFERENCES User NOT NULL,
);

CREATE TABLE Events (
    event_id SERIAL PRIMARY KEY UNIQUE NOT NULL,
    name VARCHAR(100),
    description TEXT,
    poster BLOB,
    location TEXT,
    time TIME(0),
    date DATE
);

CREATE TABLE Attends (
    username VARCHAR(100) PRIMARY KEY NOT NULL,
    event_id INTEGER PRIMARY KEY,
    CONSTRAINT user_fk FOREIGN KEY (username) REFERENCES User,
    CONSTRAINT event_fk FOREIGN KEY (e_id) REFERENCES Events
);


