Feature: Common test cases for search policy member
 As a staff member
 I want to be able to Search for a policy member using various options from 'Find a member' dropdown
 So that I can provide relevant information and adhere to privacy regulations

 Scenario Outline: Verify member details in search results
 Given search result returned 1 member information
  When user click on Find member button
  Then user should see following search result page fields 
 Examples: 
 |name                     | |field type |
 |Name                     | |title case |
 |Date of birth            | |text       |
 |Member card number       | |text       |
 |Policy number            | |text       |
 |Address                  | |dropdown   |
 |Member(s) on this policy | |list       |
 
 Scenario: Search return server exception
  Given user is on search page 
     And selected a search option from 'Find a member' dropdown
 When user enter value in input field
     And click on 'Find member' button
   Then server returns '5xx' server Exception
     And user should stay on exception page