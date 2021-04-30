DROP TABLE division cascade constraints;
Drop table team cascade constraints;
drop table stadium cascade constraints;
drop table team_owner cascade constraints;
drop table league_employee cascade constraints;
drop table contract cascade constraints;
drop sequence seqownid;
drop sequence seqempID;

CREATE TABLE division (
  division_name varchar2(50) not null,
  PRIMARY KEY (division_name)
);

CREATE TABLE team (
  team_name varchar2(20) not null,
  home varchar2(25),
  division_name varchar2(50) not null,
  PRIMARY KEY (team_name),
  FOREIGN KEY (division_name) references division(division_name)
);

CREATE TABLE stadium (
  stadium_name varchar2(25) not null, 
  team_name varchar2(20), 
  address varchar2(50),
  capacity integer,
  PRIMARY KEY (stadium_name),
  FOREIGN KEY (team_name) references team(team_name)  
);

CREATE TABLE team_owner (
  ownerid integer not null,
  owner_fname varchar2(50),
  owner_lname varchar2(15),
  team_name varchar2(20) not null,
  PRIMARY KEY (ownerid),
  FOREIGN KEY (team_name) references team(team_name)
);

CREATE SEQUENCE seqownID INCREMENT BY 1 START WITH 1;


CREATE TABLE league_employee (
  empid integer not null,
  team_name varchar2(20),
  fname varchar2(15) not null,
  lname varchar2(15) not null,
  jersey_no integer,
  pos varchar2(20),
  captainid integer,
  mgrid integer, 
  PRIMARY KEY (empid),
  FOREIGN KEY (team_name) references team(team_name),
  FOREIGN KEY (captainid) references league_employee(empid),
  FOREIGN KEY (mgrid) references league_employee(empid)
);
Alter Table league_employee
Drop Column mgrid;
Alter Table league_employee
ADD mgrid integer;
Alter Table league_employee
Drop Column lname;
Alter Table league_employee
Modify (fname varchar2 (50));



CREATE TABLE contract (
  empid integer,
  no_years integer,
  worth integer,
  PRIMARY KEY (empid),
  FOREIGN KEY (empid) references league_employee(empid)
);

CREATE SEQUENCE seqempID INCREMENT BY 1 START WITH 1;




