-- liquibase formatted sql

--changeset mgururaja:1 runOnChange:true stripComments:true
--preconditions onFail:HALT onError:HALT
--precondition-sql-check expectedResult:0 SELECT count(*) FROM information_schema.tables WHERE table_schema = 'STUDENT_TEST1';
CREATE TABLE `STUDENT_TEST1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
--rollback DROP TABLE `ecare`.`student_test1`;

--changeset mgururaja:2 runOnChange:true stripComments:true
--preconditions onFail:HALT onError:HALT
--precondition-sql-check expectedResult:0 SELECT count(*) FROM information_schema.tables WHERE table_schema = 'EMPLOYEE';
CREATE TABLE `EMPLOYEE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT null,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
--rollback DROP TABLE `ecare`.`EMPLOYEE`;

--changeset mgururaja:3 runOnChange:true stripComments:true
--preconditions onFail:HALT onError:HALT
--precondition-sql-check expectedResult:0 SELECT count(*) FROM information_schema.tables WHERE table_schema = 'EMPLOYEE_CONTACT_DETAILS';
CREATE TABLE `EMPLOYEE_CONTACT_DETAILS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `line_1` varchar(128) DEFAULT NULL,
  `line_2` varchar(128) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
--rollback DROP TABLE `ecare`.`EMPLOYEE_CONTACT_DETAILS`;
  
--changeset mgururaja:4 runOnChange:true stripComments:true
--preconditions onFail:HALT onError:HALT
--precondition-sql-check expectedResult:0 SELECT COUNT(1) FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'EMPLOYEE' AND COLUMN_NAME = 'CONTACT_DETAIL_ID';
ALTER TABLE EMPLOYEE ADD contact_detail_id INT NOT NULL DEFAULT 0;
--rollback ALTER TABLE EMPLOYEE DROP COLUMN CONTACT_DETAIL_ID;

--changeset mgururaja:5 runOnChange:true stripComments:true
--preconditions onFail:HALT onError:HALT
--precondition-sql-check expectedResult:0 SELECT count(1) FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE CONSTRAINT_NAME = 'FK_EMP_CONTACT_DETAIL';
ALTER TABLE EMPLOYEE ADD CONSTRAINT FK_EMP_CONTACT_DETAIL FOREIGN KEY (contact_detail_id) REFERENCES EMPLOYEE_CONTACT_DETAILS(id) ON DELETE NO ACTION ON UPDATE NO ACTION;
--rollback ALTER TABLE EMPLOYEE DROP FOREIGN KEY FK_EMP_CONTACT_DETAIL;

--changeset mgururaja:6 runOnChange:true stripComments:true
--preconditions onFail:HALT onError:HALT
--precondition-sql-check expectedResult:0 SELECT COUNT(1) FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'EMPLOYEE_CONTACT_DETAILS' AND COLUMN_NAME = 'PHONE_NUMBER';
ALTER TABLE employee_contact_details ADD phone_number varchar(128) DEFAULT NULL;
--rollback ALTER TABLE EMPLOYEE_CONTACT_DETAILS DROP COLUMN PHONE_NUMBER;
  
  