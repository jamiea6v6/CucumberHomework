# Gherkin code - Cucumber homework from session 2
# This is the start of our Java library
# - Takes 2 inputs
#    - price of available items
#    - notification of items as they are scanned
#    - checkout keeps track of total cost
#    - example db contains 2 items:  banana $0.40  and apple $0.25
#    - user scans 1 banana
#    - output should be $0.40


Feature: Scanning java library contains item prices, notifies of items scanned, and keeps track of total cost
   Scenario: Scanning a banana 
     Given I have 1 banana 
     When I scan the banana
     Then the price returned should be $0.40
       And the user is notified
       And the running total should reflect $0.40
