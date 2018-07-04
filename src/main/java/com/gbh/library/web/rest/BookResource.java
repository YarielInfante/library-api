package com.gbh.library.web.rest;

import com.gbh.library.domain.Book;
import com.gbh.library.service.IBookService;
import com.gbh.library.service.impl.BookServiceImpl;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Path("/books")
public class BookResource {


    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Book> findBooks() {

        IBookService iBookService = new BookServiceImpl();

        List<Book> books = iBookService.findAll();

        if (books != null && books.size() == 0) {
            return Collections.emptyList();
        }

        return books;
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response findBookById(@PathParam("id") int id) {

        IBookService iBookService = new BookServiceImpl();

        Book book = iBookService.findBookById(id);

        return Response.ok(book).build();

    }
}
