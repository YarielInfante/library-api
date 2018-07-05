package com.gbh.library.service;

import com.gbh.library.domain.Page;
import com.gbh.library.util.PageFormatter;

import java.util.List;

public interface IPageService {
    Page findByBookAndPage(Integer bookId, Integer pageId);

    List<Page> findAllByBookId(Integer bookId);

    String formatPageHTML(Page page);

    String formatPageTEXT(Page page);

}
