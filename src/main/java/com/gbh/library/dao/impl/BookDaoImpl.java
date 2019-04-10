package com.gbh.library.dao.impl;

import com.gbh.library.annotation.Component;
import com.gbh.library.config.database.DataSource;
import com.gbh.library.dao.IBookDao;
import com.gbh.library.domain.Book;
import com.gbh.library.util.Query;
import com.gbh.library.util.RowMapper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Book data access object.
 */
@Component
public class BookDaoImpl implements IBookDao {

    private Connection connection;

    public BookDaoImpl() {
        try {
            connection = DataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Book> findAll() {
        List<Book> books = null;
        try (PreparedStatement pst = connection.prepareStatement(Query.SELECT_ALL_BOOK);
             ResultSet resultSet = pst.executeQuery();) {
            books = new ArrayList<>();
            while (resultSet.next()) {
                books.add(RowMapper.bookMapper(resultSet.getInt("ID"),
                    resultSet.getString("AUTHOR"),
                    resultSet.getString("TITLE"),
                    resultSet.getInt("PAGES"),
                    resultSet.getString("COVER_URL")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return books;
    }

    @Override
    public Book findBookById(Integer id) {
        try (PreparedStatement pst = connection.prepareStatement(Query.SELECT_ALL_BOOK_BY_ID)) {
            pst.setInt(1, id);
            ResultSet resultSet = pst.executeQuery();
            if (resultSet.next()) {
                return RowMapper.bookMapper(resultSet.getInt("ID"),
                    resultSet.getString("AUTHOR"),
                    resultSet.getString("TITLE"),
                    resultSet.getInt("PAGES"),
                    resultSet.getString("COVER_URL"));
            }
            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


}
