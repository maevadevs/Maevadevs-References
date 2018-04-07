# ESLint Setup

## Synopsis

- This setup uses a project-based (I avoid using global whenever possible) and uses `standard` as the example linting rule. 
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

        # For Yarn:
        yarn run eslint --init
        # Then, remove `node_modules` and `package-lock.json` and re-install dependencies
        yarn install
        
        # .eslintrc after installation

        {
          "extends": "standard"
        }

1. Setup for VSCode only: Install `ESLint` extension and change some settings: `Code > Preferences > Settings > USER SETTINGS`

        "files.autoSave": "off", // This might already be the default in `DEFAULT SETTINGS`. If so, skip.
        "eslint.autoFixOnSave": true,
        "eslint.alwaysShowStatus": true,
        "eslint.packageManager": "yarn" // "npm" if you are using npm instead

Then, close and re-open VSCode
