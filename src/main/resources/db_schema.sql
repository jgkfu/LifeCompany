/***********************************************
* 說明：使用sql server時的註解可使用減號「-」
***********************************************/
CREATE schema lifecompany;
CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='myTest'
