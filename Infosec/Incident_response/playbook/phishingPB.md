# Example of phishing Playbook (using the IR process to create it) and starting with preperation

* Starts with Preperation of playbook, which requires:
  * Relevant Logs
    * Email gateway logs
  * Required Fields
    * Email recipient
    * Email sender
    * Subject
    * URLs
    * Attachment names and hashes
    * QR codes
  * Possible Use Cases
    * Known malicious file hashes in attachment
    * Suspicious file extension in attachment
    * Suspicious sender domain
    * Newly registered sender domain
    * Credential harvesting URL in email
    * Sender domain is possible typosquatting
    * URL contains possible typosquatting domain
  * Recommended Security Controls
    * Block email
    * Quarantine suspicious attachments
    * Delete email from the inbox

## Playbook: Detection and Analysis

* Detection of a phishing email attack (Few use cases to trigger a phishing playbook)
  * Email from a recently created domain
  * An email containing a known malicious link
  * An email containing a suspicious attachment file type (rar, zip, 7z, exe, chm, htm, ps1, etc.)
  * Email from a domain with a bad reputation

* Once the playbook is triggered, the analyst must verify the initial data (AKA Analysis)
  * At this stage, the analyst will determine the following information from the logs and email headers:
    * Identify the sender and recipient(s).
    * Build context from the email subject, recipient's designation and department, and email body (if available).
    * Identify the sender's IP address and domain.
    * Extract any URLs, attachments, or QR codes from the email.
      * Check if the QR code leads to a URL or IP address.
    * Check threat intel sources for the reputation of the sender's email address, domain, and IP address.
      * Also, check how old the domain is and whether it can be a typosquatting domain.
    * Check if the extracted URLs, attachments, or QR codes are marked as malicious on VirusTotal, Hybrid Analysis, URLScan or other such platforms.
      * Do this for all artefacts extracted from the email.
    * Check if the URLs contain any credential phishing platform.
    * Hunt for any suspicious logins from the email recipients to identify users who might have been phished.
      * Based on the results from the above analysis, the analyst will conclude whether the email is a phishing or a clean email.
      * If the analyst identifies the email as phishing, they might escalate it to the next step.
        * *Otherwise, the incident will be closed here.*

### Playbook: Containment, Eradication, and Recovery

* Once the analyst has identified the phishing email is a True Positive, they must take steps to *contain* the threat (Aka Containment)
  * These steps need to be spelt out in the playbook to avoid ambiguity.
  * The following steps can be taken using the above checklist to contain a phishing email.
    * Extract artefacts from the phishing email, such as IP addresses, email addresses, file hashes, domains, etc.
    * Block the sender's email address, domain, and IP address on the email gateway.
    * Block file hashes on the EDR.
    * Block phishing links on the web proxy so that no outbound connection to the proxy is possible.

* H/O, if people already interacted with the email, further steps might be needed to eradicate the threat (aka Eradication):
  * Remove the phishing emails from the inbox of all the affected users.
  * If someone has already clicked on the link or downloaded the attachment, isolate their machine from the network, revoke their active logon sessions, reset their credentials, and initiate the malware playbook (if required).

* Once the threat has been eradicated, the affected systems and user accounts must be returned to normal service (aka Recovery)
  * The following steps might be taken to ensure this happens smoothly:
    * Reset credentials of all the affected accounts and ensure that MFA is enabled and strict passwords are created as per policy.
    * Audit the activity of the affected user accounts and reverse any suspicious activities that the malicious actor might have carried out.
    * Reimage any machines that might have been affected by malicious attachments and restore them to their last known good configuration.

#### Playbooks: Post-Incident Activity

* The post-incident activity is guided by broad guidelines outlined in the *IR plan instead of the playbooks.*
