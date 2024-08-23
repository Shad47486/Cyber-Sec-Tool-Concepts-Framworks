# What is Hypertext Transfer Protocol (HTTP)?

* Hypertext Transfer Protocol (HTTP) is the protocol used to transfer web pages.
  * Your web browser connects to the webserver and uses HTTP to request HTML pages and images among other files and submit forms and upload various files.
    * Anytime you browse the World Wide Web (WWW), you are certainly using the HTTP protocol.

* HTTP sends and receives data as cleartext (not encrypted); therefore, you can use a simple tool, such as Telnet (or Netcat), to communicate with a web server and act as a “web browser”.
  * The key difference is that you need to input the HTTP-related commands instead of the web browser doing that for you.

* We need an HTTP server (webserver) and an HTTP client (web browser) to use the HTTP protocol
  * The web server will “serve” a specific set of files to the requesting web browser.
    * Three popular choices for HTTP servers are:
      * Apache (Free Open-Source)
      * Internet Information Services (IIS) (Closed Source - Not free)
      * Nginx (Free Open*Source)

* The most popular web browsers are:
  * Chrome by Google
  * Edge by Microsoft
  * Firefox by Mozilla
  * Safari by Apple.

## What is HTTPS?

* HTTPS is the secure version of HTTP.
  * HTTPS data is encrypted so it not only stops people from seeing the data you are receiving and sending, but it also gives you assurances that you're talking to the correct web server and not something impersonating it.

### How do browsers make requests to http/https?

* When we access a website, your browser will need to make requests to a web server for assets such as HTML, Images, and download the responses.
  * You use URLs to tell the browser where to access resources?
    * What is a Uniform Resource Locator (URL)?
      * Predominantly an instruction on how to access a resource on the internet.
        **EX: http://user:password@example.com:80/view-room?id=1#task3**
        * http (scheme) - This instructs on what protocol to use for accessing the resource such as HTTP, HTTPS, FTP (File Transfer Protocol).
        * user:password (user) - Some services require authentication to log in, you can put a username and password into the URL to log in.
        * example.com (host/domain) - The domain name or IP address of the server you wish to access.
        * 80 (port) - The Port that you are going to connect to, usually 80 for HTTP and 443 for HTTPS, but this can be hosted on any port between 1 - 65535.
        * view-room (Path) - The file name or location of the resource you are trying to access.
        * ?id=1 (query string) - Extra bits of information that can be sent to the requested path.
          * For example, /blog?id=1 would tell the blog path that you wish to receive the blog article with the id of 1.
        * task3 (Fragment) - This is a reference to a location on the actual page requested.
          * This is commonly used for pages with long content and can have a certain part of the page directly linked to it, so it is viewable to the user as soon as they access the page.

#### How to request a page from a web server on telnet?

1. Connect to port 80 using telnet 10.10.155.54 80.
2. Type GET /index.html HTTP/1.1 to retrieve the page index.html or GET / HTTP/1.1 to retrieve the default page.
3. Provide some value for the host like host: telnet and press the Enter/Return key twice.
