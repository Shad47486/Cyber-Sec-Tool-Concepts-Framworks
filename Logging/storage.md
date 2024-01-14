# Log Storage

- Logs can be stored in various locations, such as the local system that generates them, a centralised repository, or cloud-based storage.

- Choice of storage location typically depends on multiple factors:
  - Security Requirements
    - Ensuring that logs are stored in compliance with organisational or regulatory security protocols.
  - Accessibility Needs
    - How quickly and by whom the logs need to be accessed can influence the choice of storage.
  - Storage Capacity
    - The volume of logs generated may require significant storage space, influencing the choice of storage solution.
  - Cost Considerations
    - The budget for log storage may dictate the choice between cloud-based or local solutions.
  - Compliance Regulations
    - Specific industry regulations governing log storage can affect the choice of storage.
  - Retention Policies
    - The required retention time and ease of retrieval can affect the decision-making process.
  - Disaster Recovery Plans
    - Ensuring the availability of logs even in system failure may require specific storage solutions.

## Log Retention

- Log storage is not infinite
  - A reasonable balance between retaining logs for potential future needs and the storage cost is necessary.
    - Understanding the concepts of Hot, Warm, and Cold storage can aid in this decision-making:
      - Hot Storage
        - Query speed should be near real-time, depending on the complexity of the query.
          - Logs from the past 3-6 months that are most accessible.
      - Warm Storage
        - Logs from six months to 2 years, acting as a data lake, easily accessible but not as immediate as Hot storage.
      - Cold Storage
        - These logs are not easily accessible and are usually used for retroactive analysis or scoping purposes.
          - Archived or compressed logs from 2-5 years.

- Managing the cost of storing logs is critical for organisations, and carefully selecting Hot, Warm, or Cold storage strategies can help keep these costs in check.

### Log Deletion

- Log deletion must be performed carefully to avoid removing logs that could still be of value.
  - The backup of log files, especially crucial ones, is necessary before deletion.
    - Essential to have a well-defined deletion policy to ensure compliance with data protection laws and regulations.
  - Log deletion helps with:
    - Maintain a manageable size of logs for analysis.
    - Comply with privacy regulations, such as GDPR, which require unnecessary data to be deleted.
    - Keep storage costs in balance.

#### Best Practices: Log Storage, Retention and Deletion

- Determine the storage, retention, and deletion policy based on both business needs and legal requirements.
- Regularly review and update the guidelines per changing conditions and regulations.
- Automate the storage, retention, and deletion processes to ensure consistency and avoid human errors.
- Encrypt sensitive logs to protect data.
- Regular backups should be made, especially before deletion.
