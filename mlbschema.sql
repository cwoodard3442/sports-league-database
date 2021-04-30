DROP TABLE division cascade constraints;
Drop table team cascade constraints;
drop table stadium cascade constraints;
drop table league_employee cascade constraints;
drop sequence seqownid;

CREATE TABLE division (
  division_name varchar2(50) not null,
  PRIMARY KEY (division_name)
);

CREATE TABLE team (
  team_name varchar2(20) not null,
  home_city varchar2(15),
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
  owner_id integer not null,
  owner_fname varchar2(15) not null,
  owner_lname varchar2(15) not null,
  team_name varchar2(20) not null,
  PRIMARY KEY (owner_id),
  FOREIGN KEY (team_name) references team(team_name)
);

CREATE SEQUENCE seqownID INCREMENT BY 1 START WITH 1;
Alter Table team_owner Modify (owner_lname varchar2 (15) null);
Alter Table team_owner Modify (owner_fname varchar2 (50) null);

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
  empid integer not null,
  no_years integer not null,
  worth integer not null,
  PRIMARY KEY (empid),
  FOREIGN KEY (empid) references league_employee(empid)
);
Alter Table contract
Modify(no_years integer null, worth null);

CREATE SEQUENCE seqempID INCREMENT BY 1 START WITH 1;




