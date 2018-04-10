# React: Test-Utils Cheatsheet
This is a quick reference to the `react-addons-test-utils` library of React

## Purpose
- For testing React components
- Allows choice of testing framework:
  - [Jest](http://facebook.github.io/jest/)
  - [Enzyme](http://airbnb.io/enzyme/) 

## Importing the module
```Javascript
import ReactTestUtils from 'react-addons-test-utils' // ES6 Module
const ReactTestUtils = require('react-addons-test-utils') // ES5 with npm CommonJS
```

## Shallow Rendering
- Render a component "one level deep" and assert facts about what its render method returns
- Do not worry about the behavior of child components
- This does not require a DOM
- Limitation: Not supporting refs

```JavaScript
createRenderer()                  // Create a shallow renderer: Think of this as a "place" to render the component you are testing
shallowRenderer.render(el)        // Similar to ReactDOM.render() but doesn't require DOM and only renders a single level deep
shallowRenderer.getRenderOutput() // Returns shallowly rendered output after shallowRenderer.render() has been called

const renderer = ReactTestUtils.createRenderer();
renderer.render(<MyComponent />);
const result = renderer.getRenderOutput();

expect(result.type).toBe('div');
expect(result.props.children).toEqual([
  <span className="heading">Title</span>,
  <Subcomponent foo="bar" />
]);
```
