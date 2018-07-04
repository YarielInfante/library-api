package com.gbh.library.config.server.impl;

import com.gbh.library.util.ApplicationProperties;
import com.gbh.library.config.server.IServer;
import org.glassfish.jersey.grizzly2.httpserver.GrizzlyHttpServerFactory;
import org.glassfish.jersey.server.ResourceConfig;

import java.net.URI;

public class GrizzlyHttpServer implements IServer {

    // Base URI the Grizzly HTTP server will listen on

    /**
     * Starts Grizzly HTTP server exposing JAX-RS resources defined in this application.
     */
    public void start() {

        String BASE_URI = "http://0.0.0.0:" + ApplicationProperties.getServerHttpPort() + "/" + ApplicationProperties.getServerHttpPath();

        System.out.println("Http server running on " + BASE_URI);
        // create a resource config that scans for JAX-RS resources and providers
        // in com.gbh package
        final ResourceConfig rc = new ResourceConfig().packages("com.gbh.library.web.rest");

        // create and start a new instance of grizzly http server
        // exposing the Jersey application at BASE_URI
        GrizzlyHttpServerFactory.createHttpServer(URI.create(BASE_URI), rc);
    }


}
