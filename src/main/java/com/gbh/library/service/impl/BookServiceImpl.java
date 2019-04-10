package com.gbh.library.service.impl;

import com.gbh.library.dao.IBookDao;
import com.gbh.library.domain.Book;
import com.gbh.library.service.IBookService;
import com.gbh.library.annotation.*;

import java.util.List;

@Component
public class BookServiceImpl implements IBookService {


    @Autowired
    private IBookDao iBookDao;


    @Override
    public List<Book> findAll() {

        return iBookDao.findAll();
    }

    @Override
    public Book findBookById(int id) {

        return iBookDao.findBookById(id);
    }
}
