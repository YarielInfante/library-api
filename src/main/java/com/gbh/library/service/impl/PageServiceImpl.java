package com.gbh.library.service.impl;

import com.gbh.library.dao.IPageDao;
import com.gbh.library.domain.Page;
import com.gbh.library.domain.PageDTO;
import com.gbh.library.service.IPageService;

import java.util.List;

import com.gbh.library.annotation.*;
import com.gbh.library.util.formatter.PageFormatFactory;
import com.gbh.library.util.formatter.PageFormatter;

import javax.ws.rs.core.MediaType;


@Component
public class PageServiceImpl implements IPageService {


    @Autowired
    private PageFormatFactory pageFormatFactory;

    @Autowired
    private IPageDao pageDao;

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

    @Override
    public PageDTO formatPage(Page page, String formatType) {
        PageFormatter pageFormatter = pageFormatFactory.getPageFormatter(formatType);

        Object format =  pageFormatter.format(page);
        MediaType mediaType = pageFormatter.getMediaType();

        return new PageDTO(format, mediaType);
    }

}
