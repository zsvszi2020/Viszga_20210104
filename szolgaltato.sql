DROP TABLE IF EXISTS ugyfel 			;
DROP TABLE IF EXISTS szolgaltato 		;
DROP TABLE IF EXISTS ugyfel_szolgaltato ;

CREATE TABLE ugyfel
(
	id					INTEGER PRIMARY KEY  			,
	nev					VARCHAR(35) NOT NULL 			,
	szuletesi_hely		VARCHAR(35) NOT NULL 			,
	szuletesi_datum		DATE		NOT NULL 			,
	nem					CHAR						
) ;

INSERT INTO ugyfel VALUES(1	,'KISS GYÖRGY'		,'NAGYKANIZSA'	,'1996.10.15','F') ;
INSERT INTO ugyfel VALUES(2	,'KOVÁCS LÁSZLÓ'	,'NAGYKANIZSA'	,'1997.11.25','F') ;
INSERT INTO ugyfel VALUES(3	,'TÁLOSI LILLA'		,'NAGYKANIZSA'	,'1998.12.05','N') ;
INSERT INTO ugyfel VALUES(4	,'VIGH LILLA'		,'PÉCS'			,'1995.05.06','N') ;
INSERT INTO ugyfel VALUES(5	,'HONTI BÉLA'		,'NAGYKANIZSA'	,'1994.05.08','F') ;
INSERT INTO ugyfel VALUES(6	,'BÉKESI LÁSZLÓ'	,'NAGYKANIZSA'	,'1993.06.09','F') ;
INSERT INTO ugyfel VALUES(7	,'BÁRDOSI ANNA'		,'ZALAEGERSZEG'	,'2001.07.10','N') ;
INSERT INTO ugyfel VALUES(8	,'HÓBOR PÉTER'		,'PÉCS'			,'2000.09.12','F') ;
INSERT INTO ugyfel VALUES(9	,'HARDI MIHÁLY'		,'NAGYKANIZSA'	,'1999.12.17','F') ;
INSERT INTO ugyfel VALUES(10,'MIKLÓS ATTILA'	,'NAGYKANIZSA'	,'1998.03.19','F') ;
INSERT INTO ugyfel VALUES(11,'MÁRTON ANITA'		,'BUDAPEST'		,'1986.03.21','N') ;
INSERT INTO ugyfel VALUES(12,'MOLNÁR FERENC'	,'NAGYKANIZSA'	,'1974.02.23','F') ;
INSERT INTO ugyfel VALUES(13,'BIHARI MIHÁLY'	,'NAGYVÁRAD'	,'1979.12.23','F') ;



CREATE TABLE szolgaltato
(
	id					INTEGER	PRIMARY KEY				,
	nev					VARCHAR(30) NOT NULL UNIQUE		,
	email				VARCHAR(30) NOT NULL UNIQUE		,	
	cim					VARCHAR(30)	NOT NULL UNIQUE
) ;

INSERT INTO szolgaltato VALUES(1,'UPC'		,'info@upc.hu'		,'8800 NAGYKANIZSA,FŐ U. 8.'		) ;
INSERT INTO szolgaltato VALUES(2,'TELECOM'	,'info@telecom.hu'	,'8800 NAGYKANIZSA,MAGYAR U. 72.'	) ;
INSERT INTO szolgaltato VALUES(3,'Z-NET'	,'help@znet.hu'		,'8800 NAGYKANIZSA, PETŐFI U. 25.'	) ;
INSERT INTO szolgaltato VALUES(4,'TELENOR'	,'help@telenor'		,'8800 NAGYKANIZSA,FŐ U. 15.'		) ;

CREATE TABLE ugyfel_szolgaltato
(
	ugyfel_id			INTEGER						,
	szolgaltato_id		INTEGER						,
	tipus				VARCHAR(30)					,	
	PRIMARY KEY(ugyfel_id,szolgaltato_id,tipus) 	,
	FOREIGN KEY(ugyfel_id) 			REFERENCES ugyfel(id) ,
	FOREIGN KEY(szolgaltato_id) 	REFERENCES szolgaltato(id)
) ;

INSERT INTO ugyfel_szolgaltato VALUES(1,1,'TV'				) ;
INSERT INTO ugyfel_szolgaltato VALUES(1,1,'INTERNET'		) ;
INSERT INTO ugyfel_szolgaltato VALUES(2,1,'TV'				) ;
INSERT INTO ugyfel_szolgaltato VALUES(2,1,'INTERNET'		) ;
INSERT INTO ugyfel_szolgaltato VALUES(3,1,'MOBIL'			) ;
INSERT INTO ugyfel_szolgaltato VALUES(4,2,'MOBIL'			);
INSERT INTO ugyfel_szolgaltato VALUES(4,2,'INTERNET'		);
INSERT INTO ugyfel_szolgaltato VALUES(5,1,'MOBIL'			);
INSERT INTO ugyfel_szolgaltato VALUES(5,3,'TÁVFELÜGYELET'	);
INSERT INTO ugyfel_szolgaltato VALUES(6,3,'INTERNET'		);
INSERT INTO ugyfel_szolgaltato VALUES(7,4,'MOBIL'			);
INSERT INTO ugyfel_szolgaltato VALUES(8,4,'MOBIL'			);
INSERT INTO ugyfel_szolgaltato VALUES(9,2,'MOBIL'			);
INSERT INTO ugyfel_szolgaltato VALUES(10,2,'TV'				);
INSERT INTO ugyfel_szolgaltato VALUES(10,2,'INTERNET'		);
INSERT INTO ugyfel_szolgaltato VALUES(11,1,'MOBIL'			);