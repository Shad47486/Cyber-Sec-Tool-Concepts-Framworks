# Kibana Discover Tab is the place where analyst would spend most of their time

* Shows the ingested logs (also known as documents), the search bar, normalized fields, etc.
* This allows analyst to do the following tasks:
  * Search for the logs
  * Investigate anomalies
  * Apply filter based onTo Base
    * Search term
    * Time period

## Info available in the Dashboard Tab

* Logs (document):
  * Each log here is also known as a single document containing information about the event.
    * It shows the fields and values found in that document.

* Fields pane:
  * Left panel of the interface shows the list of the fields parsed from the logs.
    * We can click on any field to add the field to the filter or remove it from the search.

* Index Pattern:
  * Tells Kibana which elasticsearch data we want to explore.
    * Each Index pattern corresponds to certain defined properties of the fields.
    * A single index pattern can point to multiple indices.
      * This is done beacuse each log source may or will have different log structure; this is why we first normalize the data into the correct fields and values by using a dedicated index pattern for the data source
      * Can use fields for filters and can create tables for specific fields helping to reduce the noise.

* Search bar:
  A place where the user adds search queries / applies filters to narrow down the results.

* Time Filter:
  * We can narrow down results based on the time duration.
    * This tab has many options to select from to filter/limit the logs.

* Time Interval:
  * This chart shows the event counts over time.

* TOP Bar:
  * This bar contains various options to save the search, open the saved searches, share or save the search, etc.

### Syntaxs

* Kibana supports two types of syntax languages for querying in Kibana:
  * KQL (Kibana Query Language) - KQL is a user-friendly query language developed by Elastic specifically for Kibana.
    * NOT THE SAME AS Kusto Query Language WHICH IS USED IN Microsoft
      * [More info on Kibana Query Lanaguage (KQL)](/ELK/overview/kql.md)
    * It provides autocomplete suggestions and supports filtering using various operators and functions.
  * Lucene Query Syntax - another query language powered by an open-source search engine library used as a backend for search engines, including Elasticsearch.
    * It is more powerful than KQL but is harder to learn for beginners.
  * *The choice of which syntax to use ultimately depends on the situation and the type of data to search for.*

#### Special Characters

* Certain characters are reserved in ELK queries and must be escaped before usage.
  * Reserved characters in ELK include +, -, =, &&, ||, &, | and !.
    * EX: For example, say you're searching for documents that contain the term "User+1" in the "username" field.
    * Simply typing username:User+1 in the query bar will result in an error because the plus symbol is reserved.
      * *To escape it, type username:User\+1, and the query will return the desired result.*

##### Fuzzy Searches (best to use Lucene query)

* Fuzzy searching is beneficial when searching for documents with inconsistencies or typos in the data.
  * It accounts for these variations and retrieves relevant documents by allowing a specified number of character differences (known as the fuzziness value) between the search term and the actual field value.
    * *Does not work on KQL query but works on Lucene queries*
      * To use Lucence queries disable KQL in the query bar

* EX: If you want to search for "server", you can use a fuzzy search to return docs containing "serber", "server01", and "server001"
  * To search for all documents where the "host_name" field is similar, but not necessarily identical to "serber", you can use the following query:
    * host_name:server01~1
      * As you can see, the "~" character indicates that we are doing a fuzzy search.
        * The format of the query is as follows:
          * field_name:search_term~fuzziness_value
      * The fuzziness value lets us control how many characters differ from the search term
        * Fuzzy searching does not work on nested data and only matches on one-word strings.

##### Proximity Searches (best to use Lucene query)

* Proximity searches allow you to search for documents where the field values contain two or more terms within a specified distance.
  * *In KQL, you can use the match_phrase query with the slop parameter to perform a proximity search.*
    * The slop parameter sets the maximum distance that the terms can be from each other.
      * EX: A slop value of 2 means that the words can be up to 2 positions away and the format when doing a proximity search is like so:
        * field_name:"search term"~slop_value
          * As you can see, the "~" character is used, followed by a slop_value.
            * Note that "~" is used for both proximity searches and fuzzy searching; the difference is that in proximity searches, the slop value is applied to a phrase enclosed in quotation marks (").

* EX: To search for all documents where the terms "server" and "error" appear within a distance of 1 word or less from each other in the "log_message" field, you can use the following query:
  * log_message:"server error"~1

* You can also use operators such as AND and OR in more complex queries for multiple proximity searches.
  * EX: If you want to search for documents containing either "failed login" or "server error" within a distance of 2 words, you could use the following query:
    * log_message:"server error"~1 OR "login server"~1

###### Regular Expressions (regex)

* We can use regexp in Kibana to search for complex patterns that cannot easily be found using simple query strings or wildcards.
  * To use regex in a query, you must wrap your regular expression in forward slashes (/).
  
* Let's start with a relatively simple example and use ".*" to match all characters of any length.
  * Event_Type:/.*/

* If we want only to return entries that start with the letters "S" or "M", then we could use the following:
  * Event_Type:/(S|M).*/
  * Description:/(s|m).*/ AND /user.*/