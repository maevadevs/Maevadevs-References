# Node: Useful Node Management Commands

Here are some useful Node commands when doing some management work, such as updating, upgrading, and migrating.

## Upgrading Node With `nvm`

This command will upgrade the node version from one to another while transfering the existing packages. The packages might get updated to the latest versions during the transfer.

`nvm install 6.9.4 --reinstall-packages-from=6.8.0`

## Updating All or Some Global Packages

    sudo npm update -g

For updating only one package

    sudo npm update -g <packagename>

For checking outdated packages

    npm -g outdated

## Listing All Global Modules At Surface Level Only

When you run `npm ls`, the listing will go very depth into the tree-structure of the modules. To get only the main root modules, run it with the `--depth=0` option. Choose the depth level: `depth=0` means only top-level modules.

`npm ls -g --depth=0`

## Running An Application And Piping Arguments Through Node

- Using `node` is faster than using `npm` (no middleware)
- Usually, we would run:

      node app.js command --args
      
When we run or start an application with `npm`:
- Double-dashed arguments will pass directly to the 1st level caller (Here: `node`)
- Double-dashed separated with a space will allow to pipe the arguments to the 2nd level caller (Here: `npm start` calls `node app.js`).

      node app.js command --argumentsForNodeCallingAppJS
      npm start -- command --argumentsForNodeCallingAppJS
