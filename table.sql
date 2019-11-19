---Run these commands into phpmyadmin sql interface or import it.   

--Table structure for table company 
CREATE TABLE IF NOT EXISTS 'company' (
  'id' int(11) NOT NULL,
  'name' varchar(256) NOT NULL,
  PRIMARY KEY ('id')
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--Table structure for table company_requirement
CREATE TABLE IF NOT EXISTS 'company_reqt' (
  'id' int(11) NOT NULL AUTO_INCREMENT,
  'cid' int(11),
  'requirements' varchar(256),
  PRIMARY KEY ('id')
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--- Insert the company details ...
insert into company(id, name) values(1, 'A'); 
insert into company(id, name) values(2, 'B'); 
insert into company(id, name) values(3, 'C'); 
insert into company(id, name) values(4, 'D'); 
insert into company(id, name) values(5, 'E'); 
insert into company(id, name) values(6, 'F'); 
insert into company(id, name) values(7, 'G'); 
insert into company(id, name) values(8, 'H'); 
--- Insert company requirements ...one company can have many requirements. 
insert into company_reqt(id, cid, requirements) values (1,1,'house insurance'); 
insert into company_reqt(id, cid, requirements) values (2,1,'any property insurance'); 
insert into company_reqt(id, cid, requirements) values (3,2,'car driver license'); 
insert into company_reqt(id, cid, requirements) values (4,2,'car insurance'); 
insert into company_reqt(id, cid, requirements) values (5,3,'social security number and work permit'); 
insert into company_reqt(id, cid, requirements) values (6,4,'flat or appartment'); 
insert into company_reqt(id, cid, requirements) values (7,5,'driver''s license and a 2 door car or a 3 door car or a 4 door car or a 5 door car.'); 
insert into company_reqt(id, cid, requirements) values (8,6,'scooter or bike'); 
insert into company_reqt(id, cid, requirements) values (9,7,'massage qualification certificate'); 
insert into company_reqt(id, cid, requirements) values (10,8,'storage place'); 
insert into company_reqt(id, cid, requirements) values (11,8,'garage'); 
 