Beats for Boobs website
=======================

This website is created using [Hugo](http://gohugo.io), the static website engine.

## Editing the website online

In most cases, you should be able to edit the website online via the github.com site.  The following are links to the most commonly editing pages.  Once you are done editing a page, a job will automatically be triggered that will deploy the website to the staging site.

* [Home Page]()
* [About]()
* Tribute Wall
	* [In Honor Of]()
	* [In Memory Of]()
* [Contact]()
* [Make a Donation]()
* [Beneficiaries]()

## Editing the website locally

To edit the website, you'll need to start hugo.  You can do that as follows:

* Open a Terminal shell

```
press Command + Space
type terminal
press Enter
```

* Change directory to your code, 

```
cd ${HOME}/website
```
	
* Start hugo

```
hugo server --watch
```

* Open a browser and goto [http://localhost:1313](http://localhost:1313)

## Setting up a Local Development Environment

The following describes how to set up a development environment to work locally.  In many cases, you should be able to just edit the content inline on the github.com site.

### Github for Mac

To start off, you'll need to install [Github for Mac](https://mac.github.com/).  

1. Click the Download Github for Mac link
2. Double click the zipfile that gets downloaded.  This should create an application, Github
3. Drag the Github application to your applications folder
4. To start Github for Mac, press Command + Space and type ```github``` and press enter once
   you see Github for Mac selected

### TODO - Add Instructions for code checkout via Github for Mac

### Hugo (Mac Installation)

Once you've checked out the source code for the project, you'll need to download Hugo, 
the static website generation tool.

You can use the following steps to install Hugo:

* Open the search menu by pressing Command + Space
* Type ```terminal``` to search for the terminal application
* Press enter once the top hit is terminal.  It should appear as a black box with white border
* Once a terminal window is opened with a prompt, change directory to where the website code
   is located

```
cd ${HOME}/website
```

* run the ```install_hugo.sh``` script

```
./install_hugo.sh
```

