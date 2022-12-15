Feature: As a customer I should be able to deith the content of my shopping basket, change quantities, and then checkout

    As a customer I should be able to deith the content of my shopping basket, change quantities, and then checkout

# Success Path - Customer can order
Scenario: As a customer I can add an item to my shopping basket
Given I am on the product detial page
And the product is in stock
And this product is currently not in the basket
When I click the add to Basket button
Then the product is added to the basket
And a message is displayed to the user
And the stock level is reduced by one

# Failure Path - Product is not in the stock and not in the basket
Scenario: As a customer I am unable to add an item to my shopping basket if not in stock
Given I am on the product detial page
And the product is not in stock
And this product is currently not in the basket
Then the product is added to the basket
And a message is displayed to the user
And the stock level is unchanged

# Failure Path - Product is stock and in the basket
Scenario: As a customer I am unable to add an item to my shopping basket if it's already in the basket
Given I am on the product detial page
And the product is in stock
And this product is currently in the basket 
Then the product is added to the basket
And a message is displayed to the user
And the stock level is unchanged

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