# what is the page source in on a web app?

* The page source is the human-readable code returned to our browser/client from the web server each time we make a request.

## How do I view the Page Source?

* While viewing a website, you can right-click on the page, and you'll see an option on the menu that says View Page Source.
  * Most browsers support putting view-source: in front of the URL for example, view-source:
    * https://www.google.com/
      * In your browser menu, you'll find an option to view the page source. This option can sometimes be in submenus such as developer tools or more tools.

### Tips

* External files such as CSS, JavaScript and Images can be included using the HTML code.
  * What should be displayed is either a blank page or a 403 Forbidden page with an error stating you don't have access to the directory.
  * H/O if the directory listing feature is enabled it can list every file in the directory
    * Can be an issue or not depending on what is stored there
      * Should not store source code, backup files, or other confidential info.

* Many websites these days aren't made from scratch and use what's called a framework.
  * A framework is a collection of premade code that easily allows a developer to include common features that a website would require, such as blogs, user management, form processing, and much more, saving the developers hours or days of development.
    * Viewing the page source can often give us clues into whether a framework is in use and, if so, which framework and even what version.
    * Knowing the framework and version can be a powerful find as there may be public vulnerabilities in the framework, and the website might not be using the most up to date version




