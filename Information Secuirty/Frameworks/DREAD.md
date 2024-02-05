# What is the DREAD Framwork?

* The DREAD framework is a risk assessment model developed by Microsoft to evaluate and prioritise security threats and vulnerabilities.
  * Typically used for QUALITATIVE RISK ANALYSIS
    * Rating each category from one to ten based on a subjective assessment and interpretation of the questions above

* DREAD is an acronym that stands for:
  * Damage:
    * The potential harm that could result from the successful exploitation of a vulnerability.
      * Includes data loss, system downtime, or reputational damage.
        * How bad would an attack be?
  * Reproducibility:
    * The ease with which an attacker can successfully recreate the exploitation of a vulnerability. A higher reproducibility score suggests that the vulnerability is straightforward to abuse, posing a greater risk.
      * How easy it is to reproduce the attack?
  * Exploitability:
    * The difficulty level involved in exploiting the vulnerability considering factors such as technical skills required, availability of tools or exploits, and the amount of time it would take to exploit the vulnerability successfully.
      * How much work is it to launch the attack?
  * Affected Users:
    * The number or portion of users impacted once the vulnerability has been exploited.
      * How many people will be impacted
  * Discoverability:
    * The ease with which an attacker can find and identify the vulnerability considering whether it is publicly known or how difficult it is to discover based on the exposure of the assets (publicly reachable or in a regulated environment).
      * How easy is it to discover the vulnerability?

## DREAD Framework Guidelines

* The DREAD framework is an opinion-based model that heavily relies on an analyst's interpretation and assessment.
*However, the reliability of this framework can still be improved by following some guidelines:*

1. Establish a standardised set of guidelines and definitions for each DREAD category that provides a consistent understanding of how to rate vulnerabilities.
   * This can be supported by providing examples and scenarios to illustrate how scores should be assigned under various circumstances.
2. Encourage collaboration and discussion among multiple teams.
   * Constructive feedback from different members aids in justifying the assigned scores, which can lead to a more accurate assessment.
3. Use the DREAD framework with other risk-assessment methodologies and regularly review and update the chosen methods and techniques to ensure they remain relevant and aligned with the organisation's needs.

* More info here on dread Below:
  * [OWASP Threat Modeling Processes](<https://owasp.org/www-community/Threat_Modeling_Process>)
  * [Microsoft DREAD](<https://learn.microsoft.com/en-us/previous-versions/msp-n-p/ff648644(v=pandp.10)?redirectedfrom=MSDN#c03618429_011>)
