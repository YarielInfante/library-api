package com.gbh.library.domain;

/**
 * Book entity
 */
public class Book {

    private int id;
    private String author;
    private String title;
    private int pages;
    private String coverUrl;

    public Book() {
    }

    public Book(int id, String author, String title, int pages, String coverUrl) {
        this.id = id;
        this.author = author;
        this.title = title;
        this.pages = pages;
        this.coverUrl = coverUrl;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getTittle() {
        return title;
    }

    public void setTitle(String tittle) {
        this.title = tittle;
    }

    public int getPages() {
        return pages;
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

    public String getCoverUrl() {
        return coverUrl;
    }

    public void setCoverUrl(String coverUrl) {
        this.coverUrl = coverUrl;
    }

    @Override
    public String toString() {
        return "Book{" +
            "id=" + id +
            ", author='" + author + '\'' +
            ", title='" + title + '\'' +
            ", pages=" + pages +
            ", coverUrl='" + coverUrl + '\'' +
            '}';
    }
}
