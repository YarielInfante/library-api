package com.gbh.library.service;


import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.HttpClientBuilder;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * Abstract class to request restful webservices
 */
public abstract class RestfulClient {


    public enum HttpMethod {
        GET,
        PUT,
        POST
    }


    /**
     * Makes request to the specified serviceEndPoint.
     *
     * @param serviceEndPoint url of the endpoint
     * @param object          the object that is being sent with the request
     * @param httpMethod      pass HttpMethod.PUT or HttpMethod.POST in desire.
     * @return the response
     * @throws IOException
     * @see HttpMethod
     * @see HttpClient
     * @see HttpPost
     * @see HttpPut
     */
    public String makeRequest(String serviceEndPoint, HttpMethod httpMethod, Object... object) throws IOException {

        HttpClient client = HttpClientBuilder.create().build();
        HttpResponse response = null;


        if (HttpMethod.GET == httpMethod) {
            HttpGet get = new HttpGet(serviceEndPoint);

            response = client.execute(get);

        } else if (HttpMethod.PUT == httpMethod) {
            HttpPut put = new HttpPut(serviceEndPoint);

            // add header
            put.setHeader("Content-Type", "application/json");
            StringEntity stringEntity = new StringEntity(object.toString(), "UTF-8");
            put.setEntity(stringEntity);

            response = client.execute(put);

        } else if (HttpMethod.POST == httpMethod) {
            HttpPost post = new HttpPost(serviceEndPoint);

            // add header
            post.setHeader("Content-Type", "application/json");
            StringEntity stringEntity = new StringEntity(object.toString(), "UTF-8");
            post.setEntity(stringEntity);

            response = client.execute(post);

        }


        BufferedReader rd = new BufferedReader(new InputStreamReader(response.getEntity().getContent()));

        StringBuffer result = new StringBuffer();

        String line = "";

        while ((line = rd.readLine()) != null) {
            result.append(line);
        }

        return result.toString();


    }
}
