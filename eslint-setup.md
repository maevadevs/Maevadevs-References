# ESLint Setup

- This setup is using a project-based (avoid using global) and using the example of `standard` as the linting rule. 
- This setup is using `yarn` as the package manager.
- This setup is using VSCode as the editor.

1. Install ESLint in the local project

        yarn add --dev eslint

1. Add default access to command from `package.json`: `yarn run eslint`

        "scripts": {
          "eslint": "eslint"
        }

1. Add `.eslintrc` with `yarn run eslint --init`: This will also allows to install the `standard` linting rules and its dependencies through `npm`. If you want to continue with `yarn` instead, after the installation, remove `node_modules` and `package-lock.json` and run `yarn install`

        {
          "extends": "standard"
        }

1. Install `ESLint` extension of VSCode and change some settings: `Code > Preferences > Settings > USER SETTINGS`

        "files.autoSave": "off", // This might already be the default in `DEFAULT SETTINGS`
        "eslint.autoFixOnSave": true,
        "eslint.alwaysShowStatus": true,
        "eslint.packageManager": "yarn"

1. Reload the project: Close and re-open VSCode.
