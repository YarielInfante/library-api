package com.gbh.library.service;

import com.gbh.library.domain.Book;

import java.util.List;

public interface IBookService {

    List<Book> findAll();

    Book findBookById(int id);

}
