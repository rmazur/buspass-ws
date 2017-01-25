buspass-ws
===

An experiment in creating a minimal Drools web service using Spring Boot.

Assuming that you have a reasonably recent install of Maven and the JDK (I have tested with 8, but I think 7 should be okay), you should be able to do the following from the command line.

Build the application:

    mvn clean package

Run the application:

    java -jar target/buspass-ws-1.0.0-SNAPSHOT.jar

Then send a request to the API using curl or your favourite web browser. As described by the rules, if you request a bus pass for a person with age less than 16, you should see a ChildBusPass and for someone 16 or over, you should see an AdultBusPass.

For example, opening http://127.0.0.1:8080/buspass?name=Steve&age=15 gives me:
    
    {"person":{"name":"Steve","age":15},"busPassType":"ChildBusPass"}
    
... and opening http://127.0.0.1:8080/buspass?name=Steve&age=16 gives me:
    
    {"person":{"name":"Steve","age":16},"busPassType":"AdultBusPass"}

