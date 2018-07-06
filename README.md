Description
----
Rest API for a Library where clients are able to get a list of available books and view a specific page of a book.


Program Execution
----
System prerequisite:
- Java 8
- MySql Data base
- Maven

To make all this possible, I used:

- **Java 8**: to handle the main code development.
- **JAX-RS: Java API for RESTful Web Services (JAX-RS) Implementation called jersey**: to handle http requests.
- **Mysql Database**: To store the information requested.
- **Maven**: To download dependencies and compile the project.
- **Grizzly Server**: Embedded http server.
  
Configuration
----
**src/main/resources/application.properties** file has the program default configuration parameters that are:

**Connection String.** Here it uses a database named _**library**_ with
port 3305.

        dataSourceUrl=jdbc:mysql://localhost:3305/library
        username to connect to mysql
        dataSource.user=root
        password to connect to mysql
        dataSource.password=mysql
        

you can find the database schema creation in **schema.sql** along side with dummy inserts of data. This file will create everything is needed for the application to run.

In the section below is the configuration needed for the http server to run.
You can change either the port of the server or http path
###########################################
 APPLICATION
###########################################
       server.http.port=8080
       server.http.path=/library/api



Compile source code
----

If you want to compile the source code type :

        mvn clean package
        
Run compiled jar
----

To run it just type

       java -jar library-api-jar-with-dependencies.jar