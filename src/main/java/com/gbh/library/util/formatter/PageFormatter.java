package com.gbh.library.util.formatter;

import com.gbh.library.domain.Page;

import javax.ws.rs.core.MediaType;

public interface PageFormatter<E> {

    E format(Page page);

    MediaType getMediaType();


}
