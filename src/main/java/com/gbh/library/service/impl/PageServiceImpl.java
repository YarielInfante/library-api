package com.gbh.library.service.impl;

import com.gbh.library.dao.IPageDao;
import com.gbh.library.domain.Page;
import com.gbh.library.service.IPageService;

import java.util.List;

import com.gbh.library.annotation.*;
import com.gbh.library.util.PageFormatter;


@Component
public class PageServiceImpl implements IPageService {


    @Autowired("PageFormatHTML")
    public PageFormatter pageFormatterHTML;

    @Autowired("PageFormatTEXT")
    public PageFormatter pageFormatterTEXT;

    @Autowired
    public IPageDao pageDao;

    public PageServiceImpl() {
    }

    @Override
    public Page findByBookAndPage(Integer bookId, Integer pageId) {

        return pageDao.findByBookAndPage(bookId, pageId);

    }


    @Override
    public List<Page> findAllByBookId(Integer bookId) {
        return pageDao.findAllByBookId(bookId);
    }


    public String formatPageHTML(Page page) {

        return pageFormatterHTML.format(page);
    }

    public String formatPageTEXT(Page page) {

        return pageFormatterTEXT.format(page);
    }
}
