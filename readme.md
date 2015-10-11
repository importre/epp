# epp

<img src='assets/epp.png' width=256 />

Electron Application

- bootstrap
- coffeescrirpt (cjsx)
- electron
- react
- react-router
- webpack


## Dev

```sh
$ npm install
$ npm run start-hot  # reload views if app/* are changed
```

and then

```sh
$ npm run start-dev     # restart electron if index.js, electron/* are changed
```
or
```sh
$ npm run start-dev2nd  # equal to `start-dev` + show electron to 2nd monitor
```

### Run

```sh
$ npm start  # build and start electron
```

### Build

```sh
$ npm run build      # all
$ npm run build-osx  # osx(64)
$ npm run build-win  # win(32, 64)
```

Builds the app for OS X, Linux, and Windows, using [electron-packager](https://github.com/maxogden/electron-packager).


## License

MIT © [Jaewe Heo](http://import.re)
