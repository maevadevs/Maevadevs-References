# Summary: Semantic Versioning v2.0.0

## About

This is a simple summary of the [Semantic Versioning v2.0.0](http://semver.org/) official documentation.

## General Format

`MAJOR.MINOR.PATCH-Pre1.Pre2.Pre3+Metadata.Option1.1234+Metadata.Option2.5678`

- `MAJOR`: When you make incompatible API changes
- `MINOR`: When you add functionality in a backwards-compatible manner
- `PATCH`: When you make backwards-compatible bug fixes
- `-Pre`: Optional prerelease versions with dot formatting [0-9A-Za-z-]
- `+Metadata`: Optional build metadata with dot formatting [0-9A-Za-z-]

## General Rules

- Must declare a public API, whether in code or in documentation, precise and comprehensive
- Must take the version number format of `MAJOR.MINOR.PATCH`: Non-negative integers with no leading zeroes
- Any modification must have a new release and a new version

### Usage Rules

- `MAJOR`
  - Increment when new, breaking functionalities are introduced to the public API
  - When incrementing, reset `MINOR` and `PATCH` to 0
  - `MAJOR = 0`: For in-development release only: This API is not stable
  - `MAJOR = 1`: For the public API first release
- `MINOR`
  - Increment when new, backwards compatible functionalities are introduced to the public API
  - Increment when any public API functionality is marked as deprecated
  - Increment if substantial new functionalities or improvements are introduced within the private code
  - When incrementing, reset `PATCH` to 0
- `PATCH`
  - Increment when you make backwards-compatible bug fixes (Internal change that fixes incorrect behavior)
- `-PRE`
  - Optional pre-release versions
  - Must be separated by a hyphen from `PATCH`, then a series of dot separated identifiers
  - Only ASCII Alpha-numeric and hyphens: [0-9A-Za-z-]
  - No leading zeroes
  - Lower precedence than the associated normal version
  - Indicate instabilities in the public API
  - Examples:
    - `0.0.1-alpha.1.1`
    - `0.12.106-beta.34`
    - `1.0.0-x.7.z.92-56`
- `+META`
  - Optional build metadata
  - Must be separated by a `+` sign from `PATCH` or `PRE`, then a series of dot separated identifiers
  - Only ASCII Alpha-numeric and hyphens: [0-9A-Za-z-]
  - Should be ignored when determining version precedence (No impact on selection)
  - Examples:
    - `1.0.0-beta.3.4-56456+exp.sha.5114f85`
    - `4.6.90-x.7.z.92-56+ts.20130313144700-hash.md5.56a3f5d`

### Precedence Rules

`0.1.0 < 0.1.1 < 0.2.456 < 1.0.0-alpha < 1.0.0-alpha.1 < 1.0.0-alpha.beta < 1.0.0-beta < 1.0.0-beta.2 < 1.0.0-beta.11 < 1.0.0-rc.1 < 1.0.0-rc.2 < 1.0.0 < 1.0.1 < 1.1.0 < 2.0.0 < 2.1.0 < 2.1.1 < 4.5.6`

- Precedence is determined by the first difference when comparing each of the identifiers from left to right
- Build metadata is ignored
- `Major`, `minor`, and `patch` versions are always compared numerically: `1.0.0 < 2.0.0 < 2.1.0 < 2.1.1`
- When `major`, `minor`, and `patch` are equal, a `prerelease` version has lower precedence than a normal version: `1.0.0-alpha < 1.0.0`
- Precedence for two `prerelease` versions with the same `major`, `minor`, and `patch` version MUST be determined by comparing each dot separated identifier from left to right
  - Identifiers consisting of only digits are compared numerically
  - Identifiers with letters and hyphens are compared lexically in ASCII sort order
  - Numeric identifiers always have lower precedence than non-numeric identifiers
  - A larger set of pre-release fields has a higher precedence than a smaller set, if all of the preceding identifiers are equal
