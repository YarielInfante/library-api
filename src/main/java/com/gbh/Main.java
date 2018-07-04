package com.gbh;

import com.gbh.config.server.Server;
import com.gbh.config.server.impl.GrizzlyHttpServer;

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

