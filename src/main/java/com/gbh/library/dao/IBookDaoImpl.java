package com.gbh.library.dao;

import com.gbh.library.config.database.DataSource;
import com.gbh.library.domain.Book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Book data access object.
 */
public class IBookDaoImpl implements IBookDao {

    private Connection connection;

    public IBookDaoImpl() {
        try {
            connection = DataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Book> findAll() {
        String SQL_QUERY = "SELECT ID, AUTHOR, TITLE, PAGES, COVER_URL FROM BOOK";
        List<Book> books = null;
        try (
            PreparedStatement pst = connection.prepareStatement(SQL_QUERY);
            ResultSet resultSet = pst.executeQuery();) {
            books = new ArrayList<>();
            Book book;
            while (resultSet.next()) {
                book = new Book();
                book.setId(resultSet.getInt("ID"));
                book.setAuthor(resultSet.getString("AUTHOR"));
                book.setTitle(resultSet.getString("TITLE"));
                book.setPages(resultSet.getInt("PAGES"));
                book.setCoverUrl(resultSet.getString("COVER_URL"));
                books.add(book);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return books;

    }
}
