package com.example.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.util.List;

@Repository
public class BoardDAO {
    @Autowired
    SqlSession sqlSession;
    //JdbcTemplate jdbcTemplate;

//    private final String BOARD_INSERT = "insert into BOARD (category, title, writer, content) values (?,?,?,?)";
//    private final String BOARD_UPDATE = "update BOARD set category=?, title=?, writer=?, content=? where seq=?";
//    private final String BOARD_DELETE = "delete from BOARD  where seq=?";
//    private final String BOARD_GET = "select * from BOARD  where seq=?";
//    private final String BOARD_LIST = "select * from BOARD order by seq desc";

    public int insertBoard(BoardVO vo) {
        int result = sqlSession.insert("Board.insertBoard", vo);
        return result;
    }

    public int deleteBoard(int seq) {
        int result = sqlSession.insert("Board.deleteBoard", seq);
        return result;
    }

    public int updateBoard(BoardVO vo) {
        int result = sqlSession.insert("Board.updateBoard", vo);
        return result;
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