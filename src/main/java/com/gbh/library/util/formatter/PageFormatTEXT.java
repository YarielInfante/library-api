package com.gbh.library.util.formatter;

import com.gbh.library.domain.Page;
import com.gbh.library.annotation.*;
import com.gbh.library.util.ApplicationProperties;

import javax.ws.rs.core.MediaType;

@Component("PageFormatTEXT")
public class PageFormatTEXT implements PageFormatter<String> {

    @Override
    public String format(Page page) {
        return String.format(ApplicationProperties.getPageText(),
                page.getBook().getTittle(), page.getBook().getAuthor(), page.getNumber(), page.getContent());
    }

    @Override
    public MediaType getMediaType() {
        return MediaType.TEXT_PLAIN_TYPE;
    }
}
