package com.gbh.library.util;

public final class Query {
	
	public final static String SELECT_ALL_BOOK = "SELECT ID, AUTHOR, TITLE, PAGES, COVER_URL FROM BOOK";
	public final static String SELECT_ALL_BOOK_BY_ID = "SELECT ID, AUTHOR, TITLE, PAGES, COVER_URL FROM BOOK WHERE ID = ?";
	
	public final static String SELECT_PAGES_BY_BOOK_ID = "SELECT ID, NUMBER, CONTENT, BOOK_ID FROM PAGE WHERE BOOK_ID = ?";
	public final static String SELECT_PAGES_BY_ID = "SELECT ID, NUMBER, CONTENT, BOOK_ID FROM PAGE WHERE ID = ? AND BOOK_ID = ?";

}
