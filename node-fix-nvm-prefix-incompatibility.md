**The Fix**

`rm $(which npm)` if and only if it was installed by a non-nvm node and is taking precedence over nvm's node.

You can check this by doing the following:

`nvm deactivate`
`ls -la $(which npm)`

If it points to something outside of `$NVM_DIR` it may be causing problems.

**The explanation**

First, uninstalled node from brew: `brew uninstall node`

Then debugged a ton and found that the npm being used was a leftover from my brew node installation. `npm` was located at `/usr/local/bin/npm` but symlinked to `/usr/local/lib/node_modules`.
Because of this, the default prefix was taking over and set to `/usr/local`.

So performed the following to ensure brew's node was gone:

`sudo rm -rf  /usr/local/lib/node_modules`
`rm /usr/local/bin/npm`
`brew uninstall --force node`
`brew prune`

No more errors YAY!
