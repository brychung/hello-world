# Assignment upstream

This repository is the repository for all of assignments, all changes and assignments will be broadcast from this repository. While you may choose to do this your own way, we recommend that you follow the instructions below.

## Initial Setup

``` sh
git clone https://github.com/MIDS-INFO-W18/assignment-upstream-SS.git
cd assignment-upstream-SS
git remote remove origin
git remote add upstream https://github.com/MIDS-INFO-W18/assignment-upstream-SS.git
git remote add origin <ENTER YOUR REPOSITORY SSH URL HERE>
```

Keep it mind that the above url wil lneed to be in the format of `git@github.com:MIDS-INFO-W18` etc.

## Every week

To get the assignment you'll be running
``` sh
git pull upstream master
```

Then once you've commited your answers. You'll push it up to your personal student repository
```sh
git push origin master
```
