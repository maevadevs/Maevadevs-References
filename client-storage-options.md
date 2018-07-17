# Browser: Client Storage Options: `localStorage` vs `sessionStorage` vs `cookie`

## `localStorage`

- An improvement on cookies: Greater storage capacity limit: 5MB
- Data is **not** sent for every HTTP request: Need to explicitly do so on codes
- Data permanently persists until explicitly deleted: Data does not expire
- Data available for all current and future visits to the site
- Namespacing is handled by the browser: It works on same-origin policy
- API is simple

### Noteworthy APIs

- `localStorage.setItem(key, value)`: Create if not existing. Overwrite otherwise.
- `localStorage.getItem(key)`
- `localStorage.removeItem(key)`
- `localStorage.clear()`
- `localStorage.length`

## `sessionStorage`

- Similar to `localStorage`, but does not persist indefinitely
- Data only available per session (window or tab): Once the window/tab is closed, the storage is deleted
- Data is **not** sent for every HTTP request: Need to explicitly do so on codes
- Data is **not** persistent: It will be lost once the window/tab is closed
- Namespacing is handled by the browser: It works on same-origin policy
- Data is namespaced both on same-origin and session: Only inside the window/tab in which it was set

### Noteworthy APIs

- `sessionStorage.setItem(key, value)`: Create if not existing. Overwrite otherwise.
- `sessionStorage.getItem(key)`
- `sessionStorage.removeItem(key)`
- `sessionStorage.clear()`
- `sessionStorage.length`
