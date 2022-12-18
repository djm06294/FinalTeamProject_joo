package com.example.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

//import java.sql.Connection;
import java.util.List;

@Repository
public class BoardDAO {
    @Autowired
    SqlSession sqlSession;

    public int insertBoard(BoardVO vo) {
        int result = sqlSession.insert("Board.insertBoard", vo);
        return result;
    }

    public int deleteBoard(int seq) {
        int delete = sqlSession.delete("Board.deleteBoard", seq);
        return delete;
    }

    public int updateBoard(BoardVO vo) {
        int update = sqlSession.update("Board.updateBoard", vo);
        return update;
    }

    public BoardVO getBoard(int seq) {
        BoardVO one = sqlSession.selectOne("Board.getBoard", seq);
        return one;
    }

    public List<BoardVO> getBoardList(){
        List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
        return list;
    }
}