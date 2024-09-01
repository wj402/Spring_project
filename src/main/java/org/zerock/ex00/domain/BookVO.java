package org.zerock.ex00.domain;

import java.util.Date;

public class BookVO {

    private Long id;
    private String title;
    private String author;
    private String publisher;
    private Date publishDate;
    private String imageUrl;
    private boolean borrowed;
    private String borrowedByUserId;
    private String summary;
    private String buy;


    public BookVO(Long id, String title, String author, String publisher, Date publishDate, String imageUrl, boolean borrowed, String borrowedByUserId, String summary, String buy) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.publisher = publisher;
        this.publishDate = publishDate;
        this.imageUrl = imageUrl;
        this.borrowed = borrowed;
        this.borrowedByUserId = borrowedByUserId;
        this.summary = summary;
        this.buy = buy;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public Date getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(Date publishDate) {
        this.publishDate = publishDate;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public boolean isBorrowed() {
        return borrowed;
    }

    public void setBorrowed(boolean borrowed) {
        this.borrowed = borrowed;
    }

    public String getBorrowedByUserId() {
        return borrowedByUserId;
    }

    public void setBorrowedByUserId(String borrowedByUserId) {
        this.borrowedByUserId = borrowedByUserId;
    }

    public String getSummery() {
        return summary;
    }

    public void setSummery(String summery) {
        this.summary = summery;
    }

    public String getBuy() {
        return buy;
    }

    public void setBuy(String buy) {
        this.buy = buy;
    }
}
