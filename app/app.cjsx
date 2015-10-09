React = require 'react'
ReactDom = require 'react-dom'

window.React = React
window.ReactDom = ReactDom

module.exports = React.createClass
  render: ->
    <div className="container">
      <h1>Electron Application</h1>
    </div>
