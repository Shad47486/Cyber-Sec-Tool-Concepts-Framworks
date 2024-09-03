# What is Kibana Query Language (KQL)?

* Search query language used to search the ingested logs/documents in the elasticsearch.
  * Can search for the logs in two different ways:
    * Free text search
    * Field-based search

[Other commands in KQL](<https://www.elastic.co/guide/en/kibana/7.17/kuery-query.html>)

## Free text search

* Allows users to search for the logs based on the text-only.
  * Used with parentheses () followed by what to is being looked for
    * EX: looking for a host name google
      * Rather then using the field name you can write (*google*) & this will look for all values in every event with the word google.

## Wild Cards

* "*" will match any number of characters
  * EX: United*
    * Return all the results containing the term 'United'.
      * If we had logs with the term United Nations it would also have returned those as a result of this wildcard.

* "?" will match a single character.
  * EX: name:J?n
    * The query will match any document where the field value begins with a "J" and ends with an "n" but will only be three characters long.

### Logical Operators (AND|OR|NOT)

* 'OR' Operator
  * EX: "United States" OR "England"
    * To show logs that contain either the United States or England.

* 'AND' Operator
  * EX: "United States" AND "Virginia"
    * Creates a search that will return the logs that contains the terms "UNITED STATES" AND "Virginia."

* 'NOT Operator'
  * Remove the particular term from the search results
  * EX: "United States" AND NOT ("Florida")
    * Search query will show the logs from the United States, including all states but ignoring Florida.

#### Field-based search

* We will provide the field name and the value we are looking for in the logs.
  * This search has a special syntax as FIELD : VALUE.
    * It uses a colon : as a separator between the field and the value.
      * EX: Source_ip : 238.163.231.224 AND UserName : Suleman
        * We are telling Kibana to display all the documents in which the field Source_ip contains the value 19.112.190.54 and UserName as Suleman as shown below.

##### Range queries

* Range queries allow us to search for documents with field values within a specified range.
  * To use the range query properly make sure you change the index to "ranges"
    * EX Dataset:
      * AlertID = 1
        * Malware Detection
          * Response Time = 120
      * AlertID = 2
        * Unusual Login Attempt
          * Response Time = 240
      * AlertID = 3
        * Suspicious Traffic
          * Response Time = 600
      * AlertID = 4
        * Unauthorized File Access
          * Response Time = 300
      * AlertID = 5
        * Phishing Email
          * Response Time = 180

* To find the ranges for these data you can use the following queries based on the response time:
  * Query: response_time_seconds >= 100
  * Query: response_time_seconds < 300
    * Or you can combine it The queries:
      * response_time_seconds >= 100 AND response_time_seconds < 300

* There are different ways to search by ranges, and one way is by specifying the date by following specific formats.
  * @timestamp<"yyyy-MM-ddTHH:mm:ssZ"
  * The time is optional, so you can also do the following:
    * @timestamp>yyyy-MM-dd

###### Fuzzy Searches

* Fuzzy searching is beneficial when searching for documents with inconsistencies or typos in the data.
  * It accounts for these variations and retrieves relevant documents by allowing a specified number of character differences (known as the fuzziness value) between the search term and the actual field value.

* EX: If you want to search for "server", you can use a fuzzy search to return docs containing "serber", "server01", and "server001"
  * To search for all documents where the "host_name" field is similar, but not necessarily identical to "serber", you can use the following query:
    * host_name:server01~1
      * As you can see, the "~" character indicates that we are doing a fuzzy search. The format of the query is as follows:
        * field_name:search_term~fuzziness_value
      * The fuzziness value lets us control how many characters differ from the search term
        * Fuzzy searching does not work on nested data and only matches on one-word strings.

