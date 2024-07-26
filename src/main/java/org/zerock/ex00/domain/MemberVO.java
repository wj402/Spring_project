package org.zerock.ex00.domain;

import lombok.Data;

/*
create table tbl_member (
        uid varchar(50) not null primary key,
        upw varchar(100) not null,
        uname varchar(100) not null,
        email varchar(100) not null,
        regDate timestamp default now(),
        updateDate timestamp default  now()
);
 */

@Data
public class MemberVO {

    private String uid;

    private String upw;

    private String uname;

    private String email;

    private java.util.List<MemberAuthVO> authVOList;
}
