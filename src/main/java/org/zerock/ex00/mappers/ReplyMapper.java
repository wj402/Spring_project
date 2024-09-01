package org.zerock.ex00.mappers;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.zerock.ex00.domain.Criteria;
import org.zerock.ex00.domain.ReplyVO;

@Mapper
public interface ReplyMapper {

    Long insert(ReplyVO replyVO);

    ReplyVO selectOne(Long rno);

    int deleteOne(Long rno);

    int updateOne(ReplyVO replyVO);

    java.util.List<ReplyVO> getList(@Param("cri")Criteria cri,
                                    @Param("bno")Long bno);

    int getTotal(@Param("cri")Criteria cri,
                 @Param("bno")Long bno);

}
