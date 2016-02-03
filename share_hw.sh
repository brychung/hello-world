# This file is an attempt to make a bash script to automate the process
# for sharing past homework via GitHub. Feel free to download and adjust
# the global variables to your own situation.
#
# I am also looking for help in generalizing the process. Ideally the
# script would be something that I could use week to week with out editing
# it each time. In order for that to be the case we need a way to solicit
# the week # from the user. I don't know how to do this in bash...

#############################################################################

# STEP 0: Somehow solicit the week # and folder paths... ???? (I don't know how
# to do this so for now I'm just making them global variables. It would be great
# if we could just append the name of the week to the end of the general folder)

# path for HW Submission folder (original location of files)
ORIGINAL_LOC = /Users/mmillervedam/Documents/MIDS/python_bridge_course/HW_Assignments/week_1
# path for HW Sharing folder (destination for shared files)
DESTINATION = /Users/mmillervedam/Documents/MIDS/python_bridge_course/homework-share/week_1/mmillervedam

# STEP 1: cd into folder where I save and submit my hw for that week.
cd $ORIGINAL_LOC

# STEP 2: use ls to get a list of files in the folder
file_names=$( ls )

# STEP 3: loop through list copying each file to the location of the share folder
# (The internet suggests that this is what a bash loop should look like, IDK...)
for file in $file_names; do
    cp $file $DESTINATION/$file #I'm not sure this is going to work how I want it to
done

# STEP 4: cd into share folder
cd  $DESTINATION

# STEP 5: git pull, git push to upload?
# ...... or maybe the pull should have happened earlier?
# ...... or maybe we should let the user do this step on their own outside the script?
