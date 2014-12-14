Updating Content
===========

I've tried to simplify content management to make it easier to update.  Most of the website is written in a language called Markdown rather than raw html.  The benefit is that it looks more like editing notepad than markup.  This page attempts to provide a visual pictorial of how to do that.

## Prerequisites

* You need a github account (don't worry, they're free).  [Sign up for a Github Account at https://github.com/](https://github.com/)
* Once you have an account, email me the login that you created so I can add you to the beatsforboobs organization

## Editing Content

The following screenshots describe how to edit content.  Conceptually, the steps are (assuming you're logged in to github):

1. Visit the [website project page](https://github.com/beatsforboobs/website)
2. Click the link for the page you want to edit, this will bring you to the view mode version of the page
3. Click the edit link in the upper right corner
4. Make your changes
5. Click save, which they call ```Commit Changes```
6. Verify your changes on the staging site (generally takes about 60 seconds to deploy)
7. Go to snap-ci.com and login with your github.com account 
8. Select the beatsforboobs website project 
9. Click the deploy button

By habit, I always make production deployments manual.  Simple, but manual.  If you like, we can automate it so that steps 6 - 9 happen automatically.

## 1) Visit the beats for boobs github site and 2) Click the page you want to edit 

![Visit the beatsforboobs github page](https://s3.amazonaws.com/beatsforboobs-production/docs/1-github.png)

## 2. In the upper right corner, click edit

![Click edit](https://s3.amazonaws.com/beatsforboobs-production/docs/2-view-page.png)

## 3. Make your edits and save

![Click edit](https://s3.amazonaws.com/beatsforboobs-production/docs/3-edit-page.png)

## 4. When editing In Memory Of and In Honor Of, simply add the name to the list

Follows the same flow as normal edits otherwise.

![Click edit](https://s3.amazonaws.com/beatsforboobs-production/docs/4-edit-in-memory-of.png)

## 5. To deploy the app, visit [beatsforboobs snap-ci.com site](https://snap-ci.com/beatsforboobs/website/branch/master) and click deploy.

![Deploy to production](https://s3.amazonaws.com/beatsforboobs-production/docs/5-deploying.png)

