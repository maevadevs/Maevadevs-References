# Semver: Application for NPM Modules

- Semver is extensively used in NPM modules
- The version of a module is defined in its `package.json` file
- NPM uses a module called [`semver`](https://github.com/npm/node-semver) to handle parsing Semantic Versioning of modules
- This module can also be used in your application to handle versions

## Installation

      `npm i --save semver`
      `yarn add semver`

## Usage

- Any leading `=` or `v` character is stripped off and ignored
- Range Operators can be used
- An `||` comparator can be used for advanced "jumping" ranges
  - `1.2.7 || >=1.2.9 <2.0.0` means `1.2.7`, `1.2.9`, and `1.4.6`, but not the versions `1.2.8` or `2.0.0`

      const semver = require('semver')

### `semver.valid(strVersion)`

- Return the parsed version, or null if it's not valid

      semver.valid('1.2.3')         // => '1.2.3'
      semver.valid('a.b.c')         // => null

### `semver.inc(strVersion, release)`

- Return the version incremented by the release type (`major`, `premajor`, `minor`, `preminor`, `patch`, `prepatch`, or `prerelease`), or `null` if it's not valid
- `premajor` in one call will bump the version up to the next `major` version and down to a `prerelease` of that `major` version
- If called from a non-prerelease version, the `prerelease` will work the same as `prepatch`

      semver.inc('1.2.3', 'prerelease', 'beta') // => '1.2.4-beta.0'

### `semver.prerelease(strVersion)`

- Returns an array of prerelease components, or `null` if none exist

      semver.prerelease('1.2.3-alpha.1') // => ['alpha', 1]

### `semver.major(strVersion)`

- Return the major version number

      semver.major('1.2.3') // => '1'

### `semver.minor(strVersion)`

- Return the minor version number

      semver.minor('1.2.3') // => '2'

### `semver.patch(strVersion)`

- Return the patch version number

      semver.patch('1.2.3') // => '3'

### Comparison Methods

      semver.gt('1.2.3', '9.8.7')    // => false
      semver.gte('1.2.3', '9.8.7')   // => false
      semver.lt('1.2.3', '9.8.7')    // => true
      semver.lte('1.2.3', '9.8.7')   // => true
      semver.eq('1.2.3', '1.2.3')    // => true
      semver.eq('1.2.3', '1.2.4')    // => false
      semver.neq('1.2.3', '1.2.3')   // => false
      semver.neq('1.2.3', '1.2.4')   // => true
      semver.satisfies('1.2.3', '1.x || >=2.5.0 || 5.0.0 - 7.2.3') // => true

### Maintenance Methods

      semver.clean('  =v1.2.3   ')  // => '1.2.3'

### Pre-release Versions

- Pre-release versions are only used when being matched with a version that has pre-release version
- The method `.inc` takes an additional identifier `<string>` argument that will append the value of the string as a prerelease identifier

      semver.inc('1.2.3', 'prerelease', 'beta') // => '1.2.4-beta.0'
