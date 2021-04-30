Insert into Division (division_name) Values ('NL West');
Insert into Division (division_name) Values ('NL Central');
Insert into Division (division_name) Values ('NL East');
Insert into Division (division_name) Values ('AL West');
Insert into Division (division_name) Values ('AL Central');
Insert into Division (division_name) Values ('AL East');

Select * From Division;
Alter Table Team
Modify home_city varchar2(20);

Insert into Team (team_name, home_city, division_name) Values ('Dodgers', 'Los Angeles', 'NL West');
Insert into Team (team_name, home_city, division_name) Values ('Giants', 'San Francisco', 'NL West');
Insert into Team (team_name, home_city, division_name) Values ('Padres', 'San Diego', 'NL West');
Insert into Team (team_name, home_city, division_name) Values ('Diamondbacks', 'Phoneix', 'NL West');
Insert into Team (team_name, home_city, division_name) Values ('Rockies', 'Denver', 'NL West');
Insert into Team (team_name, home_city, division_name) Values ('Brewers', 'Milwaukee', 'NL Central');
Insert into Team (team_name, home_city, division_name) Values ('Pirates', 'Pittsburgh', 'NL Central');
Insert into Team (team_name, home_city, division_name) Values ('Cardinals', 'St. Louis', 'NL Central');
Insert into Team (team_name, home_city, division_name) Values ('Reds', 'Cincinati', 'NL Central');
Insert into Team (team_name, home_city, division_name) Values ('Cubs', 'Chicago', 'NL Central');
Insert into Team (team_name, home_city, division_name) Values ('Braves', 'Atlanta', 'NL East');
Insert into Team (team_name, home_city, division_name) Values ('Phillies', 'Philadelphia', 'NL East');
Insert into Team (team_name, home_city, division_name) Values ('Mets', 'New York City', 'NL East');
Insert into Team (team_name, home_city, division_name) Values ('Marlins', 'Miami', 'NL East');
Insert into Team (team_name, home_city, division_name) Values ('Nationals', 'Washington', 'NL East');
Insert into Team (team_name, home_city, division_name) Values ('Athletics', 'Oakland', 'AL West');
Insert into Team (team_name, home_city, division_name) Values ('Astros', 'Houston', 'AL West');
Insert into Team (team_name, home_city, division_name) Values ('Angels', 'Anaheim', 'AL West');
Insert into Team (team_name, home_city, division_name) Values ('Mariners', 'Seattle', 'AL West');
Insert into Team (team_name, home_city, division_name) Values ('Rangers', 'Dallas-Fort Worth', 'AL West');
Insert into Team (team_name, home_city, division_name) Values ('Royals', 'Kansas City', 'AL Central');
Insert into Team (team_name, home_city, division_name) Values ('White Sox', 'Chicago', 'AL Central');
Insert into Team (team_name, home_city, division_name) Values ('Indians', 'Cleveland', 'AL Central');
Insert into Team (team_name, home_city, division_name) Values ('Twins', 'Minneapolis', 'AL Central');
Insert into Team (team_name, home_city, division_name) Values ('Tigers', 'Detroit', 'AL Central');
Insert into Team (team_name, home_city, division_name) Values ('Red Sox', 'Boston', 'AL East');
Insert into Team (team_name, home_city, division_name) Values ('Rays', 'Tampa Bay', 'AL East');
Insert into Team (team_name, home_city, division_name) Values ('Blue Jays', 'Toronto', 'AL East');
Insert into Team (team_name, home_city, division_name) Values ('Yankees', 'New York City', 'AL East');
Insert into Team (team_name, home_city, division_name) Values ('Orioles', 'Baltimore', 'AL East');
Select * From Team
Order by Division_Name;

Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Dodger Stadium', 'Dodgers', '1000 Vin Scully Ave, Los Angeles, CA 90012', 56000);
Update Stadium Set address='1000 Vin Scully Ave' Where team_name='Dodgers';
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Oracle Park', 'Giants', '	24 Willie Mays Plaza', 41265);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Petco Park', 'Padres', '19 Tony Gwynn Drive', 40209);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Chase Field', 'Diamondbacks', '401 East Jefferson Street', 48686);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Coor Field', 'Rockies', '2001 Blake Street',50144  );
Update Stadium Set stadium_name='Coors Field' Where team_name='Rockies';
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('American Family Field', 'Brewers', '1 Brewers Way',41900);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('PNC Park', 'Pirates', '115 Federal Street',37898);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Busch Stadium', 'Cardinals', '700 Clark Ave',	45494);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Great American Ballpark', 'Reds', '100 Joe Nuxhall Way',42319);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Wrigley Field', 'Cubs', '	1060 West Addison Street',41649);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Truist Park', 'Braves', '755 Battery Avenue SE',41084);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Citizens Bank Park', 'Phillies', 'One Citizens Bank Way',42792);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Citi Field', 'Mets', '41 Seaver Wayy',41922);
Update Stadium set address='41 Seaver Way' Where team_name='Mets';
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('LoanDepot Park', 'Marlins', '501 Marlins Way',36742);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Nationals Park', 'Nationals', '501 Marlins Way',36742);
Update Stadium Set address='1500 South Capitol Street SE', capacity=41339 Where stadium_name='Nationals Park';
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('RingCentral Coliseum', 'Athletics', '7000 Coliseum Way',46847);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Minute Maid Park', 'Astros', '501 Crawford Street',41168);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Angel Stadium', 'Angels', '2000 Gene Autry Way',43250);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('T-Mobile Park', 'Mariners', '1250 First Avenue South',47929);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Globe Life Field', 'Mariners', '734 Stadium Dr.',40300);
Update Stadium Set team_name='Rangers' Where stadium_name='Globe Life Field';
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Kaufman Stadium', 'Royals', '1 Royal Way',37903);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Guaranteed Rate Field', 'White Sox', '333 West 35th Street',40615);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Progressive Field', 'Indians', '2401 Ontario Street',35041);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Target Field', 'Twins', '1 Twins Way',39504);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Comerica Park', 'Tigers', '2100 Woodward Avenue',40120);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Fenway Park', 'Red Sox', '4 Jersey Street',37305);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Tropicana Field', 'Rays', 'One Tropicana Drive',45369);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Rogers Centre', 'Blue Jays', '1 Blue Jays Way',49282);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Yankee Stadium', 'Yankees', '1 East 161st Street',47309);
Insert into Stadium (Stadium_name, team_name, address, capacity) Values ('Camden Yards', 'Orioles', '333 West Camden Street',48876);

