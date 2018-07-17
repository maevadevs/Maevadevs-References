# Browser: Client Storage Options

## `localStorage`

- An improvement on cookies: Greater storage capacity limit: 5MB
- Data is **not** sent for every HTTP request: Need to explicitly do so on codes
- Data permanently persists until explicitly deleted: Data does not expire
- Data available for all current and future visits to the site
- Namespacing is handled by the browser: It works on same-origin policy
- API is simple

### Important API

- `localStorage.setItem(key, value)`: Create if not existing. Overwrite otherwise.
- `localStorage.getItem(key)`
- `localStorage.removeItem(key)`
