# What is Velociraptor Query Language?

- Velociraptor’s power and flexibility comes from the Velociraptor Query Language (VQL)
  - VQL is a framework for creating highly customized artifacts, which allow you to collect, query, and monitor almost any aspect of an endpoint, groups of endpoints, or an entire network.
  - It can also be used to create continuous monitoring rules on the endpoint, as well as automate tasks on the server.
  - Can also be run via the command line.

- VQL is not useful without a good set of plugins that make DFIR work possible
  - Velociraptor’s strength lies in the wide array of VQL plugins and functions that are geared towards making DFIR investigations and detections effective
    - [Forensic Analysis](<https://docs.velociraptor.app/docs/forensic/>)

- [VQL doc](<https://docs.velociraptor.app/docs/vql/>)
  - [Extending VQL](<https://docs.velociraptor.app/docs/extending_vql/>)
    - Illustrates how VQL can be extended by including powershell scripts and external binaries.
  - [VQL plugins/functions](<https://docs.velociraptor.app/vql_reference/>)
    - Search for documentation on VQL plugins or functions.

## How to execute VQL on ur own

- First create a Notebook (concept is kinda similar to Jupitar Notebook)
  - Navigate to the Notebooks tab.
    - In Velociraptor, Notebooks are containers that we can use to execute our queries and commands.
      - Notebooks consist of two languages
        - Markdown
        - VQL.

- Then set our notebook to use VQL instead & query basic information from the current agent, we can use:
  - SELECT * FROM info()

- Save this notebook and run it against the agent.

### BASIC VQL Tips/Questions/Strings

- What is followed after the SELECT keyword in a standard VQL query?
  - Column Selectors
  
- What goes after the FROM  keyword?
  - VQL Plugin

- What is followed by the WHERE keyword?
  - filter expression

- Example:
  - SELECT x,y,z FROM plgin(arg=1) WHERE x = 1

- What can you type in the Notepad interface to view a list of possible completions for a keyword?
  - ?
    - EX: Since plugins must follow the FROM keyword, any suggestions after the FROM keyword will be for VQL plugins.
      - Typing ? inside a plugin arguments list shows the possible arguments, their type, and if they are required or optional.
        - SELECT * FROM ?

- What plugin would you use to run PowerShell code from Velociraptor?
  - execve()
