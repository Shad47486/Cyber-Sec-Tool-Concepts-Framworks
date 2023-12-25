# Kibana Discover Tab is the place where analyst would spend most of their time

- Shows the ingested logs (also known as documents), the search bar, normalized fields, etc.
- This allows analyst to do the following tasks:
  - Search for the logs
  - Investigate anomalies
  - Apply filter based onTo Base
    - Search term
    - Time period

## Info available in the Dashboard Tab

- Logs (document):
  - Each log here is also known as a single document containing information about the event.
    - It shows the fields and values found in that document.

- Fields pane:
  - Left panel of the interface shows the list of the fields parsed from the logs.
    - We can click on any field to add the field to the filter or remove it from the search.

- Index Pattern:
  - Tells Kibana which elasticsearch data we want to explore.
    - Each Index pattern corresponds to certain defined properties of the fields.
    - A single index pattern can point to multiple indices.
      - This is done beacuse each log source may or will have different log structure; this is why we first normalize the data into the correct fields and values by using a dedicated index pattern for the data source
      - Can use fields for filters and can create tables for specific fields helping to reduce the noise.

- Search bar:
  A place where the user adds search queries / applies filters to narrow down the results.

- Time Filter:
  - We can narrow down results based on the time duration.
    - This tab has many options to select from to filter/limit the logs.

- Time Interval:
  - This chart shows the event counts over time.

- TOP Bar:
  - This bar contains various options to save the search, open the saved searches, share or save the search, etc.
