# Creating a Simple Splunk App

* Splunk apps are pre-packaged software modules or extensions that enhance the functionality of the Splunk platform.
  * The purpose of Splunk apps is to provide specific sets of features, visualizations, and configurations tailored to meet the needs of various use cases and industries.

* Steps involve:
  * Once the Splunk Instance is loaded, click on the Manage App tab as highlighted.
  * It will take us to the page that contains all the available apps in Splunk. To create a new app, Click on the Create App.
    * Next, fill in the details about the new app that we want to create.
      * The new app will be placed in the /opt/splunk/etc/apps directory.
  * A new Splunk app has been created successfully and it can be shown on the Apps page.
    * Click on the Launch App to see if there is any activity logged yet.

* Splunk App directory
  * Some of the key directories and files that are present in the app directory are explained briefly below:
    * app.conf
      * Metadata file defining the app’s name, version, and more.
    * bin (directory)
      * Holds custom scripts or binaries required by the app.
    * default (directory)
      * Contains XML files defining app dashboards and views.
    * local (directory)
      * Optionally used for overriding default UI configurations.
