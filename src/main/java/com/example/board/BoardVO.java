package com.example.board;

import java.util.Date;

public class BoardVO {
    public BoardVO() {}
    private int seq;
    private String type;
    private String title;
    private String writer;
    private String price;
    private String place;
    private String number;
    private String content;
    private String photo;
    private Date regdate;
    private int cnt;

    public int getSeq() {
        return seq;
    }
    public void setSeq(int seq) {
        this.seq = seq;
    }
    public String getType() { return type; }
    public void setType(String category) { this.type = category; }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getWriter() {
        return writer;
    }
    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getPrice() {
        return price;
    }

    public String getPlace() {
        return place;
    }

    public String getNumber() {
        return number;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
    public String getPhoto() {
        return photo;
    }
    public void setPhoto(String photo) {
        this.photo = photo;
    }
    public Date getRegdate() {
        return regdate;
    }
    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }
    public int getCnt() {
        return cnt;
    }
    public void setCnt(int cnt) {
        this.cnt = cnt;
    }
}