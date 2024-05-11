# What is Windows Active Directroy (AD)?

* A domain repo within windows computers that allows orgs to centerlise magnament.
  * Widely used by almost every big organisation to manage, control and govern a network of computers, servers and other devices
    * Using objects & groups to define roles to services.
* Runs services through a server called a Domain controller (DC)
  * Acts as the brain for windows server domain, it supervises the entire network.
  * In the domain, it acts as a gatekeeper for users, authentication & IT resources authorisation.
* Consists of either Tress & Forests
  * Trees share resources between domains.
    * Communication between domains can be 1 or 2 ways trusts.
    * When a domain is added to the tree, it becomes the offspring domain of that particular domain to which it is added (now a parent domain)
  * Forests
    * When the sharing of the standard global catalogue, directory schema, logical structure, and directory configuration between the collections of trees is made successfully, it is called a Forest
      * Communication between two forests becomes possible once a forest-level trust is created.

## Active Directory Domain Service (AD DS)

* This service acts as a catalogue that holds the information of all of the "objects" that exist on your network.

* Amongst the many objects supported by AD, we have users, groups, machines, printers, shares and many others.
  * When an object holds another object, it is termed a CONTAINER OR a LAEF OBJECT
  * EX:
    * Users (Most Common Object In AD)
      * Users are one of the objects known as **security principals**
        * *Meaning that they can be authenticated by the domain and can be assigned privileges over resources like files or printers.*
      * Consists of 2 entities, people & services
    * Machines (Object)
      * For every computer that joins the Active Directory domain, a machine object will be created.
        * Also Considered security principals & have limited rights within the domain itself.
          * Machines named DC01 will have a machine ACCOUNT named DC01$
            * The machine accounts themselves are local administrators on the assigned computer, they are generally not supposed to be accessed by anyone except the computer itself, but as with any other account, if you have the password, you can use it to log in.
    * Security Groups (GROUPS)
      * Defined users in a group with groups policy objects (GPO) to assign access rights to files or other resources to entire groups instead of single users.
        * Allows for better manageability as you can add users to an existing group, and they will automatically inherit all of the group's privileges.
        * Can have both users and machines as members.

* 2 protocols can be used for network authentication in WINDWOS DOMAIN.
  * Kerberos: Used by any recent version of Windows.
    * This is the default protocol in any recent domain.
  * NetNTLM: Legacy authentication protocol kept for compatibility purposes.

### Trust in AD

* AD trust is the established communication bridge between the domains in AD
  * When we say one domain trusts another in the AD network, it means its resources can be shared with another domain.
    * However, one domain's resources are not directly available to every other domain, as it is not safe
    * The resource sharing availability is governed by Trusts in AD.

* Their are 2 categories of AD trust (based on direction and characteristics)
  * Based on Characteristics:
    * Transitive trust
      * Reflects a 2 way trust relationship between domains
        * EX: 3 domains, domain A trust domain B, Domain B has a TRANSITIVE TRUST with domain C.
          * Domain A AUTOMATICALLY TRUSTS DOMAIN C FOR SHARING RESOURCES
    * Non-transitive Trusts
  * Based on direction:
    * 1 way trust
    * 2 way trust
*TO check ad trust go to: Server Manager > Tools > Active Directory Domains and Trust*
