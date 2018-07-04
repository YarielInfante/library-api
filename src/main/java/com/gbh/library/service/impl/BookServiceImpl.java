package com.gbh.library.service.impl;

import com.gbh.library.dao.IBookDao;
import com.gbh.library.dao.IBookDaoImpl;
import com.gbh.library.domain.Book;
import com.gbh.library.service.IBookService;

import java.util.List;

public class BookServiceImpl implements IBookService {

    @Override
    public List<Book> findAll() {
        IBookDao iBookDao = new IBookDaoImpl();

        return iBookDao.findAll();
    }
}
