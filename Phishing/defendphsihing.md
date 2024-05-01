# Information on how to defend from phishing

- [MITRE for phishing](<https://attack.mitre.org/techniques/T1598/#mitigations>)

## What is the Sender Policy Framework (SPF)

- SPF is used to authenticate the sender of an email. With an SPF record in place, Internet Service Providers can verify that a mail server is authorized to send email for a specific domain.
  - SPF record is a DNS TXT record containing a list of the IP addresses that are allowed to send email on behalf of your domain
    - EX OF what a Basic SPF record may look like:
      - v=spf1 ip4:127.0.0.1 include:_spf.google.com -all
        - v=spf1 -> This is the start of the SPF record
        - ip4:127.0.0.1 -> This specifies which IP (in this case version IP4 & not IP6) can send mail
        - include:_spf.google.com -> This specifies which domain can send mail
        - -all -> non-authorized emails will be rejected
          - What is the meaning of the -all tag?
            - fail
    - [SPF Record Syntax](<https://dmarcian.com/spf-syntax-table/>)
    - [what is the difference between spf all and all](<https://dmarcian.com/what-is-the-difference-between-spf-all-and-all/>)
    - [How to create & add an SPF record](<https://dmarcian.com/create-spf-record/>)

## What is DomainKeys Identified Mail (DKIM)?

- DomainKeys Identified Mail (DKIM) is used for the authentication of an email that’s being sent.
  - Open standard for email authentication that is used for DMARC alignment.
  - A DKIM record exists in the DNS, but it is a bit more complicated than SPF
    - DKIM’s advantage is that it can survive forwarding, which makes it superior to SPF and a foundation for securing your email.
      - EX OF what a DKIM record may look like:
        - v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxTQIC7vZAHHZ7WVv/5x/qH1RAgMQI+y6Xtsn73rWOgeBQjHKbmIEIlgrebyWWFCXjmzIP0NYJrGehenmPWK5bF/TRDstbM8uVQCUWpoRAHzuhIxPSYW6k/w2+HdCECF2gnGmmw1cT6nHjfCyKGsM0On0HDvxP8I5YQIIlzNigP32n1hVnQP+UuInj0wLIdOBIWkHdnFewzGK2+qjF2wmEjx+vqHDnxdUTay5DfTGaqgA9AKjgXNjLEbKlEWvy0tj7UzQRHd24a5+2x/R4Pc7PF/y6OxAwYBZnEPO0sJwio4uqL9CYZcvaHGCLOIMwQmNTPMKGC9nt3PSjujfHUBX3wIDAQAB
          - v=DKIM1-> This is the version of the DKIM record. This is optional.
          - k=rsa -> This is the key type. The default value is RSA. RSA is an encryption algorithm (cryptosystem).
          - p= -> This is the public key that will be matched to the private key, which was created during the DKIM setup process.
            - Which email header shows the status of whether DKIM passed or failed?
              - authentication-results
      - [DKIM Selectors](<https://dmarcian.com/dkim-selectors/>)
      - [DKIM DNS record overview](<https://knowledge.validity.com/hc/en-us/articles/222481088-DKIM-DNS-record-overview>)

## What is Domain-Based Message Authentication, Reporting, and Conformance (DMRC)?

- Domain-Based Message Authentication, Reporting, and Conformance (DMRC) is an open source standard, that uses a concept called alignment to tie the result of two other open source standards, SPF and DKIM, to the content of an email.
  - SPF - a published list of servers that are authorized to send email on behalf of a domain
  - DKIM - a tamper-evident domain seal associated with a piece of email3
  - EX OF what a Basic DMARC record may look like:
    - v=DMARC1; p=quarantine; rua=mailto:postmaster@website.com
      - v=DMARC1 -> Must be in all caps, and it's not optional
      - p=quarantine -> If a check fails, then an email will be sent to the spam folder (DMARC Policy)
      - rua=mailto:postmaster@website.com -> Aggregate reports will be sent to this email address
  - [What is a DMARC Record?](<https://dmarcian.com/what-is-a-dmarc-record/>)
  - [DMARC overview](<https://dmarc.org/overview/>)
  - [DMARC Alignment](<https://dmarcian.com/alignment/>)
  - [Domain Health Checker](<https://dmarcian.com/domain-checker/>)

## What is Secure/Multipurpose Internet Mail Extensions (S/MIME)?

- Secure/Multipurpose Internet Mail Extensions (S/MIME) widely accepted protocol for sending digitally signed and encrypted messages.
  - 2 main ingredients for S/MIME are Digital Signatures & Encryption
  - Using Public Key Cryptography, S/MIME guarantees data integrity and nonrepudiation.
    - EX Scenrio:
      - If Bob wishes to use S/MIME, then he'll need a digital certificate. This digital certificate will contain his public key.
      - With this digital certificate, Bob can "sign" the email message with his private key.
      - Mary can then decrypt Bob's message with Bob's public key.
      - Mary will do the same (send her certificate to Bob) when she replies to his email, and Bob complete the same process on his end.
      - Both will now have each other's certificates for future correspondence.
    - [S/MIME for message signing and encryption in Exchange Online](<https://learn.microsoft.com/en-us/exchange/security-and-compliance/smime-exo/smime-exo>)

### Helpful Links

- [SMTP codes and how to troubleshoot them](<https://www.mailersend.com/blog/smtp-codes>)
