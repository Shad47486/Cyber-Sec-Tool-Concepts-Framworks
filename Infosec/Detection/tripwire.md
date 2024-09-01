# What is a tripwire?

* Tripwires are a way to cover “unknown unknowns” and even study an adversary.
  * The most common tripwires are Honeypots and Hidden Files and Folders.

## How to create a Basic Tripwire in Window?

* click on the start icon and type "Local"
  * The Local Security Policy application should appear.
    * Open the application, then navigate to Security Settings → Local Policies → Audit Policy.
      * Open the Audit object access policy, tick the boxes beside Success and Failure, click Apply, and finally click OK.
        * This entails that all access attempts will be logged, regardless of whether it succeeded.
          * Once you're done, you may proceed to close the Local Security Policy application.

* After configuring the Local Security Policy, nothing new will immediately happen by default.
  * We have to specify in the actual file or folder that we intend to monitor it and as such, for our purposes, we will create a fresh file wherein our tripwire setup can be implemented and consequently observed.
    * Right-click anywhere on the desktop → New → Text Document.
      * A new unnamed text file will appear on the Desktop, and we can name it "Secret Document".
        * Right-click the document → Properties → Security → Advanced → Auditing
          * This is where we will create and specify an audit entry for our Secret Document.
            * Click on Add → Select a principal.
              * This particular pop-up is where we can specify which users or groups we want to be alerted on whenever they access our Secret Document.
                * You have a choice to be very granular, but for our purposes, we intend to be general and so, on the text box, write "Everyone", then press Enter.

* The Principal should now reflect "Everyone" and the permissions should now allow granular selection.
  * Here you can specify all the activities on our Secret Document you want to audit.
    * You can toggle to the advanced permissions via the Show advanced permissions on the upper right-hand corner of the area for an even broader selection of activities.
      * Click OK when you're done exploring, and then click Apply and OK on the Audit entry page. Finally, we click on OK on our Secret Document properties.
        * *Recommendation* - If you intend to track multiple files, it is recommended to have them categorized into folders so as to make it easier to audit their access.

* At this point, the setup is complete and auditing is active for our Secret Document.
  * Anyone who accesses it will be logged and its details will be recorded in the Security event log with an Event ID 4663.
    * This Event ID, along with the other Object Access Event IDs, can then be filtered and furnished into alerts that would immediately tell your analysts of tripwires being activated, immediately giving value to the organization's security.

[More info on Object Access Events](</https://www.ultimatewindowssecurity.com/securitylog/book/page.aspx?spid=chapter7>)