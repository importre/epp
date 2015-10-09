React = require 'react'
ReactDom = require 'react-dom'
{ CollapsibleNav, Nav, Navbar, NavBrand, NavItem } = require 'react-bootstrap'
{ LinkContainer } = require 'react-router-bootstrap'
Package = require '../package.json'

window.React = React
window.ReactDom = ReactDom

module.exports = React.createClass
  render: ->
      <Navbar inverse fixedTop={yes} toggleNavKey={0}>
        <NavBrand>
          <a href="/">{Package.productName} {Package.version}</a>
        </NavBrand>
        <CollapsibleNav eventKey={0}>
          <Nav navbar>
            <LinkContainer to="/page">
              <NavItem eventKey={1}>Page</NavItem>
            </LinkContainer>
            <LinkContainer to="/about">
              <NavItem eventKey={2}>About</NavItem>
            </LinkContainer>
          </Nav>
        </CollapsibleNav>
      </Navbar>
