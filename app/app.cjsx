React = require 'react'
Header = require './header.cjsx'

window.React = React

module.exports = React.createClass
  render: ->
    <div>
      <Header />
      <div className="container body">
        {@props.children}
      </div>
    </div>
