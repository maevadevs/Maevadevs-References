# <code>expect</code> Cheatsheet
This is a quick developer reference to the Javascript unit testing library [mjackson/expect](https://github.com/mjackson/expect). For the detailed documentation, check the [original repo's documentation](https://github.com/mjackson/expect).

## Table of Contents
- [Installation](#installation)
  - [Using npm](#npm)
  - [Using cdn](#cdn)
- [Use in projects](#inprojects)
- [Assertions](#assertions)
  - [Existence](#existence)
  - [Value Inclusion/Exclusion](#valueInclusion)
  - [Key Inclusion/Exclusion](#keyInclusion)
  - [Equality](#equality)
  - [Inequality](#inequality)
  - [Error Handling](#errorHandling)
  - [General Data Types](#dataTypes)
  - [Regular Expression](#regExp)
  - [Spies](#spies)
- [Spy Functions](#spyFunc)
  - [Global <code>expect</code> Functions for Spies](#spyGlobalFuncs)
  - [Spy Methods](#spyMethods)
  - [Spy Props](#spyProps)
- [Extending <code>expect</code>](#extendExpect)

<a name="installation"></a>
## Installation

<a name="npm"></a>
### Using npm
```
$ npm install --save expect
```
<a name="cdn"></a>
### Using cdn
```html
<script src="https://unpkg.com/expect/umd/expect.min.js"></script>
```
<a name="inprojects"></a>
## Use in projects
```Javascript
// using ES6 modules
import expect, { createSpy, spyOn, isSpy } from 'expect'

// using CommonJS modules
var expect = require('expect')
var createSpy = expect.createSpy
var spyOn = expect.spyOn
var isSpy = expect.isSpy
```
<a name="assertions"></a>
## Assertions
Every assertion returns an Expectation object so you can chain assertions together.<br>However, in this case, the overall assertion passes only if all the expectations pass.
```Javascript
expect(3.14)
  .toExist() // pass
  .toBeLessThan(4) // pass
  .toBeGreaterThan(3) // pass, so the assertion passes

expect(3.14)
  .toExist() // pass
  .toBeLessThan(2) // fail
  .toBeGreaterThan(3) // pass, so the assertion fails
```
<a name="existence"></a>
### Existence
```Javascript
expect(object).toExist([message])                 // Asserts the given object is truthy
expect(object).toBeTruthy([message])              // Alias to .toExist()
expect(object).toNotExist([message])              // Asserts the given object is falsy
expect(object).toBeFalsy([message])               // Alias to .toNotExist()
```
<a name="valueInclusion"></a>
### Value Inclusion/Exclusion
```Javascript
// Inclusion
expect(string).toInclude(value, [message])                   // Asserts that a given value is included/contained within the string
expect(array).toInclude(value, [comparator], [message])      // Asserts that a given value is included/contained within the array. The comparator function, if given, should compare two objects and return false if they are not equal. The default uses is-equal npm module.
expect(object).toInclude(value, [comparator], [message])     // Asserts that a given value is included/contained within the object
expect(string).toContain(value, [message])                   // Alias to .toInclude(value, [message])
expect(array).toContain(value, [comparator], [message])      // Alias to .toInclude(value, [comparator], [message])
expect(object).toContain(value, [comparator], [message])     // Alias to .toInclude(value, [comparator], [message])
// Exclusion
expect(string).toExclude(value, [message])                   // Asserts that a given value is excluded/not contained within the string
expect(array).toExclude(value, [comparator], [message])      // Asserts that a given value is excluded/not contained within the array. The comparator function, if given, should compare two objects and return false if they are not equal. The default uses is-equal npm module.
expect(object).toExclude(value, [comparator], [message])     // Asserts that a given value is excluded/not contained within the object
expect(string).toNotContain(value, [message])                // Alias to .toExclude(value, [message])
expect(array).toNotContain(value, [comparator], [message])   // Alias to .toExclude(value, [comparator], [message])
expect(object).toNotContain(value, [comparator], [message])  // Alias to .toExclude(value, [comparator], [message])
expect(string).toNotInclude(value, [message])                // Alias to .toExclude(value, [message])
expect(array).toNotInclude(value, [comparator], [message])   // Alias to .toExclude(value, [comparator], [message])
expect(object).toNotInclude(value, [comparator], [message])  // Alias to .toExclude(value, [comparator], [message])
```
<a name="keyInclusion"></a>
### Key Inclusion/Exclusion
```Javascript
// Inclusion
expect(object).toIncludeKeys(keysArray, [comparator], [message])    // Asserts that the given object (anything with keys) contains all of the provided keys in the array. The optional parameter comparator is a function which, if given an object and a string key, should return a boolean detailing whether or not the key exists in the object. By default, a shallow check with Object.prototype.hasOwnProperty is performed.
expect(object).toIncludeKey(keyString, [comparator], [message])     // Similar to .toIncludeKeys() but using only one key (string)
expect(object).toContainKeys(keysArray, [comparator], [message])    // Alias to .toIncludeKeys()
expect(object).toContainKey(keyString, [comparator], [message])     // Alias to .toIncludeKey()
// Exclusion
expect(object).toExcludeKeys(keysArray, [comparator], [message])    // Asserts that the given object (anything with keys) does not contain any of the provided keys in the array. The optional parameter comparator is a function which, if given an object and a string key, should return a boolean detailing whether or not the key exists in the object. By default, a shallow check with Object.prototype.hasOwnProperty is performed.
expect(object).toExcludeKey(keyString, [comparator], [message])     // Similar to .toExcludeKeys() but using only one key (string)
expect(object).toNotIncludeKeys(keysArray, [comparator], [message]) // Alias to .toExcludeKeys()
expect(object).toNotContainKeys(keysArray, [comparator], [message]) // Alias to .toExcludeKeys()
expect(object).toNotIncludeKey(keyString, [comparator], [message])  // Alias to .toExcludeKey()
expect(object).toNotContainKey(keyString, [comparator], [message])  // Alias to .toExcludeKey()
```
<a name="equality"></a>
### Equality
```Javascript
expect(object).toBe(value, [message])             // Asserts object is strictly equal to value (using ===)
expect(object).toNotBe(value, [message])          // Asserts that object is strictly not equal to value (using !==)
expect(object).toEqual(value, [message])          // Asserts that the given object equals value using (is-equal npm module)
expect(object).toNotEqual(value, [message])       // Asserts that the given object is not equal to value (using is-equal npm module)
```
<a name="inequality"></a>
### Inequality
```Javascript
expect(number).toBeLessThan(value, [message])              // Asserts the given number is less than value (<)
expect(number).toBeFewerThan(value, [message])             // Alias to .toBeLessThan()
expect(number).toBeLessThanOrEqualTo(value, [message])     // Asserts the given number is less than or equal to value (<=)
expect(number).toBeGreaterThan(value, [message])           // Asserts the given number is greater than value (>)
expect(number).toBeMoreThan(value, [message])              // Alias to .toBeGreaterThan()
expect(number).toBeGreaterThanOrEqualTo(value, [message])  // Asserts the given number is greater than or equal to value (>=)
```
<a name="errorHandling"></a>
### Error Handling
```Javascript
expect(block).toThrow([error], [message])         // Asserts that the given block throws an error: The error argument may be a constructor (comparing with instanceof) or string/RegExp (comparing with error.message)
expect(block).toNotThrow([message])               // Asserts that the given block does not throw an error
```
<a name="dataTypes"></a>
### General Data Types
```Javascript
expect(object).toBeA(constructor, [message])      // Asserts the given object is an instanceof the constructor
expect(object).toBeA(string, [message])           // Asserts the typeof the given object is the string
expect(object).toBeAn(constructor, [message])     // Alias to .toBeA(constructor)
expect(object).toBeAn(string, [message])          // Alias to .toBeA(string)
expect(object).toNotBeA(constructor, [message])   // Asserts the given object to not be an instanceof the constructor
expect(object).toNotBeA(string, [message])        // Asserts the typeof the given object to not be the string
[]expect(object).toNotBeAn(constructor, [message])  // Alias to .toNotBeA(constructor)
expect(object).toNotBeAn(string, [message])       // Alias to .toNotBeA(string)
```
<a name="regExp"></a>
### Regular Expression
```Javascript
expect(string).toMatch(pattern, [message])        // Asserts the given string matches a pattern. The pattern must be a RegExp.
expect(object).toMatch(pattern, [message])        // Asserts the given object matches a pattern. The pattern may be anything acceptable to tapjs/tmatch npm module.
expect(string).toNotMatch(pattern, [message])     // Asserts the given string to not match a pattern. The pattern must be a RegExp.
expect(object).toNotMatch(pattern, [message])     // Asserts the given object to not match a pattern. The pattern may be anything acceptable to tapjs/tmatch npm module.
```
<a name="spies"></a>
### Spies
A spy is a function that can stub any function and tracks calls to it and all arguments. A spy only exists in the describe or it block in which it is defined, and will be removed after each spec. Check the *Spies* sections for more details.
```Javascript
expect(spy).toHaveBeenCalled([message])                 // Asserts the given spy function has been called at least once.
expect(spy).toNotHaveBeenCalled([message])              // Asserts the given spy function has not been called.
expect(spy).toHaveBeenCalledWith(arg1[, arg2, ...])     // Asserts the given spy function has been called with the expected arguments.
```
<a name="spyFunc"></a>
## Spy Functions
Spy are functions that can be passed to other functions to track the calls that are made to them and make various assertions based on the arguments and context that were used.
<a name="spyGlobalFuncs"></a>
### Global <code>expect</code> Functions for Spies
```Javascript
var aSpy = expect.createSpy()                 // Create a spy function
var aSpy = expect.spyOn(targetObj, method)    // Create and Replace (transform) the method in the targetObj with (into) a spy
expect.restoreSpies()                         // Restores all spies created with expect.spyOn(). See spy.restore() method for individual restore.
```
<a name="spyMethods"></a>
### Spy Methods
These methods can be directly chained on <code>expect.createSpy()</code> and <code>expect.spyOn()</code>
```Javascript
spy.restore()                                 // After using expect.spyOn(), use this to restore back a spy individually. See expect.restoreSpies() for a all-in-one restore of all spies
spy.reset()                                   // Clears out all saved calls (spy.calls) to the spy

spy.andCall(func)                             // After the spy is called, also invoke func
spy.andCallThrough()                          // After the spy is called, also call the function it is spying on
spy.andReturn(objectOrValue)                  // After the spy is called, make it return an object/value
spy.andThrow(err)                             // After the spy is called, make it throw an error
```
<a name="spyProps"></a>
### Spy Props
```Javascript
spy.calls                                     // An array of objects representing all saved calls to the spy. Use spy.reset() to clear it
spy.calls[index].context                      // The 'this' value of the call's execution context
spy.calls[index].arguments                    // An array of the arguments passed to the spy for the particular call
```
<a name="extendExpect"></a>
## Extending <code>expect</code>
Extend assertions with <code>expect.extend</code> and <code>expect.assert</code>
```JavaScript
expect.extend({
  toBeAColor() {
    expect.assert(
      this.actual.match(/^#[a-fA-F0-9]{3,6}$/),
      'expected %s to be an HTML color',
      this.actual
    )
    return this
  }
})
expect('#ff00ff').toBeAColor()
```
Some extensions:
- For DOM: [expect-element](https://github.com/mjackson/expect-element)
- For React and JSX: [expect-jsx](https://github.com/algolia/expect-jsx)
- For Predicates: [expect-predicate](https://github.com/erikras/expect-predicate)
