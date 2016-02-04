# This bash script automates the process for sharing past homework via GitHub.
# The script assumes you have already cloned the homework-share repo and copies
# your homework into the appropriate folder. It does NOT push up to Git.

# Thank you to Scott who pointed me to the read statements and conditionals!

# STEP 0: Welcome message then solicit user input for folder paths and week #
echo "... Starting process to share homework."
echo "On the next line please enter the folder path for the directory where you \
cloned your studentXXX repo. Your path should NOT end with / or /week_# "
read -p ">>> Enter the path here:" ORIGINAL_LOC
echo ""

echo "Next enter the folder path for the directory where you cloned the homework-share \
repo. Just like before, your path should not end with / and should not include the week_# folder."
read -p ">>> Enter the path here:" DESTINATION
echo ""

echo "Finally, which week's homework do you want to share?"
read -p ">>> Enter the number here:" WEEK
read -p ">>> and your GitHub username here:" USERNAME
echo ""

# STEP 1: perform git pull to update share folder and prevent merge conflicts
cd $DESTINATION
echo "... performing git pull."
git pull

# STEP 2: copy files in to new folder
mkdir week_$WEEK/$USERNAME
echo "... copying files."
cp $ORIGINAL_LOC/week_$WEEK/* $DESTINATION/week_$WEEK/$USERNAME/

# STEP 3: commit changes (credit: Scott for conditional sequence, Thank You!)
echo "... Files copied. Ready to commit."
echo "... NOTE: all changes to share folder will be committed."
read -p ">>> Proceed with commit? (y/n):" CONTINUE
if [[ $CONTINUE = "y" ]]
then
    echo "... committing changes."
    git add .
	git commit -m "sharing week $WEEK HW ( $USERNAME )"
    echo "... files committed, but not pushed."
    echo "HW ready to share, just push them up when you are ready."
else
	echo "... OK - files moved, but not committed."
    echo "HW ready to share, commit and push when you are ready."
fi
