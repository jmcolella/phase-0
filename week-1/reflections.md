#1.1 Think About Time and Reflection
Since I've never really spent much time researching or actively thinking about my time management and productivity, almost all of the ideas presented in this assignment are new to me. Some of them, like the idea of tiny habits and starting small to achieve bigger things, seemed intuitive to me, but now I know there is a whole field of study dedicated to these strategies and I hope to incorporate that more into my life as whole, not just my time at DBC. Time Boxing is also a new concept to me, even though I've found myself in the past completing work in this manner where I spend a pre-determined amount of time working and then break for a period to relax and reflect. For Phase 0, time boxing may be helpful in pairing sessions, particularly on challenges that, going in, both I and my pair know will be difficult, and we can set a timer on our work and then reflect on that work during the designated break time. I can see this also being useful in individual challenges as well. Currently, I manage my time similar to time boxing and the Pomodoro technique, but with little regularity and consistency. My set times for work and reflection are fairly arbitrary and are usually demarcated when I'm bored with the task or receive some other stimulus that brings me off course. I would say that this strategy isn't perfect, but it has allowed me to succeed in college and my current job. I believe, however, that if I want to succeed at DBC and beyond, I will need to modify my strategies with mindfulness and tiny habits. For Phase 0 (and hopefully in all the phases), I hope to enact a more strict form of time boxing/Pomodoro technique, one where my set work time is clear, and to do this I need to use mindfulness to train my focus on the task when I feel myself falling back into old habits. I believe tiny habits can really help me achieve this goal by allowing me to begin with short time box periods that are easy to maintain focus through and also to build mindfulness through short, attainable sessions of meditation. My goal is that the combination of these factors--time boxing, mindfulness, tiny habits--will help elevate my focus levels and help me achieve flow in the many tasks through all phases of DBC.

#The Command Line Reflection
A shell is a user interface that allows access to a computer's services. The command line interface is one type of shell for a user to communicate with a computer and execute commands. Bash is both a shell and a command language for Unix systems (Linux and OS X). In that sense, bash is both an interface with which one communicates with a computer and also the language one uses to communicate with.

I will admit, I've actually gone through this very same CLI Crash Course before, so I only used it this time around as a small refresher. What I can remember from doing this for the first time a few months ago is that it was challenging to use the command line itself. I had never before used the Terminal and it was jarring to execute simple commands, like making a folder, through this new language and interface. Also, just the seemingly endless number of commands made the whole thing seem a bit daunting. I've got a pretty good handle on navigating the command line now, but I still need to learn a whole slew of commands and shortcuts to become really good at it.

I was able to use all of the commands in theory, but some, like pushd and popd, were a bit counter intuitive to the way I think and like to navigate through files. I'm very straight forward and organized, and I don't mind having to retrace my steps to make sure I'm where I need to be, and pushd/popd kind of muddled that through their inherent shortcuts of moving around. I'm sure I'll get the hang of it, I just need to practice more.

I really think things like mkdir, touch, cd, cat/less, and rm are key to using the command line and that developers constantly use these all the time. Of the five commands I listed, they allow one to navigate among directories, make new directories/files, display files in the terminal, and delete any file or directory. Those are really powerful commands, and I would say are commands used by most computer users (albeit in a GUI) in almost any type of job every day.

OK, let's see if I got this down:

pwd = print working directory; it tells the command line to display where you are in your computer

ls = list items in a directory

mv = rename a file

cd = change directory

../ = in conjunction with cd, moves you up one directory

touch = creates a new file

mkdir = creates a new directory

less = displays a file in a blank window separate from the command line, whereas cat displays the file within the command line

rmdir = deletes a directory only

rm = deletes files

help = for Windows, allows you to search the specific name of a command with a key word; use apropros for Unix/Linux

#Forking and Cloning Reflection
Well, it seems there are two ways of going about creating a new repo: 1) locally on one's computer and 2) using Github. For the first method, it seems you can turn any folder (besides a large one, like Desktop) into a new repo by running "git init." This produces in the designated folder the .git folder and one can proceed coding using version control. To create a new repo using Github, you simply navigate to the plus icon towards the top right of the screen, click the drop down a create a new repo.

Forking a repo is a little different, but still fairly easy on Github. To fork a repo, locate the "fork" icon on the main page of the repo you want to fork. Click that button and then select to which Github account you would like to fork the repo to. Once that is selected, Github will automatically fork the repo over to the designated Github account, and now that person can work on the repo without effecting the original one.

Cloning a repo involves taking a repo from Github and copying it locally to one's computer. This involves using the command "git clone" on the command line. First, choose the destination you would like to clone the repo. Then, navigate to the repo's main page on Github and locate the HTTPS link. Copy that link. Navigate back to your command line and, in the desired folder, type "git clone" followed by the copied URL. Your computer will then clone the repo from Github to your computer, and store it in the desired folder.

One might fork a repo over cloning one because, when a repo is forked, it never has to be synced back up with the original repo. This allows for more freedom when changing the project and can even lead to something completely different from the original repo. On the other hand, when a repo is cloned locally, it must be synced back with the original repo on Github.

I at first struggled with how to navigate through git on the command line. I didn't realize that once you are navigated into a repo, the command line changes to the master branch of that repo. It also took me a while to get a hang of the vocabulary for staging and committing a change. To be honest, I'm still a little fuzzy on the details, but I'm slowly gathering the process. Using Emmanuel's video about branching, I can understand how to open up a text editor from a branch and making a change, to then committing that change to the branch and syncing with the master. While getting used to git and the command line has proved challenging, using Github has been incredibly easy after reading about the basics. I believe I have a solid foundation to delve deeper into Github.