# What is a Security Assessment?

* Security assessment plays a primary role in achieving security in SDLC and should be implemented in all phases where possible.
  * Security testing assesses a system, software or web application for vulnerabilities and other attack vectors.
  * BC they test from a holistic point of view of the application, they are usually carried out at the end of the SDLC, in the Operations and Maintenance phase, once the version has included all the working components and updates.

* 2 two types of assessments:
  * Penetration Testing
  * Vulnerability Assessment

## Vulnerability Assessment

* Focus on Finding Vulnerabilities, but do not validate them or simulate the findings to prove they are exploitable in reality.
  * Typically, automated tools run against an organisation's network and systems with TOOLS LIKE OpenVAS, Nessus (Tenable), and ISS Scanner.
    * Scanners probe ports and services on systems across various systems and IP Addresses.
    * Other activities include checking service versions against a database of vulnerabilities affecting said version.
      * The result is a report with a list of vulnerabilities usually found, with an automated threat level severity classification

* Pros
  * Suitable for quickly identifying potential vulnerabilities
  * Part of the Penetration Test
  * Better for Budget, they are cheaper than Pentests

* Cons
  * Can produce a large number of reports
  * Quality depends on the tool used
  * Real-life scenarios for vulnerabilities are not considered (it could be behind a proxy or only exploitable with social engineering/credentials)
  * The low-risk vulnerability may be used as part of a more powerful attack.

## Penetration Testing

* It includes Vulnerability Testing but goes more in-depth.
  * Extended by testing/validating of vulnerabilities, quantifying risks and attempting to penetrate systems.
  * EX:
    * Trying to escalate privileges after a vulnerability is found, some vulnerabilities can be a lower risk but can be used as leverage to cause more damage.
      * Pentester can provide a thorough report with suggested countermeasures to mitigate the vulnerabilities.
      * This makes it easier to understand the threats by demonstrating the actual risk

* Pros
  * Tester shows organisations what an attacker could do.
  * How any vulnerabilities could be used against it by attackers – the real risk

* Cons
  * Very Expensive
  * Requires extensive planning and time to carry out the tests
