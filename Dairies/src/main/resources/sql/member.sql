CREATE TABLE member (
  member_idx INT(11) NOT NULL AUTO_INCREMENT COMMENT '회원 번호',
  id VARCHAR(20) NOT NULL COMMENT '아이디',
  pw VARCHAR(20) NOT NULL COMMENT '비밀번호',
  tel VARCHAR(12) COMMENT '연락처',
  email VARCHAR(50) COMMENT '이메일',
  email2 VARCHAR(50) COMMENT '이메일',
  zipNo CHAR(5) COMMENT '우편번호',
  roadAddrPart1 VARCHAR(50) COMMENT '도로명주소',
  roadAddrPart2 VARCHAR(50) COMMENT '상세주소',
  hit_cnt SMALLINT(10) NOT NULL DEFAULT '0' COMMENT '조회수',
  created_datetime DATETIME NOT NULL COMMENT '생성시간',
  creator_id VARCHAR(50) NOT NULL COMMENT '작성자',
  updated_datetime DATETIME DEFAULT NULL COMMENT '수정시간',
  updater_id VARCHAR(50) DEFAULT NULL COMMENT '수정자',
  deleted_yn CHAR(1) NOT NULL DEFAULT 'N' COMMENT '삭제 여부',
  PRIMARY KEY (member_idx)
);