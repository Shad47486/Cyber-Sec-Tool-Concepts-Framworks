# What is Kibana Query Language (KQL)?

- Search query language used to search the ingested logs/documents in the elasticsearch.
  - Can search for the logs in two different ways:
    - Free text search
    - Field-based search

[Other commands in KQL](<https://www.elastic.co/guide/en/kibana/7.17/kuery-query.html>)

## Free text search:

- Allows users to search for the logs based on the text-only.

## Parameters/commands/Input

- Wild Cards (*)
  - EX: United*
    - Return all the results containing the term 'United'.
      - If we had logs with the term United Nations it would also have returned those as a result of this wildcard.

### Logical Operators (AND|OR|NOT)

- 'OR' Operator
  - EX: "United States" OR "England"
    - To show logs that contain either the United States or England.

- 'AND' Operator
  - EX: "United States" AND "Virginia"
    - Creates a search that will return the logs that contains the terms "UNITED STATES" AND "Virginia."

- 'NOT Operator'
  - Remove the particular term from the search results
  - EX: "United States" AND NOT ("Florida")
    - Search query will show the logs from the United States, including all states but ignoring Florida.

## Field-based search

- We will provide the field name and the value we are looking for in the logs.
  - This search has a special syntax as FIELD : VALUE. It uses a colon : as a separator between the field and the value.
    - EX: Source_ip : 238.163.231.224 AND UserName : Suleman
      - We are telling Kibana to display all the documents in which the field Source_ip contains the value 19.112.190.54 and UserName as Suleman as shown below.