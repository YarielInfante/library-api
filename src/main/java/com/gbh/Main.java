package com.gbh;

import com.gbh.config.server.GrizzlyHttpServer;
import com.gbh.config.server.Server;

import java.io.IOException;

/**
 * Main class.
 *
 */
public class Main {


    /**
     * Main method.
     * @param args
     * @throws IOException
     */
    public static void main(String[] args) {


        Server server = new GrizzlyHttpServer();
        server.start();


    }
}

