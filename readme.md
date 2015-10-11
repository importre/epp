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
# install dependencies
$ npm install
```

```sh
# reload views if app/* are changed
$ npm run start-hot
```

and then

```sh
# restart electron if index.js, electron/* are changed
$ npm run start-dev
```
or
```sh
# equal to `start-dev` + show electron to 2nd monitor
$ npm run start-dev2nd
```

### Run

```sh
# build and start electron
$ npm start
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
