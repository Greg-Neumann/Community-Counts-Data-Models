CREATE TABLE `1clientcaseservice` (
  `idClientCaseDetail` int(11) NOT NULL AUTO_INCREMENT,
  `idClientCaseHeader` int(11) NOT NULL,
  `ServiceTypesid` int(11) NOT NULL,
  `isCaseWorked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idClientCaseDetail`),
  KEY `fk_1ClientCaseDetail_1ClientCaseHeader1_idx` (`idClientCaseHeader`),
  KEY `fk_1ClientCaseDetail_ServiceTypes1_idx` (`ServiceTypesid`),
  CONSTRAINT `fk_1ClientCaseDetail_1ClientCaseHeader1` FOREIGN KEY (`idClientCaseHeader`) REFERENCES `1clientcaseheader` (`idClientCaseHeader`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_1ClientCaseDetail_1ServiceTypes1` FOREIGN KEY (`ServiceTypesid`) REFERENCES `1servicetypes` (`idServiceType`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
