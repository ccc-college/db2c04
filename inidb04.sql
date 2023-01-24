DROP DATABASE IF EXISTS study;
CREATE DATABASE study DEFAULT CHARACTER SET utf8mb4;
use study;

/*  サーバールームへの入退室管理テーブル  accroom
 rdate: 入室した日付
 exitroom:  NULL:入室中、1:退室済み
 staffname:  社員名
 reason:  入室理由区分  1:メンテナンス、2:リリース作業、3:障害対応、9:その他
*/
DROP TABLE IF EXISTS accroom;
CREATE TABLE accroom (  rdate DATE, exitroom CHAR(1), staffname VARCHAR(20), reason CHAR(1)  );
INSERT INTO accroom ( rdate,exitroom,staffname,reason ) VALUES ( '2021-05-21',1,'山川',1 );
INSERT INTO accroom ( rdate,exitroom,staffname,reason ) VALUES ( '2021-05-21',1,'田中',3 );
INSERT INTO accroom ( rdate,exitroom,staffname,reason ) VALUES ( '2021-05-22',1,'大木',2 );
INSERT INTO accroom ( rdate,exitroom,staffname,reason ) VALUES ( '2021-05-22',1,'田中',2 );
INSERT INTO accroom ( rdate,exitroom,staffname,reason ) VALUES ( '2021-05-22',1,'田中',3 );
INSERT INTO accroom ( rdate,exitroom,staffname,reason ) VALUES ( '2021-05-25',1,'山川',3 );
INSERT INTO accroom ( rdate,exitroom,staffname,reason ) VALUES ( '2021-05-25',1,'大木',3 );
INSERT INTO accroom ( rdate,exitroom,staffname,reason ) VALUES ( '2021-05-25',1,'野村',3 );
INSERT INTO accroom ( rdate,exitroom,staffname,reason ) VALUES ( '2021-05-25',1,'田中',3 );
INSERT INTO accroom ( rdate,exitroom,staffname,reason ) VALUES ( '2021-05-26',1,'山川',1 );
INSERT INTO accroom ( rdate,exitroom,staffname,reason ) VALUES ( '2021-05-26',1,'大木',2 );
INSERT INTO accroom ( rdate,exitroom,staffname,reason ) VALUES ( '2021-05-26',1,'野村',3 );
INSERT INTO accroom ( rdate,exitroom,staffname,reason ) VALUES ( '2021-05-27',1,'田中',3 );
INSERT INTO accroom ( rdate,exitroom,staffname,reason ) VALUES ( '2021-05-28',NULL,'大木',2 );
INSERT INTO accroom ( rdate,exitroom,staffname,reason ) VALUES ( '2021-05-28',NULL,'野村',3 );
INSERT INTO accroom ( rdate,exitroom,staffname,reason ) VALUES ( '2021-05-28',NULL,'田中',3 );

CREATE TABLE reasontbl (  rsnid CHAR(1), rsnname VARCHAR(20) );
INSERT INTO reasontbl ( rsnid,rsnname ) VALUES ( '1','メンテナンス' );
INSERT INTO reasontbl ( rsnid,rsnname ) VALUES ( '2','リリース作業' );
INSERT INTO reasontbl ( rsnid,rsnname ) VALUES ( '3','障害対応' );
INSERT INTO reasontbl ( rsnid,rsnname ) VALUES ( '9','その他' );
 
/*  社員マスターテーブル member */
DROP TABLE IF EXISTS member;
CREATE TABLE member(name VARCHAR(64), gender VARCHAR(64), address VARCHAR(64));
INSERT INTO member VALUES('Ohta', 'male', 'Tokyo');
INSERT INTO member VALUES('Honda', 'female', 'Saitama');
INSERT INTO member VALUES('Nagai', 'male', 'Tokyo');
INSERT INTO member VALUES('Ohki', 'male', 'Saitama');
INSERT INTO member VALUES('Yamada', 'male', 'Chiba');
INSERT INTO member VALUES('Tanaka', 'male', 'Tokyo');
INSERT INTO member VALUES('Tanaka', 'female', 'Chiba');
INSERT INTO member VALUES('Kawai', 'female', 'Tokyo');
INSERT INTO member VALUES('Ogawa', 'female', 'Tokyo');
INSERT INTO member VALUES('Todoroki', 'male', 'Kanagawa');
INSERT INTO member VALUES('Hayakawa', 'male', 'Kanagawa');
INSERT INTO member VALUES('Kaneda', 'male', 'Saitama');
INSERT INTO member VALUES('Kosaka', 'male', 'Saitama');
INSERT INTO member VALUES('Yamada', 'female', 'Saitama');
INSERT INTO member VALUES('Sasaki', 'female', 'Tokyo');
INSERT INTO member VALUES('Kobayashi', 'male', 'Chiba');
INSERT INTO member VALUES('Hashimoto', 'male', 'Tokyo');
