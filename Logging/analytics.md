# Info on Log analysis process, tools, and techniques

- Logs are more than mere records of historical events; they can serve as a guiding compass
  - Their role in keeping a record of historical activity for a system or application is crucial.

## Log Analysis Process

- Log analysis involves Parsing, Normalisation, Sorting, Classification, Enrichment, Correlation, Visualisation, and Reporting.
  - It can be done through various tools and techniques, ranging from complex systems like Splunk and ELK to ad-hoc methods ranging from default command-line tools to open-source tools.
**Different Log Analysis Processes**

- Data Sources
  - Data Sources are the systems or applications configured to log system events or user activities.
    - Origin of logs.

- Parsing
  - Breaking down the log data into more manageable and understandable components.
    - Since logs come in various formats depending on the source, it's essential to parse these logs to extract valuable info.

- Normalisation
  - Standardising parsed data
    - Involves bringing the various log data into a standard format, making comparing and analysing data from different sources easier.
      - It is imperative in environments with multiple systems and applications, where each might generate logs in another format.

- Sorting
  - A vital aspect of log analysis, as it allows for efficient data retrieval and identification of patterns.
    - Logs can be sorted by time, source, event type, severity, and any other parameter present in the data.
      - Proper sorting is critical in identifying trends and anomalies that signal operational issu

- Classification
  - Involves assigning categories to the logs based on their characteristics.
    - By classifying log files, you can quickly filter and focus on those logs that matter most to your analysis.
      - For instance, classification can be based on the severity level, event type, or source.
    - Automated classification using machine learning can significantly enhance this process, helping to identify potential issues or threats that could be overlooked.

- Enrichment
  - Adds context to logs to make them more meaningful and easier to analyse.
    - It COULD involve adding information like geographical data, user details, threat intelligence, or even data from other sources that can provide a complete picture of the event.
    - Enrichment makes logs more valuable, enabling analysts to make better decisions and more accurately respond to incidents.
      - Like classification, log enrichment can be automated using machine learning, reducing the time and effort required for log analysis.

- Correlation
  - Involves linking related records and identifying connections between log entries.
    - Process helps detect patterns and trends, making understanding complex relationships between various log events easier.
    - Correlation is critical in determining security threats or system performance issues that might remain unnoticed.

- Visualisation
  - Represents log data in graphical formats like charts, graphs, or heat maps.
    - Visually presenting data makes recognising patterns, trends, and anomalies easier.
      - Visualisation tools provide an intuitive way to interpret large volumes of log data, making complex information more accessible and understandable.

- Reporting
  - Summarises log data into structured formats to provide insights, support decision-making, or meet compliance requirements.
    - Effective reporting includes creating clear and concise log data summaries catering to stakeholders' needs, such as management, security teams, or auditors.
      - Regular reports can be vital in monitoring system health, security posture, and operational efficiency.

## Log Analysis Tools

- Security Information and Event Management (SIEM) tools such as Splunk or Elastic Search can be used for complex log analysis tasks.
  - In scenarios where immediate data analysis is needed, such as during incident response:
    - Linux-based systems can employ default tools like cat, grep, sed, sort, uniq, and awk, along with sha256sum for hashing log files
    - Windows-based systems can utilise EZ-Tools and the default cmdlet Get-FileHash for similar purposes.
  - Proper acquisition should be observed by taking the log file's hash during collection to ensure its admissibility in a court of law.
    - It is imperative not only to log events but also to ensure their integrity, that they are analysed, and any lessons obtained from the logs be learned, as the safety and efficiency of an organisation can depend on them.

### Log Analysis Techniques (Common Techniques)

- Log analysis techniques are methods or practices used to interpret and derive insights from log data.

- Pattern Recognition
  - This involves identifying recurring sequences or trends in log data.
    - It can detect regular system behaviour or identify unusual activities that may indicate a security threat.

- Anomaly Detection
  - Docuses on identifying data points that deviate from the expected pattern.
    - It is crucial to spot potential issues or malicious activities early on.

- Correlation Analysis
  - Correlating different log entries helps understand the relationship between various events.
    - It can reveal causation and dependencies between system components and is vital in root cause analysis.

- Timeline Analysis
  - Analysing logs over time helps understand trends, seasonalities, and periodic behaviours.
    - It can be essential for performance monitoring and forecasting system loads.

- Machine Learning and AI
  - Leveraging ML models can automate and enhance various log analysis techniques, such as classification and enrichment.
    - AI can provide predictive insights and help in automating responses to specific events.

- Visualisation
  - Representing log data through graphs and charts allows for intuitive understanding and quick insights.
    - Visualisation can make complex data more accessible and assist in identifying key patterns and relationships.

- Statistical Analysis
  - Using statistical methods to analyse log data can provide quantitative insights and help make data-driven decisions.
    - Regression analysis and hypothesis testing can infer relationships and validate assumptions.

#### Handling Unparsed/Parsed Log Files

- Handling unparsed raw log files accessed directly via an open-source Log Viewer tool and specify the path in the URL.
  - Use [Log Viewer Repo](<https://github.com/sevdokimov/log-viewer>) on unparsed Raw Log Files

- To create a parsed and consolidated log file, you can use a combination of Unix tools like cat, grep, sed, sort, uniq, and awk to be accessed via log viewer:
  - Step-by-step guide:
    1. Use awk and sed to normalize the log entries to the desired format.
       1. Sorting by Date and Time (EXAMPLE)
          1. [Parsed/Consolidated Log File](./scripts/parse.md)
    2. Optional: Use grep to filter specific entries:
       2. grep "34.253.159.159" /tmp/parsed_consolidated.log > /tmp/filtered_consolidated.log
    3. Use sort to sort all the log entries by date and time:
       3. sort /tmp/parsed_consolidated.log > /tmp/sort_parsed_consolidated.log
    4. Use uniq to remove duplicate entries:
       4. uniq /tmp/sort_parsed_consolidated.log > /tmp/uniq_sort_parsed_consolidated.log
    5. You can now access the parsed and consolidated log file through the Log Viewer tool using the following URL:
       5. http://10.10.111.124:8111/log?path=%2Ftmp%2Funiq_sort_parsed_consolidated.log
