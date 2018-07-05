package com.gbh.library.util;

import com.gbh.library.domain.Book;
import com.gbh.library.domain.Page;

public final class RowMapper {

	public final static Book bookMapper(int id, String author, String title, int pages, String coverUrl) {
		Book book = new Book();
		book.setId(id);
		book.setAuthor(author);
		book.setTitle(title);
		book.setPages(pages);
		book.setCoverUrl(coverUrl);
		return book;
	}

	public final static Page pageMapper(int id, int number, String content, int bookId) {
		Page page = new Page();
		page.setId(id);
		page.setNumber(number);
		page.setContent(content);
		page.setBookId(bookId);
		return page;
	}

}
