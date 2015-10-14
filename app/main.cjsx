ReactDom = require 'react-dom'
{ Router, Route, IndexRoute } = require 'react-router'
createMemoryHistory = require('history/lib/createMemoryHistory')

App = require './app.cjsx'
Home = require './home.cjsx'
About = require './about.cjsx'
Intro = require './intro.cjsx'

require '../index.scss'

window.ReactDom = ReactDom

ReactDom.render(
  <Router history={createMemoryHistory()}>
    <Route path="/" component={App}>
      <IndexRoute component={Home} />
      <Route path="intro" component={Intro} />
      <Route path="about" component={About} />
    </Route>
  </Router>
  , document.querySelector '#main')
