package com.yuxin.mapper;

import com.yuxin.domain.QuestionDo;
import com.yuxin.domain.QuestionDoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface QuestionDoMapper {
    int countByExample(QuestionDoExample example);

    int deleteByExample(QuestionDoExample example);

    int deleteByPrimaryKey(Long id);

    int insert(QuestionDo record);

    int insertSelective(QuestionDo record);

    List<QuestionDo> selectByExample(QuestionDoExample example);

    QuestionDo selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") QuestionDo record, @Param("example") QuestionDoExample example);

    int updateByExample(@Param("record") QuestionDo record, @Param("example") QuestionDoExample example);

    int updateByPrimaryKeySelective(QuestionDo record);

    int updateByPrimaryKey(QuestionDo record);
}