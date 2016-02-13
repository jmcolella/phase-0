## How does tracking and adding changes make developers' lives easier?
Tracking and adding changes makes for a very clear and organized way of changing files. The stage/commit chain of commands in git, along with git status, allows a developer to see where they are in the process of making any changes, which can be helpful if many changes are being made simultaneously. Without this procedure of tracking, it might be difficult for a developer to remember or follow what changes had been made and when, which are two key things to know if a problem arises in order to attempt to fix it.

## What is a commit?
A commit is a save point when working in git. It tells git "hey, I have a change that I made to my file, let's commit this to record and make it permanent." (I guess it's not exactly permanent, due to the HEAD^ command, but I guess a commit makes the change "official")

## What are the best practices for commit messages?
Best practices for a commit message should be to use the imperative when describing what changes were made. You should also be as detailed as possible so that others who are working on the project can follow the work you did. The best way to put a lot of information in a commit message is to use the -v command, as opposed to the -m command, which seems to be best for a quick, short message.

## What does the HEAD^ argument mean?
The HEAD^ argument allows you to change something from the last commit made. HEAD would do the same for the current commit made.

## What are the 3 stages of a git change and how do you move a file from one stage to the other?
I believe the 3 stages of a git change are 1) make a change to a desired file, 2) stage that change to be commited and 3) commit that change. To make a change, navigate to the branch of the file you desire to work on and open the text editor you are using for the project to make the change. Once you are done making the change, you can check git status to see that there is a change ready to be staged.If you want to stage that change, you use the command "git add file-name" Check your git status to ensure that the change has been staged for commit. Finally, to commit the change, you use the command "git commit -v" (or -m). This will then prompt you to leave a message explaining the changes. If you use -v, save the message and exit the comment page. Once that happens, the commit is complete. Check your git status again to make sure.

## Write a handy cheatsheet of the commands you need to commit your changes.
Open text editor/file: subl (used for sublime)

add change: git add file-name

commit change: git commit -v (save the comment and exit the tab in sublime to complete the commit)

## What is a pull request and how do you create and merge one?
A pull request sets up afeature branch of a file and the master branch to be merged. You create a pull request by navigating to the feature branch and pushing that branch to the origin on Github. This occurs with two commands: 1) git merge master (to check if everything is up to date) and 2) git push origin branch-name. Once that has occured, navigate to Github and follow the instructions to complete the pull request. Click the "merge" button to merge the feature to the master branch on Github. Delete the feature branch, it's useless now. To sync this merge locally, navigate back to the master branch of the file on the command line and use the command "git pull origin master" to sync.

## Why are pull requests preferred when working with teams?
Pull requests allow for other people working on the same code to review the changes you made and discuss/decide of those changes should be merged into the master or another branch someone else is working on. With Github, you can actually see what was added/deleted/moved/etc, made very easy with the color coded scheme and the sdie-by-side comparison with the master. A pull request is almost like a "check my work request" and allows for ideas to be shared and experimented on without messing with the master branch.