Insert into team_owner Values (seqownID.nextVal, 'Guggenheim', Null, 'Dodgers');
Update team_owner Set owner_id=1;
Insert into team_owner Values (seqownID.nextVal, 'San Francisco Baseball', Null, 'Giants');
Insert into team_owner Values (seqownID.nextVal, 'Peter', 'Seidler', 'Padres');
Insert into team_owner Values (seqownID.nextVal, 'Ken', 'Kendrick', 'Diamondbacks');
Insert into team_owner Values (seqownID.nextVal, 'Richard', 'Monfort', 'Rockies');
Delete From team_owner Where owner_id=5;
Insert into team_owner Values (seqownID.nextVal, 'Mark', 'Attanasio', 'Brewers');
Insert into team_owner Values (seqownID.nextVal, 'Robert', 'Nutting', 'Pirates');
Insert into team_owner Values (seqownID.nextVal, 'Bill', 'Dewlat Jr.', 'Cardinals');
Insert into team_owner Values (seqownID.nextVal, 'Bob', 'Castellini', 'Reds');
Insert into team_owner Values (seqownID.nextVal, 'Rickets Family', NULL, 'Cubs');
Insert into team_owner Values (seqownID.nextVal, 'Liberty Media', NULL, 'Braves');
Insert into team_owner Values (seqownID.nextVal, 'Phillies Limited Partnership', Null, 'Phillies');
Insert into team_owner Values (seqownID.nextVal, 'Steve', 'Cohen', 'Mets');
Insert into team_owner Values (seqownID.nextVal, 'Bruce', 'Sherman', 'Marlins');
Insert into team_owner Values (seqownID.nextVal, 'Mark', 'Lerner', 'Nationals');
Insert into team_owner Values (seqownID.nextVal, 'John', 'Fisher', 'Athletics');
Insert into team_owner Values (seqownID.nextVal, 'Jim', 'Crane', 'Astros');
Insert into team_owner Values (seqownID.nextVal, 'Arte', 'Moreno', 'Angels');
Insert into team_owner Values (seqownID.nextVal, 'Baseball Club of Seattle', Null, 'Mariners');
Insert into team_owner Values (seqownID.nextVal, 'Rangers Baseball Express', Null, 'Rangers');
Insert into team_owner Values (seqownID.nextVal, 'John', 'Sherman', 'Royals');
Insert into team_owner Values (seqownID.nextVal, 'John', 'Reinsdorf', 'White Sox');
Insert into team_owner Values (seqownID.nextVal, 'Larry', 'Dolan', 'Indians');
Insert into team_owner Values (seqownID.nextVal, 'Jim', 'Pohlad', 'Twins');
Insert into team_owner Values (seqownID.nextVal, 'Illitch Holdings', Null, 'Tigers');
Insert into team_owner Values (seqownID.nextVal, 'Fenway Sports Group', Null, 'Red Sox');
Insert into team_owner Values (seqownID.nextVal, 'Stuart', 'Sternberg', 'Rays');
Delete From team_owner Where owner_id=27 Or owner_id=28;
Insert into team_owner Values (seqownID.nextVal, 'Rogers', 'Communications', 'Blue Jays');
Update team_owner Set owner_fname='Rogers Communications', owner_lname=Null Where team_name='Blue Jays';
Insert into team_owner Values (seqownID.nextVal, 'Yankee Global Enterprises', Null, 'Yankees');
Insert into team_owner Values (seqownID.nextVal, 'Rogers', 'Communications', 'Blue Jays');
Update team_owner set owner_fname='Peter',owner_lname='Angelos' Where owner_id=35;

