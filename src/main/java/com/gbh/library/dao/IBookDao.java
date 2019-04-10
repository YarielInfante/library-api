package com.gbh.library.dao;

import com.gbh.library.domain.Book;

import java.util.List;


public interface IBookDao {

    List<Book> findAll();

    Book findBookById(Integer id);
}
