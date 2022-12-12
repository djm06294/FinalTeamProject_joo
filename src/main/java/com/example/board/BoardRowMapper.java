package com.example.board;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BoardRowMapper implements RowMapper<BoardVO> {
    @Override
    public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        BoardVO vo = new BoardVO();
        vo.setSeq(rs.getInt("seq"));
        vo.setTitle(rs.getString("title"));
        vo.setPrice(rs.getInt("price"));
        vo.setContent(rs.getString("content"));
        vo.setPlace(rs.getString("place"));
        vo.setNumber(rs.getString("number"));
        vo.setCategory(rs.getString("category"));
        vo.setRegdate(rs.getDate("regdate"));
        return vo;
    }
}
