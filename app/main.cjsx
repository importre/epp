ReactDom = require 'react-dom'
App = require './app.cjsx'
require '../index.scss'

window.ReactDom = ReactDom

ReactDom.render <App />, document.getElementById('main')
