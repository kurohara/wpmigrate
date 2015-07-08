# wpmigrate
A simple tool for migrating WordPress site.  
This may be able to help your dayly maintainance task of your WordPress site.  

Didn't you considered about having 'mirrored' WordPress for easy maintainance?  
Is your site is changing its behavior frequently?  
You may think we don't have to start up own site with completely built up plans...  
So you may need the way to 'flick' your TEST SITE with your RUNNING SITE.  

## How to use this.

1. Create your test site on your local environment.  
   may be its site address 'http://localhost:8080/'  
1. Copy all of these files to your WordPress directory.  
1. Do your maintainance work on your local site.  
   You may use the command line ```php -S localhost:8080 -t wordpress``` to start up your testing web site.  
1. You want to migrate to your running (external) site, you need to do 'export' like as:  
   1. Create symbolic link to export.sh (just once)
      If your local site address is 'http://localhost:8080/', you create the symbolic link like:   
        ```ln -s export.sh exportlocalhost:8080.sh```
   1. Run export tool.  
     If your local site address is 'http://localhost:8080/', you run:   
     ``` ./exportlocalhost:8080.sh ```  
     You may see the ```database.sql``` file has created.  
1. Copy all WordPress directory files to the server that hosting your 'running' site.  
   You can do this by using Github or Bitbucket or something like that.
1. Log in to the server, then do 'import' task like as:  
   1. Create a symbolic link for 'import' tool(just once), if your 'running' site address is 'http://www.mycompany.com/wordpress' then    
     ``` ln -s import.sh importwww.mycompany.com~wordpress.sh ```
   1. Run the import tool, if your 'running' site address is 'http://www.mycompany.com/wordpress',  
     ``` ./importwww.mycompany.com~wordpress.sh ```
1. You've done.

* On creating symbolic links, if your site address(local testing or hosted runnning) have '/' character, it can be replaced to '~' character.  
* If your 'running' site have not have the database setup, you may be able to use 'createdb.sh' for set up one.
  This script uses OS Auth of MySQL database by default, but if you set up MySQL database to use password auth only, you can tell the password to this script like,  
  ``` rootpasswd=password_for_root_user_of_mysql ./createdb.sh ```
  or you may want to type the password interactively, do  
  ``` rootpasswd=" " ./createdb.sh ```

Author: Hiroyoshi Kurohara(Microgadget,inc.)  
   http://www.microgadget-inc.com/
   
