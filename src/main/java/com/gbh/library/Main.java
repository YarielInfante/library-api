package com.gbh.library;

import com.gbh.library.config.server.IServer;
import com.gbh.library.config.server.impl.GrizzlyHttpServer;
import com.gbh.library.util.ApplicationProperties;

/**
 * Main class.
 */
public class Main {


    /**
     * Main method.
     *
     * @param args
     */
    public static void main(String[] args) {

        ApplicationProperties.load();
        IServer server = new GrizzlyHttpServer();
        server.start();


    }
}