Update league_employee set team_name='Dodgers', mgrid=1 Where empid Between 1 And 40;
Update league_employee set team_name='Giants', mgrid=2 Where empid Between 41 And 80;
Update league_employee set team_name='Padres', mgrid=3 Where empid Between 81 And 120;
Update league_employee set team_name='Diamondbacks', mgrid=4 Where empid Between 121 And 160;
Update league_employee set team_name='Diamondbacks', mgrid=4 Where empid Between 121 And 159;
Update league_employee set team_name='Rockies', mgrid=5 Where empid Between 160 And 200;
Update league_employee set team_name='Brewers', mgrid=6 Where empid Between 201 And 240;
Update league_employee set team_name='Pirates', mgrid=7 Where empid Between 241 And 280;
Update league_employee set team_name='Cardinals', mgrid=8 Where empid Between 281 And 320;
Update league_employee set team_name='Reds', mgrid=9 Where empid Between 321 And 360;
Update league_employee set team_name='Cubs', mgrid=10 Where empid Between 361 And 401;
Update league_employee set team_name='Braves', mgrid=12 Where empid Between 442 And 482;
Update league_employee set team_name='Phillies', mgrid=11 Where empid Between 402 And 441;
Update league_employee set team_name='Mets', mgrid=13 Where empid Between 483 And 522;
Update league_employee set team_name='Marlins', mgrid=14 Where empid Between 523 And 562;
Update league_employee set team_name='Nationals', mgrid=15 Where empid Between 563 And 603;
Update league_employee set team_name='Athletics', mgrid=16 Where empid Between 604 And 642;
Update league_employee set team_name='Astros', mgrid=17 Where empid Between 643 And 681;
Update league_employee set team_name='Angels', mgrid=18 Where empid Between 682 AND 722;
Update league_employee set team_name='Mariners', mgrid=19 Where empid Between 723 AND 762;
Update league_employee set team_name='Rangers', mgrid=20 Where empid Between 763 AND 802;
Update league_employee set team_name='Royals', mgrid=21 Where empid Between 803 AND 842;
Update league_employee set team_name='White Sox', mgrid=22 Where empid Between 843 AND 882;
Update league_employee set team_name='Indians', mgrid=23 Where empid Between 883 AND 921;
Update league_employee set team_name='Twins', mgrid=24 Where empid Between 922 AND 963;
Update league_employee set team_name='Tigers', mgrid=25 Where empid Between 964 AND 1003;
Update league_employee set team_name='Red Sox', mgrid=26 Where empid Between 1004 AND 1043;
Update league_employee set team_name='Rays', mgrid=27 Where empid Between 1044 AND 1083;
Update league_employee set team_name='Blue Jays', mgrid=28 Where empid Between 1084 AND 1124;
Update league_employee set team_name='Yankees', mgrid=29 Where empid Between 1125 AND 1163;
Update league_employee set team_name='Orioles', mgrid=30 Where empid Between 1164 AND 1203;

Insert Into league_employee Values (1204, 'Dodgers', 'Dave Roberts', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1205, 'Giants', 'Gabe Kapler', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1206, 'Padres', 'Jayce Tingler', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1207, 'Diamondbacks', 'Torey Lovullo', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1208, 'Rockies', 'Bud Black', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1209, 'Brewers', 'Craig Counsell', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1210, 'Pirates', 'Derek Shelton', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1211, 'Cardinals', 'Mike Shildt', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1212, 'Reds', 'David Bell', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1213, 'Cubs', 'David Ross', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1214, 'Braves', 'Brian Snitker', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1215, 'Phillies', 'Joe Girardi', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1216, 'Mets', 'Luis Rojas', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1217, 'Marlins', 'Don Mattingly', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1218, 'Nationals', 'Dave Martinez', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1219, 'Athletics', 'Bob Melvin', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1220, 'Astros', 'Dusty Baker', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1221, 'Angels', 'Joe Maddon', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1222, 'Mariners', 'Scott Servais', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1223, 'Rangers', 'Chris Woodward', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1224, 'Royals', 'Mike Matheny', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1225, 'White Sox', 'Tony LaRussa', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1226, 'Indians', 'Terry Francona', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1227, 'Twins', 'Rocco Baldelli', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1228, 'Tigers', 'A.J. Hinch', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1229, 'Red Sox', 'Alex Cora', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1230, 'Rays', 'Kevin Cash', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1231, 'Blue Jays', 'Charlie Montoyo', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1232, 'Yankees', 'Aaron Boone', Null, 'Manager', Null,Null);
Insert Into league_employee Values (1233, 'Orioles', 'Brandon Hyde', Null, 'Manager', Null,Null);

Update league_employee Set mgrid=mgrid+1203;


Update contract Set no_years=round(dbms_random.value(1,12));
Update contract Set worth=round(dbms_random.value(500000,365000000));

Select * From contract order by empid;









