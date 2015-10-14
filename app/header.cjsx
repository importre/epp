React = require 'react'
{
  CollapsibleNav, Nav, Navbar, NavBrand, NavItem
} = require 'react-bootstrap'
{ Link } = require 'react-router'
{ LinkContainer } = require 'react-router-bootstrap'
Package = require '../package.json'

window.React = React

module.exports = React.createClass
  onSelectMenu: (event, eventKey) ->
    alert eventKey

  render: ->
      <Navbar inverse fixedTop={yes} toggleNavKey={1}>
        <NavBrand>
          <Link to="/">{Package.productName}</Link>
        </NavBrand>
        <CollapsibleNav eventKey={1}>
          <Nav navbar>
            <LinkContainer to="/intro">
              <NavItem eventKey={11}>Intro</NavItem>
            </LinkContainer>
            <LinkContainer to="/about">
              <NavItem eventKey={12}>About</NavItem>
            </LinkContainer>
          </Nav>
        </CollapsibleNav>
      </Navbar>
