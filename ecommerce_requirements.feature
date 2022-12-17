Feature: As a customer I should be able to deith the content of my shopping basket, change quantities, and then checkout

    As a customer I should be able to deith the content of my shopping basket, change quantities, and then checkout

# Success Path - Customer can order
Scenario: As a customer I can add an item to my shopping basket
Given I am on the product detial page of product "1"
And product "1" has a stock level of "2"
And product "1" has basket quantity of "0"
When I click the add to Basket button
Then product "1" has a basket quantity of "1"
And a message is displayed to the user
And product "1" has a stock level of "1"

Scenario: As a user I should be able to login to my account using my credentials
Given the user is on the login page
And the sigin button is displayed
When the user enters their username 
And the user click the login button 
Then the user is authenticated
And the user is on the account page


# Makling lists in Gherkin
Given My shopping basket contains
* Product A 
* Product B 
* Product C 
When I apply a discount code 
Then the discount is valid 


Scenario: As a user I want to be able to register for a new account
Given the user in on the register page 
And the register button is displayed
When the user enters thier name
And the user enter thier password 
And the user  clicks register button 
Then the user details is check that it does not exist
And the user will to account page 

# Failure Path - Product is not in the stock and not in the basket
Scenario: As a customer I am unable to add an item to my shopping basket if not in stock
Given I am on the product detail page of product "2"
And product "2" has a stock level of "0"
And product "2" has a basket quantity of "0"
When I click the Add to Basket button
And product "2" has a basket quantity of "0"
And product "2" has a stock level of "0"

# Failure Path - Product is stock and in the basket
Scenario: As a customer I am unable to add an item to my shopping basket if it's already in the basket
Given I am on the product detail page of product "3"
And product "3" has a stock level of "2"
And product "3" has a basket quantity of "1"
When I click the Add to Basket button
Then a message is displayed to the user
And product "3" has a basket quantity of "1"
And product "3" has a stock level of "2"

Scenario: As a customer I can remove an item from my shopping basket
Given I am on the basket page 
When I click on the remove button 
Then the product is removed from the basket 

Scenario: As a customer I can view the items of my shopping basket
Given I am on the home page
When I click the shopping basket icon 
Then I click the shopping icon

Scenario: As a customer I can checkout the shopping basket
Given I am on the basket page
When I click the checkout button 
Then I should be taken to the checkout page 