package com.gbh.library.web.rest;

import com.gbh.library.domain.Book;
import com.gbh.library.service.IBookService;
import com.gbh.library.service.impl.BookServiceImpl;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Path("/books")
public class BookResource {


    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Book> getBooks() {

        IBookService iBookService = new BookServiceImpl();

        return iBookService.findAll();
    }
}
