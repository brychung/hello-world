# This file is an attempt to make a bash script to automate the process
# for sharing past homework via GitHub. Feel free to download and adjust
# the global variables to your own situation.
#
# Original Write and Idea: Maya
# Initial Code Draft: Scott

#############################################################################

# STEP 0: git pull the homework-share repository
# Edit this path to be specifically applicable to your homework-share clone
destination=C:/Users/"Scott Marler"/Documents/"UC Berkeley"/Courses/"Bridge - Python"/homework-share/
cd "$destination"    			#The quotes around the destination variable account for any spaces that may be in the path name
echo 					#just a line spacer to make the output easier to read
echo "Hello. Just a moment - performing git pull on $destination"
echo
git pull

# STEP 1: Solicit the week # and define folder paths as variables
# Edit this path to be specifically applicable to your folder where you keep the assignments you push weekly for official homework submission.
# Leave the ending structure in place (so that it ends in "/assignment-upstream/week_")
origin=C:/Users/"Scott Marler"/Documents/"UC Berkeley"/Courses/"Bridge - Python"/assignment-upstream/week_
echo
# In my own testing, I attempted to create my named folder under a week that didn't yet exist, and it wouldn't let me do it...
# but the warning is still valid.
echo "In theory, this will only let you post to a week number whose folder has already been created, but VERIFY for yourself!"
echo
# Ask user for the week number. This is looking for a simple integer input to append to "week_". Assign to the variable $week
read -p "Enter the week number of the homework you wish to share: " week
echo
# Ask user for their github username. This is to conform with the instructions in readme.md. Assign to the variable $week
read -p "Thanks. Now enter your GitHub username: " username
echo
# Define origin and destination for copy and paste
ORIGINAL_LOC=$origin$week
SHARED_LOC=$destination\week_$week\/$username

# Step 2: Make a new directory with the user's input for username
mkdir "$SHARED_LOC"

# Step 3: Copy ALL contents of the live homework folder from assignment-upstream into the shared location folder
cp "$ORIGINAL_LOC"/* "$SHARED_LOC"

# Step 4: Offer to add/commit/push
read -p "Are you ready to push to the shared homework repository (y/n)? " choice
echo

if [[ $choice = "y" ]]
then
	read -p "What is your commit message?: " commit
	cd "$SHARED_LOC"
	echo "Adding..."
	git add .
	echo
	echo "Committing..."
	git commit -m "$commit"
	echo
	echo "Pushing..."
	git push
	git status
	echo
	
else
	echo "OK - files moved, but not pushed. You'll have to do that manually."
	echo
fi

echo "All done"
