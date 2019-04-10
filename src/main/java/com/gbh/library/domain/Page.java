package com.gbh.library.domain;

import java.io.Serializable;

/**
 * Page Entity
 */
public class Page implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int id;
	private int number;
	private String content;
	private int bookId;

	private Book book;

	public Page() {
	
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getBookId() {
		return bookId;
	}
	
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	/**
	 * @return the book
	 */
	public Book getBook() {
		return book;
	}

	/**
	 * @param book the book to set
	 */
	public void setBook(Book book) {
		this.book = book;
	}

	@Override
	public String toString() {
		return "Page [id=" + id + ", number=" + number + ", content=" + content
				+ ", bookId=" + bookId + ", book=" + book + "]";
	}
}
