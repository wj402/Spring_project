package org.zerock.ex00.domain;

import lombok.Data;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.time.LocalDateTime;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

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
public class MemberVO implements UserDetails {

    private String uid;

    private String upw;

    private String uname;

    private String email;

    private java.util.List<MemberAuthVO> authVOList;

    private LocalDateTime regDate;
    private LocalDateTime updateDate;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        if(authVOList == null || authVOList.isEmpty()) {
            return null;
        }

        return authVOList.stream()
                .map( authVO -> new SimpleGrantedAuthority(authVO.getRoleName()))
                .collect(Collectors.toList());
    }


    @Override
    public String getPassword() {
        return this.upw;
    }

    @Override
    public String getUsername() {
        return this.uid;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return false;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }


}
