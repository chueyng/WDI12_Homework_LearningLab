Given(/^I have a calculator$/) do
  @calculator = Calculator.new
end

Given(/^I have the number (\d+)$/) do |number|
  @calculator << number.to_i
end

When(/^I add them together$/) do
  @result = @calculator.add
end

When(/^I substract them$/) do
  @result = @calculator.substract
end

When(/^I multiply them$/) do
  @result = @calculator.multiply
end

When(/^I division them$/) do
  @result = @calculator.division
end

Then(/^I should see (\d+) on the terminal$/) do |number|
 assert_equal @result, number.to_i
end
