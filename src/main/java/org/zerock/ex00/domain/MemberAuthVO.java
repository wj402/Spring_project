package org.zerock.ex00.domain;

/*
create table tbl_auth (
        rolename varchar(50) not null,
uid varchar(50) not null
        );

 */

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class MemberAuthVO {

    private String roleName;

    private String uid;

    public MemberAuthVO(String uid, String roleName) {
        this.roleName = roleName;
        this.uid = uid;
    }

}
