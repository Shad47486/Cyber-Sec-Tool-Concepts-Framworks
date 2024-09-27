# What is Static Application Security Testing (SAST)

* White (KNOWN) box testing method that directly analyses the source code.
  * Many people tend to develop an application that could automate or execute processes quickly and improve performance and user experience, thereby forgetting the negative impact an application that lacks security could cause.
  * Why is it Static?
    * BC the test is done before an application is live and running.
      * SAST can even help detect vulnerabilities in your application before the code is merged or integrated into the software if added as part of the SDLC development phase.

* How does SAST work?
  * Uses a testing methodology of analysing a source code to detect any traces of vulnerabilities that could provide a backdoor for an attacker.
    * Usually analyses and scans an application before the code is compiled.
  * Once a vulnerability is detected, the following line of action is to check the code and patch the code before the code is compiled and deployed to live.
    * White Box Testing is an approach or method that testers use to test software's inner structure and see how it integrates with the external systems.

* **Software Composition Analysis (SCA)**
  * Goes hand on hand with SAST where SCA is used to scan dependencies for security vulnerabilities, helping development teams track and analyse any open-source component brought into a project.
    * SCA is now an essential pillar in security testing as modern applications are increasingly composed of open-source code.
      * Nowadays, one of the biggest challenges developer teams have is ensuring their codebase is secure as applications are assembled from different building blocks.

## What is Dynamic Application Security Testing (DAST)?

* Black-box (UNKNOWN) testing method that finds vulnerabilities at runtime
  * Tool to scan any web application to find security vulnerabilities.
    * Used to detect vulnerabilities inside a web application that has been deployed to production.
    * Will always send alerts to the security team assigned for immediate remediation.

* How does DAST work?
  * by simulating automated attacks on an application, mimicking a malicious attacker.
    * The goal is to find unexpected outcomes or results that attackers could use to compromise an application.
      * Since DAST tools don't have internal information about the application or the source code, they attack just as an external hacker would—with the same limited knowledge and information about the application.
      * Focus is to help organisations reduce and protect against the risk that application vulnerabilities could cause.
      * Used in the testing phase of SDLC

### What is Interactive Application Security Testing (IAST)

* Uses Grey (known/unknown) box methology to analyze code for security vulnerabilities while the app is running.
  * It is usually deployed side by side with the main application on the application server.
    * Application security tool designed for web and mobile applications to detect and report issues even while running.

* How Does IAST Work?
  * Occurs in real-time, just like DAST, while the application runs in the staging environment.
    * IAST can identify the line of code causing security issues and quickly inform the developer for immediate remediation.
  * IAST checks the source code similar to SAST, but at the post-build stage, unlike SAST, which occurs during development.
  * IAST agents are typically deployed on the application servers

* **Runtime Application Self Protection (RASP)**
  * Runtime application integrated into an application to analyse inward and outward traffic and end-user behavioural patterns to prevent security attacks.
  * Tool is different from the other tools as RASP is used after product release, making it a more security-focused tool when compared to the others that are known for testing.

* How does RASP work?
  * Deployed to a web or application server next to the main application while running to monitor and analyse the inward and outward traffic behaviour.
    * Immediately once an issue is found, RASP will send alerts to the security team and immediately block access to the individual making a request.
    * When you deploy RASP, it will secure the whole application against different attacks.
      * It does not just wait or try to rely only on specific signatures of some known vulnerabilities.
  * RASP is a complete solution that observes every detail of different attacks on your application and knows your application behaviour.
