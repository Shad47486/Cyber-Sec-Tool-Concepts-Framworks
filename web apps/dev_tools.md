# What is the browser Developer tool?

* Every modern browser includes developer tools; this is a tool kit used to aid web developers in debugging web apps and gives you a peek under the hood of a website to see what is going on.
  * Consists of 3 features:
    * Inspector, Debugger, & Network

## Inspector

* Element inspector assists us with this by providing us with a live representation of what is currently on the website
  * We can also edit and interact with the page elements, which is helpful for web developers to debug issues.
    * This tool helps bc is the page source doesn't always represent what's shown on a webpage; this is because CSS, JavaScript & user interaction can change the content and style of the page, which means we need a way to view what's been displayed in the browser window at this exact time.

## Debuggers

* Intended for debugging JavaScript & for web deve wanting to work out why something might not be working.
  * H/O as penetration testers, it gives us the option of digging deep into the JavaScript code.
    * In Firefox and Safari, this feature is called Debugger, but in Google Chrome, it's called Sources.

* Many times when viewing javascript files, you'll notice that everything is on one line, which is because it has been minimised, which means all formatting (tabs, spacing and newlines) have been removed to make the file smaller.

* Can also utilise another feature of debugger called breakpoints
  * These are points in the code that we can force the browser to stop processing the JavaScript and pause the current exe.

## Network

* Can be used to keep track of every external request a webpage makes.
  * If you click on the Network tab and then refresh the page, you'll see all the files the page is requesting.

* When using the send message button it will sent events in the background using a method called AJAX.
  * AJAX is a method for sending and receiving network data in a web application background without interfering by changing the current web page.
