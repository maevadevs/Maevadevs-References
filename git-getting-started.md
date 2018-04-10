# Git: Getting Started With Git and Github/Bitbucket

These are some basic shell commands and basic workflow on getting started with Git and Github/BitBucket. We are using MacOS commands but most should also work fine on Ubuntu and Windows.

This workflow assumes manual workflow with commands being typed directly into the shell. The workflow might be different when Git and Remote Git Repositories are directly integrated into an IDE.

### Checking which installed git you are using
	$ which git

### Checking the git version
	$ git --version

### Setting up a remote github repository
Go to GitHub/BitBucket and create a new for the project repository and get the repo link.

- Repo Example: <code>gitstarter</code>
	- SSH:		<code>git@github.com:maevadevs/gitstarter.git</code>
	- HTTPS:	<code>https://github.com/maevadevs/gitstarter.git</code>

### Git global setup
These settings will be used for all git projects on the computer:

	$ git config --global user.name "Your Name Here"
	$ git config --global user.email youremail@gmail.com

### Local project and local repository
Go to the local project folder:

	$ mkdir gitTestProjectFolder
	$ cd gitTestProjectFolder

Create/initialize a local git repository:<br>
This creates a <code>.git</code> folder in the project folder: Contains the settings for this repo.

	$ git init

Create a <code>.gitignore</code> file to contain the exclude rules<br> and add a <code>readme.md</code> file:

	$ touch .gitignore<
	$ touch readme.md

Add rules by modifying the contents of .gitignore:

	$ vi .gitignore
	# This is a comment in .gitignore
	# Ignore OSX .DS_Store files
	*.DS_Store
	# For npm and node projects, also ignore the node_modules folder and its contents
	node_modules/
	node_modules/*
	
For a full list of the mostly-used <code>.gitignore</code> rules, [check here](https://github.com/maevadevs/git-starter/blob/master/.gitignore).

Create some files to be part of the local repository (testing purposes):

	$ touch textfile_01.txt
	$ mkdir myFolder
	$ touch textfile_02.txt

Check the current status of the repository:<br>
*(It is encourages to check status as often as possible)*

	$ git status

Before commiting anything, we need to add what we want to commit:
	
	$ git add myFolder/*
	$ git add textfile*

To simply add everything:

	$ git add .

Commit the changes made to the project to the local repository:

	$ git commit -m "This is a short message explaining the commit changes."

To commit any tracked and changed files without having to add again:<br>
(All new files need to be added first)

	$ git commit -a -m "Changed textfile_01.txt and textfile_02.txt."

To check the history of commits done within this repository:

	$ git log

If we want to remove a file from being tracked:

	$ git rm --cached filename

If we want to remove ALL files from being tracked, add recursive:

	$ git rm -r --cached .

### Connecting local repo to a remote repo on Github or Bitbucket: <code>push</code> / <code>pull</code>

Add a remote origin: the remote repository wanted:<br>
*(HTTPS Recommended)*

- For SSH:	<code>$ git remote add origin git@github.com:maevadevs/gitstarter.git</code>
- HTTPS:	<code>$ git remote add origin https://github.com/maevadevs/gitstarter.git</code>

To check current remote origin value:

	$ git remote -v

Push local changes to the remote repository:<br>
(Make sure that you are on the right branch: e.g. master)

	$ git push [remote-name] [branch-name]
	$ git push -u origin master

Then, enter remote depository credentials (For HTTPS, which is recommended.)

To get things back from remote to local, use pull command: 

	$ git pull [remote-repo-name]
	$ git pull origin

### *Important: Next time when working on the project*
**Always make sure to pulling from remote first before pushing to remote.**


