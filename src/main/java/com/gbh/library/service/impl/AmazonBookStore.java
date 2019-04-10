package com.gbh.library.service.impl;


import com.gbh.library.service.RestfulClient;

import java.io.IOException;

/**
 * Simulation of how the app will connect to externals apps
 */
public class AmazonBookStore extends RestfulClient {


    public Object getAllAvailableBooks() {
        try {
            String s = makeRequest("http://dummy", HttpMethod.GET);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;
    }
}
