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
-- DROP TABLE `clipper`.`student_test1`;

--changeset mgururaja:2 runOnChange:true stripComments:true
--preconditions onFail:HALT onError:HALT
--precondition-sql-check expectedResult:0 SELECT count(1) FROM information_schema.tables WHERE table_schema = 'STUDENT_TEST2';
CREATE TABLE `STUDENT_TEST2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
--rollBack DROP TABLE `clipper`.`student_test2`