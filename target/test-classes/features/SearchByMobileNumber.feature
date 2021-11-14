Feature: As a Staff Member using our internal system
    I want to be able to Search for a Member by Mobile Phone Number
    so that I can provide relevant information and adhere to privacy regulations 

 # Basic flow

 Scenario: search for an existing member with valid mobile phone number
   Given user is on search page
   And selected 'Mobile phone number' option from 'Find a member' dropdown
   When user enter valid mobile phone Number
   And click on 'Find member' button
   Then user should see 1 matching search result information

 Scenario: show list of members on policy
   Given user is on search page
   And selected 'Mobile phone number' option from 'Find a member' dropdown
   When user enter valid mobile phone Number
   And click on 'Find member' button
   Then user should see list of all members on policy
    
 Scenario: search for an existing member with valid mobile phone number
   Given user is on search page
   And selected 'Mobile phone number' option from 'Find a member' dropdown
   When user enter invalid mobile phone Number
   And click on 'Find member' button
   Then user should see message "The Search criteria does not match any of our member records"
   And user should stay on search page

 Scenario: search for an existing member with empty mobile phone number field
   Given user is on search page
   And selected 'Mobile phone number' option from 'Find a member' dropdown
   When user enter no value in mobile phone Number
   And click on 'Find member' button
   Then user should see message "The Search criteria does not match any of our member records"
   And user should stay on search page

 # Alternate flow
 Scenario: Alternate search option
   Given user is on search page
   And selected 'Mobile phone number' option from 'Find a member' dropdown
   When user enter non-existing mobile phone Number
   And click on 'Find member' button
   Then user should see message "The Search criteria does not match any of our member records"
   And user should stay on search page
   And user click on 'Find a member' dropdown
   Then user should be able to chose alternate search option from 'Find a member' dropdown
