package com.gbh.library.dao;

import com.gbh.library.config.database.DataSource;
import com.gbh.library.domain.Page;
import com.gbh.library.util.Query;
import com.gbh.library.util.RowMapper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.gbh.library.annotation.*;

@Component
public class PageDaoImpl implements IPageDao {

    private Connection connection;


    public PageDaoImpl() {
        try {
            connection = DataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    @Override
    public Page findByBookAndPage(Integer bookId, Integer pageId) {
        try (PreparedStatement pst = connection.prepareStatement(Query.SELECT_PAGES_BY_ID)) {
            pst.setInt(1, pageId);
            pst.setInt(2, bookId);
            ResultSet resultSet = pst.executeQuery();
            if (resultSet.next()) {
                return RowMapper.pageMapper(resultSet.getInt("ID"),
                        resultSet.getInt("NUMBER"),
                        resultSet.getString("CONTENT"),
                        resultSet.getInt("BOOK_ID"));
            }
            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    @Override
    public List<Page> findAllByBookId(Integer bookId) {
        List<Page> pages = null;
        try (PreparedStatement pst = connection.prepareStatement(Query.SELECT_PAGES_BY_BOOK_ID);) {
            pst.setInt(1, bookId);
            ResultSet resultSet = pst.executeQuery();

            pages = new ArrayList<>();
            while (resultSet.next()) {
                pages.add(RowMapper.pageMapper(resultSet.getInt("ID"),
                        resultSet.getInt("NUMBER"),
                        resultSet.getString("CONTENT"),
                        resultSet.getInt("BOOK_ID")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pages;
    }
}
