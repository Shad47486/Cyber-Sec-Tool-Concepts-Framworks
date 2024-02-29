# What is Risk Assessment?

* Risk assessment is used to determine the level of the potential threat.
  * Risk identified in the risk assessment process can be reduced or eliminated by applying appropriate controls during the risk mitigation process.
    * Usually, a risk assessment is followed by threat modelling.
    * Risk is the likelihood of a threat being exploited, negatively impacting a resource or the target it affects.

## Steps in a Risk Assessment?

* 1st step:
  * Assume the software will be attacked and consider the factors that motivate the threat actor.
    * List out the factors such as the data value of the program, the security level of companies who provide resources that the code depends on, the clients purchasing the software, and how big is the software distributed (single, small workgroup or released worldwide).
      * Based on these factors, write down the acceptable level of risk

* 2nd step (RISK EVALUATION)
  * Include factors like the worst-case scenario if the attacker has successfully attacked the software.
    * You can demonstrate the worst-case scenario to executives and senior engineers by simulating a ransomware attack.
    * Determine the value of data to be stolen, valuable data such as the user's identity, credentials to gain control of the endpoints on the network, and data or assets that pose a lower risk.
    * Another factor to consider is the difficulty of mounting a successful attack, in other words, its complexity

* 3rd step:
  * How accessibile is the target?
    * Determine whether the target accepts requests across a network or only local access, whether authentication is needed for establishing a connection, or if anyone can send requests.
      * It has more impact if an attacker accesses a production environment vs a sandbox environment used in local playgrounds for people to do labs or tutorials.
    * Some attacks only affect one or two users, but the denial of service attack will affect thousands of users when a server is attacked.
      * Moreover, thousands of computers may be infected by the spread of worms.

### TYPES OF RISK ASSESMENT?

* Qualitative Risk Assessment
  * Most common type of Risk Assessment that you will find in companies (hopefully)
    * The goal is to assess and classify risk into thresholds like "Low", "Medium", and "High"
      * It systematically examines what can cause harm and what decisions should be made to define or improve adequate control measures
      * Like all types of Risk Assessments, each level has a priority, where "High" has the most urgency.
        * Formula to evaluate qualitative risk is: Risk = Severity x Likelihood
          * "Severity" is the impact of the consequence, and Likelihood is the probability of it happening (up to u tho)

* Quantitative Risk Assessment
  * Used to measure risk with numerical values.(Instead of "Low", "Medium", and "High").
    * We can use tools to determine Severity and Likelihood or custom series of calculations based on the company's processes.
  * EX:
    * Suppose there are services with assigned business criticality levels.
    * In that case, you can say that if a bug affects a business-critical service (an authentication service, a payment infrastructure etc.), you will assign 5 points.
      * Highlights why it is vital to understand a security posture and its processes.
      * Measuring risk and priority with an endemic equation to a company's services will have great results
        * [EXAMPLE](/examples/riskmatrix.png)
