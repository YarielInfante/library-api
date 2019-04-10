package com.gbh.library.domain;

import javax.ws.rs.core.MediaType;

public class PageDTO {

    private Object content;
    private MediaType mediaType;

    public PageDTO() {
    }

    public PageDTO(Object content, MediaType mediaType) {
        this.content = content;
        this.mediaType = mediaType;
    }

    public Object getContent() {
        return content;
    }

    public void setContent(Object content) {
        this.content = content;
    }

    public MediaType getMediaType() {
        return mediaType;
    }

    public void setMediaType(MediaType mediaType) {
        this.mediaType = mediaType;
    }
}
