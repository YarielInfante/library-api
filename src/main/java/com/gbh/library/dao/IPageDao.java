package com.gbh.library.dao;

import com.gbh.library.domain.Page;

import java.util.List;

public interface IPageDao {
    public Page findByBookAndPage(Integer bookId, Integer pageId);

    List<Page> findAllByBookId(Integer bookId);
}
