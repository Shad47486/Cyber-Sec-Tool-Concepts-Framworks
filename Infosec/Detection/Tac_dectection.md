# Tactical Detection

* Tactical Detection is establishing a baseline knowledge of tactical detection, leveraging efficient techniques to bolster your security posture.

* Unique IOCs of previous intrusions are good examples of Threat Intel as they’re traces of the specific adversary that your environment has already faced.
  * The inclusion of these IOCs in your detection mechanism will help spot re-intrusion of that specific adversary immediately, among others.

* Public IOCs - research being done by the community
  * Learning from other people’s experiences/research/learnings.
    * Can use then use those public IOCs to SIEM rules
      * using [Uncoder](<https://tdm.socprime.com/uncoder-ai>) to help with the transformation of these SIEM/EDR rules.

* One way to create immediate impact is to leverage very specific data to your advantage
  * Depending on the environment/organization, more often than not, there exist pieces of data that not everyone is entitled to have access to.
    * Usually, controls are set by the IT team to limit these accesses.
      * [Tripwires](/Infosec/Detection/tripwire.md) are a great way to supplement the detection mechanisms that you already have in place.
        * Tripwires are a way to cover “unknown unknowns” and even study an adversary.
          * The most common tripwires are Honeypots and Hidden Files and Folders.
