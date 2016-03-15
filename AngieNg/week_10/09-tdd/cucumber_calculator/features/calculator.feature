Feature: Calculator
As a novice web developer
I want to figure out how the hell Cucumber works
And add some numbers together

Scenario: Add two numbers together
  Given I have a calculator
  And I have the number 5
  And I have the number 7
  When I add them together
  Then I should see 12 on the terminal

Scenario: Substract two numbers
  Given I have a calculator
  And I have the number 7
  And I have the number 5
  When I substract them
  Then I should see 2 on the terminal


Scenario: Multiply two numbers
  Given I have a calculator
  And I have the number 7
  And I have the number 5
  When I multiply them
  Then I should see 35 on the terminal

Scenario: Division two numbers
  Given I have a calculator
  And I have the number 7
  And I have the number 5
  When I division them
  Then I should see 1 on the terminal