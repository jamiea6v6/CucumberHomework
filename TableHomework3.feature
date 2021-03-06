# Gherkin code - Cucumber homework from session 3
# Adds table function to allow for scanning and totalling 1 - 3 bananas
# - Takes 2 inputs
#    - price of available items
#    - notification of items as they are scanned
#    - checkout keeps track of total cost
#    - example db contains 2 items:  banana $0.40  and apple $0.25
#    - user scans 1 banana
#    - output should be $0.40


Feature: Scanning java library contains item prices, notifies of items scanned, and keeps track of total cost
   Scenario: Scanning a banana 
     Given I have quantity banana <quantity> 
     When I scan the banana
     Then the price returned should be <price>
       And the user is notified
       And the running total should reflect <total>
	   
	Examples:
	|quantity|price|total|
	|.40|1|.40|
	|.40|2|.80|
	|.40|3|1.20|
