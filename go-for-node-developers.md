# Golang For Node Developer

This is a quick summary of Golang's similarities for Node developers.

## Similarities Node <=> Golang

### Package Manager

- `npm` <=> `dep` | Install `dep` with `brew` or `curl install.sh`

### Managing Global

- `npm i -g packagename` <=> `go get -u github.com/path/to/repository`

### Managing Local Project

- `npm init` <=> `dep init`
- `package.json` <=> `Gopkg.toml`
- `package-lock.json` <=> `Gopkg.lock`
- `node_modules` <=> `vendor`
- `npm i packagename` <=> `dep ensure -add github.com/path/to/repository`
