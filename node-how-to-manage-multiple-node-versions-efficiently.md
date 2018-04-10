# Node: How To Manage Multiple Node Versions Efficently

The more you work with Nodejs projects, the more you will realize that you need multiple versions of Nodejs and NPM (and their respective Global modules) to run different projects. In my experience, you might need at least two(2) major versions of Node.

I propose the following solution. Note that this is not the only solution but this is a way I found to be best in maintaining the node versions that I require in a logical and streamlined manner, in my humble opinion. 

Of course, others might have a different ways and solutions and that is totally okay. As developers, we know that there are many ways to solve one problem. But if you are interested in my way, I invite you to keep reading.

## Table of Contents
- [Installing a <code>system</code> Node (Optional)](#01)
  - [Mac OSX: Using <code>brew</code>](#01-01)
- [Installing <code>nvm</code>](#02)
  - [Mac OSX: Using <code>brew</code>](#02-01)
    - [Change <code>.bash_profile</code>](#02-01-01)
- [Installing and Maintaining <code>node</code> with <code>nvm</code>](#03)

<a name="01"></a>
## 1. Installing a <code>system</code> Node (Optional)

I like to think of <code>system</code> Node as the *root* Node. It is not necessary to have it, but it is convenient to have as a quick "go-to" version. In fact, we can even skip this step altogether. <code>system</code> Node/NPM should not be used for creating and maintaining projects directly. Therefore, *do not* install global modules with this version. The only modules that should show up when running <code>npm ls -g --depth=0</code> with this version is <code>npm</code>.

<a name="01-01"></a>
### Mac OSX: Using <code>brew</code>

There are many options for the first installation. But <code>brew</code> installation is more manageable because it will automatically add it to <code>/usr/local/bin/node</code> as another OSX package.

<code>$ brew update</code><br>
<code>$ brew install node</code><br>
<code>$ brew postinstall node</code><br>
<code>$ brew cleanup</code><br>

I like to keep my system versions always to the latest versions. When you want to upgrade the <code>system</code> node version, simply run the following.

<code>$ brew update</code><br>
<code>$ brew upgrade node</code><br>
<code>$ brew cleanup</code><br>

Finally, if you want to uninstall the <code>system</code> node, run:

<code>$ brew uninstall node</code><br>
<code>$ brew update</code><br>
<code>$ brew upgrade</code><br>
<code>$ brew cleanup</code><br>

*Note: To review if there are any conflicting packages of brew, <code>$ brew doctor</code> is always helpful.*

Verify that the system node and npm works correctly:

<code>$ which node</code><br>
<code>$ which npm</code><br>
<code>$ node -v</code><br>
<code>$ npm -v</code><br>

<a name="02"></a>
## 2. Installing <code>nvm</code>

NVM is the Node Version Manager. It allows to maintain multiple versions of node/npm and switch back and forth between those versions as projects requires.

<a name="02-01"></a>
### Mac OSX: Using <code>brew</code>

To install NVM, run the following:

<code>$ brew update</code><br>
<code>$ brew install nvm</code><br>
<code>$ brew postinstall nvm</code><br>
<code>$ brew cleanup</code><br>

*Note: Follow the same steps as above for system node to upgrade or uninstall nvm.*

<a name="02-01-01"></a>
#### Change <code>.bash_profile</code>

To make sure that the command line finds the <code>nvm</code> command, add these lines to the <code>.bash_profile</code>:

<code># Load nvm</code><br>
<code>export NVM_DIR="/Users/[yourusername]/.nvm"</code><br>
<code>[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm</code><br>

Then, reload the <code>.bash_profile</code> source from the terminal:

<code>$ source ~/.bash_profile</code><br>

Verify that the system nvm works correctly:

<code>$ which nvm</code><br>
<code>$ nvm --version</code><br>

<a name="03"></a>
### 3. Installing and Maintaining <code>node</code> with <code>nvm</code>

Now that nvm is installed, we can install multiple versions of node. To check for the available versions to install:

<code>$ nvm ls-remote</code>

To install versions of node (e.g. v7.4.0 and v6.9.4):

<code>$ nvm install 7.4.0</code><br>
<code>$ nvm install 6.9.4</code>

To check which versions are currently installed on our system (The currently used is pointed by an arrow):

<code>$ nvm ls</code>

To swith to a different installed version (e.g. from v7.4.0 to v6.9.4)

<code>$ nvm use 6.9.4</code>

To verify which node/npm is currently being use, we can simply check them again.

<code>$ which npm</code><br>
<code>$ npm --version</code><br>
<code>$ which node</code><br>
<code>$ node --version</code><br>

To upgrade to a new version and move the global modules to the new version: (e.g. from v6.8.0 to v6.9.4)

<code>$ nvm install 6.9.4 --reinstall-packages-from=6.8.0</code><br>
<code>$ nvm uninstall 6.8.0</code><br>

And finally, to uninstall a version altogether, without upgrading:

<code>$ nvm uninstall 6.8.0</code>

