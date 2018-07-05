package com.gbh.library.util.formatter;

import com.gbh.library.annotation.Autowired;
import com.gbh.library.annotation.Component;


@Component
public class PageFormatFactory {

    @Autowired("PageFormatHTML")
    private PageFormatter pageFormatterHTML;

    @Autowired("PageFormatTEXT")
    private PageFormatter pageFormatterTEXT;

    public PageFormatter getPageFormatter(String format) throws IllegalArgumentException {

        if (format.equalsIgnoreCase("html")) {
            return pageFormatterHTML;
        } else if (format.equalsIgnoreCase("text")) {
            return pageFormatterTEXT;
        } else {
            throw new IllegalArgumentException("no such format: " + format);
        }

    }
}
