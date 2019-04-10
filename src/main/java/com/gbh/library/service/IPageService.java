package com.gbh.library.service;

import com.gbh.library.domain.Page;
import com.gbh.library.domain.PageDTO;

import java.util.List;

public interface IPageService {
    Page findByBookAndPage(Integer bookId, Integer pageId);

    List<Page> findAllByBookId(Integer bookId);

    PageDTO formatPage(Page page, String formatType);


}
