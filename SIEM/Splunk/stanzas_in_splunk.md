# STANZAS in Splunk Configurations

* Splunk configurations contain various stanza configurations that define how data is processed and indexed.
  * These stanzas have a certain purpose, and it's important to understand what these are and how they are used.

## A brief summary of the common stanzas are explained below

* [sourcetype]
  * Specifies the configuration for a specific sourcetype.
    * It allows you to define how the data from that sourcetype should be parsed and indexed.
  * EX: [apache:access]
    * Configures parsing and indexing settings for Apache access logs.

* TRANSFORMS
  * Applies field transformations to extracted events.
    * You can reference custom or pre-defined field transformation configurations to modify or create new fields based on the extracted data.
  * EX: TRANSFORMS-mytransform = myfield1, myfield2
    * Applies the transformation named “mytransform” to fields myfield1 and myfield2.

* REPORT
  * Defines extraction rules for specific fields using regular expressions.
    * It associates a field name with a regular expression pattern to extract desired values.
    * This stanza helps in parsing and extracting structured fields from unstructured or semi-structured data.
  * EX: REPORT-field1 = pattern1
    * Extracts field1 using pattern1 regular expression.

* EXTRACT
  * Defines extraction rules for fields using regular expressions and assigns them specific names.
    * It is similar to the REPORT stanza, but it allows more flexibility in defining custom field extractions.
  * EX: EXTRACT-field1 = (?<fieldname>pattern1)
    * Extracts field1 using pattern1 regular expression and assigns it to fieldname.

* TIME_PREFIX
  * Specifies the prefix before the timestamp value in events.
    * This stanza is used to identify the position of the timestamp within the event.
  * EX: TIME_PREFIX = \[timestamp\]
    * Identifies the prefix [timestamp] before the actual timestamp in events.

* TIME_FORMAT
  * Defines the format of the timestamp present in the events.
    * It allows Splunk to correctly extract and parse timestamps based on the specified format.
  * EX: TIME_FORMAT = %Y-%m-%d %H:%M:%S
    * Specifies the timestamp format as YYYY-MM-DD HH:MM:SS.

* LINE_BREAKER
  * Specifies a regular expression pattern that identifies line breaks within events.
    * This stanza is used to split events into multiple lines for proper parsing and indexing.
  * EX: LINE_BREAKER = ([\r\n]+)
    * Identifies line breaks using the regular expression [\r\n]+.

* SHOULD_LINEMERGE
  * Determines whether lines should be merged into a single event or treated as separate events.
    * It controls the behavior of line merging based on the specified regular expression pattern in the LINE_BREAKER stanza.
  * EX: SHOULD_LINEMERGE = false
    * Disables line merging, treating each line as a separate event.

* BREAK_ONLY_BEFORE
  * Defines a regular expression pattern that marks the beginning of an event.
    * This stanza is used to identify specific patterns in the data that indicate the start of a new event.
  * EX: BREAK_ONLY_BEFORE = ^\d{4}-\d{2}-\d{2}
    * Identifies the start of a new event if it begins with a date in the format YYYY-MM-DD.

* BREAK_ONLY_AFTER
  * Specifies a regular expression pattern that marks the end of an event.
    * It is used to identify patterns in the data that indicate the completion of an event.
  * EX: BREAK_ONLY_AFTER = \[END\]
    * Marks the end of an event if it contains the pattern [END].

* KV_MOD
  * Specifies the key-value mode used for extracting field-value pairs from events.
    * The available modes are: auto, none, simple, multi, and json.
    * This stanza determines how fields are extracted from the events based on the key-value pairs present in the data.
    * It helps in parsing structured data where fields are represented in a key-value format.
  * EX: KV_MODE = json
    * Enables JSON key-value mode for parsing events with JSON formatted fields.
