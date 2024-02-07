# What is the Secure SDLC (SSDLC)?

* Involves instilling security processes at all lifecycle phases.
  * From security testing tools to writing security requirements alongside functional requirements.
*Should try to understand the security posture of the current org by doing the 4 following:*
  1. Performing a gap analaysis:
     * Determine what activities & policies exist in your organisation & how effective they are.
     * EX: ensuring policies are in place (what the team does?) with security procedures (how the team executes those policies?)
  2. Create Software Security Initiatives (SSI):
     * By establishing realistic & achievable goals with defined metrics for success.
       * EX: This could be a Secure Coding Standard, playbooks for handling data, etcetera are tracked using project management tools.
  3. *Formalise processes* for security activities within your SSI:
     * After starting a program or standard, it is essential to spend an operational period helping engineers get familiarised with it & gather feedback before enforcing it.
     * When performing a gap analysis, every policy should have defined procedures to make them effective.
  4. Invest in security training for engineers as well as appropriate tools:
     * Ensure people are aware of new processes & the tools that will come with them to operationalise them, & invest in training early, ideally before establishing / onboarding the tool.

* Generally speaking, a secure SDLC involves integrating processes like security testing & other activities into an existing development process.
  * EX: writing security requirements alongside functional requirements & performing an architecture risk analysis during the design phase of the SDLC.

## Phases For A Secure SDLC

* Risk Assessment (Planning):
  * During the early stages of SDLC, it is essential to identify security considerations that promote a security by design approach when functional requirements are gathered in the planning & requirements stages.
    * EX: If a user requests a blog entry from a site, the user should not be able to edit the blog or remove unnecessary input fields.

* Threat Modelling (Design & Prototype):
  * Is the process of identifying potential threats when there is a lack of appropriate safeguards.
    * It is very effective when following a risk assessment & during the design stage of the SDLC, as Threat Modelling focuses on what should not happen.
    * In contrast, design requirements state how the software will behave & interact.
      * EX: Ensure there is verification when a user requests account info.

* Code Scanning/Review (Testing):
  * Code reviews can be either manual or automated.
  * Code Scanning or automated code reviews can leverage Static & Dynamic Security testing technologies.
    * These are crucial in the Development stages as code is being written.

* Security Assessments (Ops & Maintenance):
  * Like Pentests & Vulnerability Assessments are a form of automated testing that can identify critical paths of an app that may lead to exploitation of a vulnerability.
    * However, these are hypothetical as the assessment doesn't carry simulations of those attacks.
  * Pentesting, on the other hand, identifies these flaws and attempts to exploit them to demonstrate validity.
    * Pentests and Vulnerability Assessments are carried out during the Operations & Maintenance phase of the SDLC after a prototype of the app.



















