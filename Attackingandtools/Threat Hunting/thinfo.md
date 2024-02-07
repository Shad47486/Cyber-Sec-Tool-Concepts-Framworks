# What is Threat Hunting?

- Threat hunting is an approach to finding cyber security threats where there’s an active effort done to look for signs of malicious activity.
  - Threat Hunting (proactive) vs Incident Response (reactive)
    - Incident Response (IR) is innately reactive.
      - The action, or “response”, is triggered by an initial notification or alert
      - This initial notification is first triaged, then analysed, and when enough pieces of evidence point to malicious activity, it is deemed an incident that needs to be responded to and dealt with accordingly.
        - "There's a threat that needs to be dealt with now."
    - Threat Hunting is innately proactive.
      - There is no actual ‘trigger’ that would mobilise a hunt, except for the pursuit of building the strength of the organisation’s security posture, guided by Threat Intelligence.
        - "There might be a threat that we don't know yet."
      - Threat Hunting aims to bridge this gap, constantly finding ways to add and improve the current detection mechanisms in place so that future similar bad behaviour will automatically be detected immediately.

- Usually, organisations start doing threat hunts when there’s already an established IR process as well as detection mechanisms in place, but they think that incidents aren’t being detected early enough.

## Threat Hunting Mindset

- What's the basis for our hunt?
  - It is imperative that we start our hunt with leads comprised of accurate pieces of info such as known relevant malware as well as trusted Threat Intelligence.
    - Through leads, we give threat hunters better chances of achieving amazing things, from easy wins like looking for malicious binaries to more complex hunting projects like finding patterns of activity of certain groups that target organisations similar to us or industries we’re part of

- Threat Intelligence
  - It’s essential that we arm ourselves with critical information that will let us know more about the threat(s) that we may be dealing with.
    - Understanding the bad that we may be dealing with is akin to knowing how they might behave within our environment, possibly allowing us to narrow down our search to specific sweet spots such as specific pieces of data they might be interested in, or even knowing which groups or APTs might be particularly interested in targeting us.
  - Unique Threat Intelligence:
    - Not many organisations have the kind of intrusion experience that would allow them to study and develop usable intelligence from said intrusion and even fewer have the capability of developing it internally.
    - EXs being IOCs specifically documented on previous intrusions would be the most obvious and straightforward example for this one

## Threat Hunting Process

- What do we hunt for?
  - The answer to this question dictates the direction of the hunt.
  - As the hunt progresses, the threat hunter will always go back to this question, ensuring that pieces of evidence that link to its answer are gathered.

- Known Relevant Malware
  - The internet is ripe with known malware samples, and a lot of them have publicly available published analyses.
    - Identify the relevant threat actors that might take an interest in you, and hunt for traces of the malware that they use in their toolkits within your organisation.

- Attack Residues
  - Attack residues are a great starting point as well, especially if you think that an attack has happened already.
    - It works particularly well with good Threat Intelligence as it would be as straightforward as ticking off a list of attack residues to check for within the environment.
      - EX: Indicators of Compromise (IOC) & indiactors of attacks (IOA)
  - The challenging part here, however, is knowing your environment well enough to be able to separate attack residues from normal behaviour.
    - A lot of attack residues blend well with normal environmental noise.
    - Pair this with a more advanced adversary who knows how to clean up after themselves or even worse - employ tactics that are already stealthy from the get-go, and the hunt is suddenly not as straightforward as it seems.
  - It’s still a good way to cover our bases
    - Remember that we only need to catch them making a mistake once while they need to constantly be perfect in their movements.

- Known Vulnerabilities of Products/Applications Being Used
  - Known vulnerabilities of assets should be actively hunted and patched accordingly.
  - The org should be extra vigilant for announcements of zero-day vulnerabilities that may be affecting these assets.
  - Immediate checks should be done on:
    - If the current version really is vulnerable
    and
    - If there are traces of the vulnerability being exploited for as long as historical data may allow.

- Now that we know what we want to hunt for, “How do we hunt for it?”
  - Attack Signatures and IOCs
    - Upon identifying the subject of the hunt, it’s imperative that we ensure that we characterise them into specific and actionable identifiers by which we will immediately recognize.
      - This is done most effectively via Attack Signatures and IOCs.
      - By condensing the “whats” of the hunt down to Attack Signatures and IOCs, we suddenly have a set of information that we can then immediately compare to our available historical data.
  - Logical queries
    - Characterising the vulnerable assets via specific actionable identifiers, such as the application version, would allow us to craft logical queries that filter for these identifiers.
      - This essentially gives us low-hanging fruits for easy pickings that, at the same time, impact the organisation’s security posture directly.
  - Patterns of Activity
    - Characterise their behaviour through patterns of activity that they are inclined to make.
      - In any conversation regarding this, the MITRE ATT&CK Matrix has always been a top resource

- When do we decide to move on?
  - In CTFs, you immediately know before you even start that by the end of it, if you do everything right, there will be a flag waiting for you.
    - If you aren’t able to get the answer, that just means that you need to study more and further improve so that the next time you tackle a similar problem, you’ll have more chances of capturing that flag.
      - That’s not necessarily the case for Threat Hunting, it’s completely possible, and even more probable than not, that you do everything right and not find anything.










