ReactDom = require 'react-dom'
{ Router, Route, IndexRoute } = require 'react-router'
createMemoryHistory = require('history/lib/createMemoryHistory')

App = require './app.cjsx'
About = require './about.cjsx'
Page = require './page.cjsx'

require '../index.scss'

window.ReactDom = ReactDom

ReactDom.render(
  <div>
    <Router history={createMemoryHistory()}>
      <Route>
        <Route path="/" component={App} />
        <Route path="page" component={Page} />
        <Route path="about" component={About} />
      </Route>
    </Router>
  </div>
  , document.querySelector '#main')
