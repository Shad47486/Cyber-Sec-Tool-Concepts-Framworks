# What is a crontab?

* Crontab is one of the processes that is started during boot, which is responsible for facilitating and managing cron jobs.
  * Simply a special file with formatting that is recognised by the cron process to execute each line step-by-step.

* Requires 6 sepcific values:
  * MIN
    * What minute to execute at?
  * HOUR
    * What hour to execute at?
  * DOM
    * What day of the month to execute at?
  * MON
    * What month of the year to execute at?
  * DOW
    * What day of the week to execute at?
  * CMD
    * The actual command that will be executed?

* [Crontab Generators](<https://crontab-generator.org/>)
  * [Atl Crontab Generators](<https://crontab.guru/>)

## Commands

* crontab -e
  * Allows you to edit crontabs by selecting an editito (nano or vim) to edit ur crontab
