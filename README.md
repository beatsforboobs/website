Beats for Boobs website
=======================

This website is created using [Hugo](http://gohugo.io), the static website engine.

## Links

* [Staging Website](http://beatsforboobs-staging.s3-website-us-east-1.amazonaws.com/)
* [Live S3 Site](beatsforboobs-production.s3-website-us-east-1.amazonaws.com)
* [Production Website](http://beatsforboobs.org)

## Deploying the Site

The staging site will deploy automatically.  Generally, the updated staging site should be available 2 to 3 minutes after you commit a change to github.  

The production site needs to be manually deploy via the [Deployment Pipeline](https://snap-ci.com/beatsforboobs/website/branch/master).  Press the play button on the most recent deployment.

* [Deployment to Production](https://snap-ci.com/beatsforboobs/website/branch/master)

## Editing the website online

In most cases, you should be able to edit the website online via the github.com site.  The following are links to the most commonly editing pages.  Once you are done editing a page, a job will automatically be triggered that will deploy the website to the staging site.

* [Home Page](https://github.com/beatsforboobs/website/blob/master/layouts/index.html)
* [About](https://github.com/beatsforboobs/website/blob/master/content/content/about-us.md)
* Tribute Wall
	* [In Honor Of](https://github.com/beatsforboobs/website/blob/master/data/in-honor-of.txt)
	* [In Memory Of](https://github.com/beatsforboobs/website/blob/master/data/in-memory-of.txt)
* [Contact](https://github.com/beatsforboobs/website/blob/master/content/contact.md)
* [Make a Donation](https://github.com/beatsforboobs/website/blob/master/content/content/make-donation.md)
* [Beneficiaries](https://github.com/beatsforboobs/website/blob/master/content/content/2014-san-francisco-beneficiaries.md)

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

