React = require 'react'
{ CollapsibleNav, Nav, Navbar, NavBrand, NavItem } = require 'react-bootstrap'
{ Link } = require 'react-router'
{ LinkContainer } = require 'react-router-bootstrap'
Package = require '../package.json'

window.React = React

module.exports = React.createClass
  render: ->
      <Navbar inverse fixedTop={yes} toggleNavKey={0}>
        <NavBrand>
          <Link to="/">{Package.productName}</Link>
        </NavBrand>
        <CollapsibleNav eventKey={0}>
          <Nav navbar>
            <LinkContainer to="/intro">
              <NavItem eventKey={1}>Intro</NavItem>
            </LinkContainer>
            <LinkContainer to="/about">
              <NavItem eventKey={2}>About</NavItem>
            </LinkContainer>
          </Nav>
        </CollapsibleNav>
      </Navbar>
