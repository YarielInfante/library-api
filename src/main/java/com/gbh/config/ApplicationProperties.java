package com.gbh.config;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class ApplicationProperties {

    private static String dataSourceUrl;
    private static String dataSourceUser;
    private static String dataSourcePassword;
    private static String serverHttpPort;
    private static String serverHttpPath;

    static {

        Properties prop = new Properties();

        try {

            InputStream input = ApplicationProperties.class.getClassLoader().getResourceAsStream("application.properties");

            prop.load(input);

            // setting application properties

            dataSourceUser = prop.getProperty("dataSource.user");
            dataSourceUrl = prop.getProperty("dataSourceUrl");
            dataSourcePassword = prop.getProperty("dataSource.password");
            serverHttpPath = prop.getProperty("server.http.path");
            serverHttpPort = prop.getProperty("server.http.port");

        } catch (IOException ex) {
            ex.printStackTrace();
        }

    }


    public static String getDataSourceUrl() {
        return dataSourceUrl;
    }

    public static String getDataSourceUser() {
        return dataSourceUser;
    }

    public static String getDataSourcePassword() {
        return dataSourcePassword;
    }

    public static String getServerHttpPort() {
        return serverHttpPort;
    }

    public static String getServerHttpPath() {
        return serverHttpPath;
    }
}
