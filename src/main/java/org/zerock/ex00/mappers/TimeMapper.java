package org.zerock.ex00.mappers;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface TimeMapper {

    @Select("select now()")
    String getTime();

    String getTime2();

    @Insert("insert into tbl_sample1 (col) values (#{str})")
    int insert1(String str);

    @Insert("insert into tbl_sample2 (col) values (#{str})")
    int insert2(String str);


}
