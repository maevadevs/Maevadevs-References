# Semver: Programmatic Pattern Operators

- These patterns are used extensively in the definition of acceptable version ranges of dependencies in different projects, specifically for NodeJS-based projects: `package.json`
- Semver operators make it possible to define acceptable upgrading paths for each dependency package/module based on a range of accepted versions

## General Format of Semver

`MAJOR.MINOR.PATCH-Pre1.Pre2.Pre3+Metadata.Option1.1234+Metadata.Option2.5678`

- `MAJOR`: When you make incompatible API changes
- `MINOR`: When you add functionality in a backwards-compatible manner
- `PATCH`: When you make backwards-compatible bug fixes
- `-Pre`: Optional prerelease versions with dot formatting [0-9A-Za-z-]
- `+Metadata`: Optional build metadata with dot formatting [0-9A-Za-z-]

## Pattern Representation

- We can represent version using patterns in 2 ways:
  - Using Range Operators
  - Using Placeholders: Either `x` or `*` works

- An `||` comparator can be used for advanced "jumping" ranges
  - `1.2.7 || >=1.2.9 <2.0.0` means `1.2.7`, `1.2.9`, and `1.4.6`, but not the versions `1.2.8` or `2.0.0`

## Example: Dependency `"express"`

- The Latest Version:
  - Always get the latest version, whatever that might be
  - `"express": ">=0.0.0"`
    - Alias: `"express": "x"`
    - Alias: `"express": "*"`

- The Most Recent Production Version:
  - Always get the latest production release version, including `MAJOR` that breaks API
  - `"express": ">=1.0.0"`

- The Most Recent Minor Version:
  - Get the latest `MINOR` version of `MAJOR`
  - `"express": ">=1.0.0 <2.0.0"`
  - Alias: `"express": "1.x"`
  - Alias: `"express": "1.*"`

- The Most Recent Patch Version:
  - Get the latest `PATCH` version of `MAJOR.MINOR`
  - `"express": ">=1.1.0 <1.2.0"`
  - Alias: `"express": "1.1.x"`
  - Alias: `"express": "1.1.*"`

- A Specific Hyphen Range
  - `"express": "1.2.3 – 4.5.6"`: Get the latest version within the specific range, inclusive
    - Alias: `"express": ">=1.2.3 <=4.5.6"`
  - `"express": "1.2.x – 2.x"`: Get the latest version between `1.2` and `3`, exclusive
    - Alias: `"express": ">=1.2.3 <3.0.0"`

- Tilde Range:
  - Allows patch-level changes if a minor version is specified on the comparator
  - Allows minor-level changes if not
  - `"express": "~1.2.3"`: Patch-level changes on version `1.2.3` and above
    - Alias: `"express": ">=1.2.3 <1.3.0"`
  - `"express": "~1.2"`: Patch-level changes on version `1.2.0` and above
    - Alias: `"express": ">=1.2.3 <1.3.0"`
    - Alias: `"express": "1.2.x"`
    - Alias: `"express": "1.2.*"`
  - `"express": "~3"`: Minor-level changes on version `3.0` and above
    - Alias: `"express": ">=3.0 <4.0"`
    - Alias: `"express": "3.x"`
    - Alias: `"express": "3.*"`

- Caret Range:
  - Allows changes that do not modify the left-most non-zero digit in the `[major, minor, patch]` pattern
  - `"express": "^0.2.3"`: Allow changes up to `0.2.x`
  - `"express": "^1.2.3"`: Allow changes up to `1.x`
  - `"express": "^3.2.3"`: Allow changes up to `3.x`
