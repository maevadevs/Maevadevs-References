# Browser: Client Storage Options: `localStorage` vs `sessionStorage` vs `cookie`

## `localStorage`

- Official: `Window.localStorage`
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

- Official: `Window.sessionStorage`
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

## `cookie`

- Has an expiration time for each cookie
- Limit: 4KB for the entire cookie, including name, value, expiry date etc. To support most browsers, keep the name under 4000 bytes, and the overall cookie size under 4093 bytes.
- Data **is** sent for every HTTP request as HTTP header
- Info about the cookie must be added as parameters

### Working With Cookies

#### Setting Cookies

```
function setCookie (cName, cValue, cExpDays) {
  let time = new Date()
  time.setTime(time.getTime() + (cExpDays * 24 * 60 * 60 * 1000)) // Expiration in ms
  let expiration = time.toUTCString()
  document.cookie = `name=${value};expires=${expiration};path=/`
}
```

#### Getting Cookies

```
function getCookie (cName) {
  let name = `${cName}=`
  let decodedCookie = decodeURIComponent(document.cookie)
  let ca = decodedCookie.split(';')
  
  for (let i = 0; i < ca.length; i++) {
    let c = ca[i]
    while (c.charAt(0) === ' ') {
      c = c.substring(1)
    }
    if (c.indexOf(name) === 0) {
      return c.substring(name.length, c.length)
    }
  }
  return ""
}
```
