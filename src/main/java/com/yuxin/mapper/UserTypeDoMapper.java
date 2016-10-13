package com.yuxin.mapper;

import com.yuxin.domain.UserTypeDo;
import com.yuxin.domain.UserTypeDoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserTypeDoMapper {
    int countByExample(UserTypeDoExample example);

    int deleteByExample(UserTypeDoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(UserTypeDo record);

    int insertSelective(UserTypeDo record);

    List<UserTypeDo> selectByExample(UserTypeDoExample example);

    UserTypeDo selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") UserTypeDo record, @Param("example") UserTypeDoExample example);

    int updateByExample(@Param("record") UserTypeDo record, @Param("example") UserTypeDoExample example);

    int updateByPrimaryKeySelective(UserTypeDo record);

    int updateByPrimaryKey(UserTypeDo record);
}