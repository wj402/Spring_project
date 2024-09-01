package org.zerock.ex00.security;

import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.zerock.ex00.domain.MemberVO;
import org.zerock.ex00.mappers.MemberMapper;

@Log4j2
@Setter
@RequiredArgsConstructor
@Service("myUserDetailsService")
public class CustomUserDetailService implements UserDetailsService {

    private final MemberMapper memberMapper;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        log.info("=====================");
        log.info("username: " + username);
        log.info("memberMapper: " + memberMapper);

        // MemberVO 객체를 데이터베이스에서 조회
        MemberVO memberVO = memberMapper.select(username);

        // 사용자가 없으면 예외를 던짐
        if (memberVO == null) {
            throw new UsernameNotFoundException("User not found with username: " + username);
        }

        // MemberVO 객체를 반환
        return memberVO;
    }


}
