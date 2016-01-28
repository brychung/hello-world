# Assignment Upstream

This repository is the repository for all of assignments, all changes and assignments will be broadcast from this repository. While you may choose to do this your own way, we recommend that you follow the instructions below.

## Important Instructions
You do not need to do any forking of any repositories. We have created all of the repositories that you are going to need for this class.

## Initial Setup
3To set this up you're going to need to mirror this repository to your local machine then edit the repository on your local machine to point to both the upstream as well as your `student123` repository.
``` sh
# copy this repository
git clone git@github.com:MIDS-INFO-W18/assignment-upstream.git
cd assignment-upstream
git remote remove origin
# add it back as another name
git remote add upstream git@github.com:MIDS-INFO-W18/assignment-upstream.git
# add your student123 directory as the 'origin'
git remote add origin <ENTER YOUR REPOSITORY SSH URL HERE>
```

Keep it mind that the above url wil lneed to be in the format of `git@github.com:MIDS-INFO-W18` etc.

## Every week

To get the assignment you'll be running
``` sh
# git is the command, pull is the kind of sub-command, upstream is the repository pointer and master is the branch
git pull upstream master
```

Then once you've committed your answers. You'll push it up to your personal student repository.
```sh
git push origin master
```
