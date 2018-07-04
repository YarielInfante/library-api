package com.gbh.library;

import com.gbh.library.config.server.Server;
import com.gbh.library.config.server.impl.GrizzlyHttpServer;

/**
 * Main class.
 *
 */
public class Main {


    /**
     * Main method.
     * @param args
     */
    public static void main(String[] args) {


        Server server = new GrizzlyHttpServer();
        server.start();


    }
}

