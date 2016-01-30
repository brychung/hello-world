# Git and GitHub Notes from Week 3 of Info W18 (Python Bridge Course)
This document is an attempt to summarize my understanding of the different git and GitHub actions that we've learned about this week.

_**WARNING**: there may be errors in the text below, I am completely new to git and may have gotten some things wrong. If you see errors or things that are unclear please feel free to edit and push up your own changes... thats why I'm putting it on the playground :)._

PS. If you want to edit this but are not yet comfortable with markdown, check out [this](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) guide.

**************

### The first time you work with a new repo (that belongs to someone else on github) you’ll want to go through these steps:

1. __Fork__ the repository for that week. Do this on the __GitHub webpage__. _This creates a copy of the week’s materials that you can edit. Thus far, the forked copy of the repo is a directory in your github account. To make changes you’ll first have to get the files on to your local machine (see steps below). **NOTE: forking is only necessary for a a repo for which you do not have ‘write access.’ If you are a contributor (a.k.a. the repo’s owner has granted you ‘write access’) then you can skip this step and go ahead and clone the original repo onto your local machine.**_

2. __Clone__ the repository onto your local machine. Do this via the __command line__. _This creates a copy of your fork on your local machine … a new directory within whichever directory you executed the command line process. ‘Copy' is sort of a misnomer because we don’t intend for this folder to be different from the online repo except when you are in the process of editing a file. Maybe think of this as two different portals to the same folder… portals that need to be synched after changes are made on either end._
    - `git clone https_or_ssh_link_to_your_github_repo`

3. __Edit__ files on your local machine and save changes locally. _You can do this in a text editor like notebook or sublime, or from the command line._

4. __Commit__ the changes you make locally. Do this via the __command line__. _This tells git to record a snapshot of your changes and is the first step towards synching your local folder and GitHub repo._
    - `git status` : _shows files that have been modified_
    - `git add filename.txt` : _confirms that these are the changes you want to synch up and “stages” the file to be committed (recorded by version control)._
    - `git commit -m “description”` : _records changes in version control system on your local machine._

5. __Push__ the changes from your local machine back up to GitHub. Do this via the __command line__. _This is the synching step that will then allow your professors to see your work._

    - `git push origin master` : _synchs your local folder with the ‘origin’ repo’s ‘master’ branch. The names origin and master could change if you wanted to synch elsewhere, but for now ‘origin’ is the name git automatically gives to the repo you cloned from and master branch is the only branch we have._

6. [Optionally] Submit a __pull request__ to the creator of the original repo you forked. Do this on the __GitHub webpage__ if you think your changes should be merged (upstream?) with the main repository that you forked. _This is primarily used when you are collaborating… especially if multiple people are contributing to the same project._

**************

### If you have previously set up the repo (and other people have likely made edits to it since you last contributed), follow these steps each time you want to contribute:

1. __Fetch__ then __merge__ changes in the repo to your local machine. Do this via the __command line__. _These steps ensure that you are looking at (and editing) the latest version of all files and allows you to push changes up without re-writing over edits that have changed since you originally cloned the repo._

    - `git fetch` : _makes your local machine aware of remote changes to the repo_
    - `git merge origin` : _updates your local directory to reflect these changes_

2. [OR] __Pull__ any changes in the repo to your local machine. Do this via the __command line__. _This does the same thing as the above, except all in 1 go._

    - [OR]`git pull` : _synchs your local folder with an already established remote repo… basically does the above two steps in one go. Upside: quick, downside: you can’t see what changes are being made before approving them._

3. __Edit__ files on your local machine and save changes locally. _Just as above, you can do this in a text editor or at the command line depending on what you're comfortable with. I use the text editor Atom and find it easy to use._

4. __Commit__ the changes you make locally. Do this via the __command line__. _This tells git (the software not the website) to keep track of your changes by taking a snapshot of them . This is the first step towards synching your local folder and GitHub repo online._

    - `git status` : _shows files that have been modified_
    - `git add filename.txt` : _confirms that these are the changes you want to synch up and “stages” the file to be committed (recorded by version control)._
    - `git commit -m “description”` : _records changes in version control system._

5. __Push__ the changes from your local machine back up to GitHub. Do this via the __command line__. _This is the synching step that will then allow your professors to see your work._

    - `git push origin master` : _synchs your local folder with the ‘origin’ repo’s ‘master’ branch. The names origin and master could change if you wanted to synch elsewhere, but for now ‘origin’ is the name git automatically gives to the repo you cloned from and master branch is the only branch we have._

6. [Optionally] Submit a __pull request__ to the creator of the original repo you forked. Do this on the __GitHub webpage__ if you think your changes should be merged with the main repository that you forked. _This is primarily used when you are collaborating… especially if multiple people are adding to the same project. In that kind of situation the main project will be owned by one person (or a small team) that will get to decide which changes get “pulled” in and in what order. **You don’t need to do this if you are a contributor or owner of the repository because in that case you didn’t fork it so your changes were pushed directly to the original repo!**_

**************

### To turn an existing folder(on your local machine) into a github repository:

1. Create and name a new repo. Do this on the __GitHub webpage__.

2. Inside the folder on your local machine, __create a README.md__ file. Do this via the __command line__. _This is a markdown file that should briefly describe the repo. It can also later be a place for documentation relevant to the repo. Technically you could have created this file in a text editor and just saved it with the name 'README.md' but since most of the time you aren't going to have a lot to say right away the command line code below is a quick way to make the file. You can always edit it later in a text editor._

    - `echo “ # repo_name” >> README.md` : _creates a markdown file with a title. Replace repo name with whatever titel you want but keep the hashtag- thats what makes markdown treat the words as a title._

3. __Initialize__ a new git repo inside this folder. Do this via the __command line__.
    - `git init` : _tells your computer's software to start tracking version control in this folder._

4. __Stage__ and __Commit__ your files including the README.md. Do this via the __command line__.

    - `git status` : _shows files that are not yet staged_
    - `git add filename.txt` : _confirms that these are the changes you want to synch up and “stages” the file to be committed (recorded by version control)._
    - [OR] `git add *` : _stages all of the files in the current folder simultaneously_
    - `git commit -m “description”` : _records changes in version control system_.

5. Add a __remote__ to your repo. Do this via the __command line__.

    - `git remote add origin https_or_ssh_link_to_your_github_repo` :  _establishes a connection between your local git folder and the online repo allowing them to synch up in the future. It also labels the online repo as “origin” which you’ll use for push and pull actions when synching in the future._

6. __Push__ the changes from your local machine back up to GitHub. Do this via the __command line__. This is the synching step that will then allow your work to be seen online on GitHub.

    - `git push -u origin master` : _synchs your local folder with the ‘origin’ repo’s ‘master’ branch. The names origin and master could change if you wanted to synch elsewhere, but for now ‘origin’ is the name git automatically gives to the repo you cloned from and master branch is the only branch we have._ WHAT DOES THE “-U” DO????

********************************

#### Sources and Resources (add your own below)

BASIC GIT ACTIONS at [this link](http://rogerdudler.github.io/git-guide/) (Bookmark this!)

CLEAR GIT VIDEOS at [Codecourse: Git & GitHub on YouTube](https://www.youtube.com/watch?v=DR7MLaAKcUk&list=PLfdtiltiRHWFEbt9V04NrbmksLV4Pdf3j)

HELPFUL ARTICLE [on branches and merging](http://longair.net/blog/2009/04/16/git-fetch-and-merge/)
