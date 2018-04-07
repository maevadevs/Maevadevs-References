# ESLint Setup

## Overview

- This setup uses a project-based (I avoid using global whenever possible) and uses `standard` as the example linting rule. Other linting rules can be installed as devDependencies and added to the `.eslintrc`  afterwards
- This setup provides commands for both `npm` and `yarn` as the package manager. You should only use one of them.
- This setup uses VSCode as the editor.

## Steps

1. `cd` into your local project and install ESLint locally (I will assume you already have `package.json` set up)

        # For NPM:
        npm i eslint --save-dev
        
        # For Yarn:
        yarn add eslint --dev

1. Add access to `eslint` command from `package.json`: Project CLI command is `yarn run eslint` or `npm run eslint`

        "scripts": {
          "eslint": "eslint"
        }

1. Add `.eslintrc`: This will also prompt to install the `standard` linting rules and its dependencies *through `npm`, regardless of using `yarn` or `npm`*. If you are continuing with `yarn`, after the installation, remove `node_modules` and `package-lock.json` and re-run `yarn install` to refresh your dependencies

        # For NPM:
        npm run eslint --init
        
        # For Yarn:
        yarn run eslint --init
        # Then, remove `node_modules` and `package-lock.json` and re-install dependencies with Yarn
        yarn install
        
        # .eslintrc after installation
        {
          "extends": "standard"
        }

**Note:** If you prefer to manage your own linting rules instead, you can install them separately and add reference to a `.eslintrc` file in the project root

        # For Yarn:
        yarn add standard --dev
        # For NPM:
        npm install standard --save-dev
        
        # Add .eslintrc in the project root
        {
          "extends": "standard"
        }

### Additional Step for VSCode Users Only

- One-time setup: Install `ESLint` extension and change some settings: `Code > Preferences > Settings > USER SETTINGS`

        "files.autoSave": "off", // This might already be the default in `DEFAULT SETTINGS`. If so, skip.
        "eslint.autoFixOnSave": true,
        "eslint.alwaysShowStatus": true,
        "eslint.packageManager": "yarn" // "npm" if you are using npm instead

Then, close and re-open VSCode
