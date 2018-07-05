package com.gbh.library.util;

import com.gbh.library.domain.Page;
import com.gbh.library.annotation.*;

@Component("PageFormatHTML")
public class PageFormatHTML implements PageFormatter {

    @Override
    public String format(Page page) {
        return String.format(ApplicationProperties.getPageHtml(),
                page.getBook().getTittle(),
                page.getBook().getAuthor(),
                page.getNumber(),
                page.getContent());
    }
}
