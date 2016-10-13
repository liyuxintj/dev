package com.yuxin.mapper;

import com.yuxin.domain.ArticleDo;
import com.yuxin.domain.ArticleDoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ArticleDoMapper {
    int countByExample(ArticleDoExample example);

    int deleteByExample(ArticleDoExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ArticleDo record);

    int insertSelective(ArticleDo record);

    List<ArticleDo> selectByExample(ArticleDoExample example);

    ArticleDo selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ArticleDo record, @Param("example") ArticleDoExample example);

    int updateByExample(@Param("record") ArticleDo record, @Param("example") ArticleDoExample example);

    int updateByPrimaryKeySelective(ArticleDo record);

    int updateByPrimaryKey(ArticleDo record);
}