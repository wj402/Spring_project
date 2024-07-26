package org.zerock.ex00.mappers;

import org.zerock.ex00.domain.MemberAuthVO;
import org.zerock.ex00.domain.MemberVO;

public interface MemberMapper {

    void insert(MemberVO membervo);

    void insertAuth(MemberAuthVO authVO);
}
