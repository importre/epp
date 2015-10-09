React = require 'react'
ReactDom = require 'react-dom'
{ Link } = require 'react-router'
{ Navbar, NavBrand } = require 'react-bootstrap'
Header = require './header.cjsx'

window.React = React
window.ReactDom = ReactDom

module.exports = React.createClass
  render: ->
    <div>
      <Header />
      <div className="container body">about</div>
    </div>
