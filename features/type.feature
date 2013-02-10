Feature: Representation Type

  As a client
  I want to set the representation type
  So that I can interoperate with foreign operating systems

Scenario: Type ASCII
  Given a successful login
  Then the client successfully sets type "A"

Scenario: Type IMAGE
  Given a successful login
  Then the client successfully sets type "I"

Scenario: Type EBCDIC
  Given a successful login
  When the client sets type "E"
  Then the server returns a type not implemented error

Scenario: Type Local
  Given a successful login
  When the client sets type "L 7"
  Then the server returns a type not implemented error

Scenario: Invalid Type
  Given a successful login
  When the client sets type "*"
  Then the server returns an invalid type error

Scenario: Format Telnet
  Given a successful login
  When the client sets type "A T"
  Then the server returns a format not implemented error

Scenario: Format Carriage Control
  Given a successful login
  When the client sets type "A C"
  Then the server returns a format not implemented error

Scenario: Invalid Format
  Given a successful login
  When the client sets type "A *"
  Then the server returns an invalid format error

Scenario: Not logged in
  Given a successful connection
  When the client sets type "S"
  Then the server returns a not logged in error

Scenario: Missing parameter
  Given a successful login
  When the client sets type with no parameter
  Then the server returns a syntax error