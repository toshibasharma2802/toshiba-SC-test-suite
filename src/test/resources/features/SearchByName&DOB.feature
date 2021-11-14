Feature: As a Staff Member using our internal system
    I want to be able to Search for a Member by Name and Date of Birth (First Name, Last Name and Date of birth)
    so that I can provide relevant information and adhere to privacy regulations 

 # Basic flow

 Scenario: search for an existing member with Name and Date of birth
 Given user is on search page 
   And selected 'Name and Date of birth' option from 'Find a member' dropdown
 When user enter valid Name and Date of birth
     And click on 'Find member' button
  Then user should see 1 matching search result information

 Scenario: show list of members on policy search result
 Given user is on search page 
     And selected 'Name and Date of birth' option from 'Find a member' dropdown
 When user enter valid Name and Date of birth
     And click on 'Find member' button
   Then user should see list of all members on policy search result
    
 Scenario: search for an existing member with invalid Name and Date of birth
 Given user is on search page 
     And selected 'Name and Date of birth' option from 'Find a member' dropdown
 When user enter invalid Name and Date of birth
     And click on 'Find member' button
  Then user should see message "The Search criteria does not match any of our member records"
     And user should stay on search page

 Scenario: search for an existing member with empty Name and Date of birth field
 Given user is on search page 
     And selected 'Name and Date of birth' option from 'Find a member' dropdown
 When user enter no value in Name and Date of birth
     And click on 'Find member' button
  Then user should see message "The Search criteria does not match any of our member records"
     And user should stay on search page

 # Alternate flow
 Scenario: Alternate search option
 Given user is on search page 
     And selected 'Name and Date of birth' option from 'Find a member' dropdown
 When user enter non-existing Name and Date of birth
     And click on 'Find member' button
  Then user should see message "The Search criteria does not match any of our member records"
     And user should stay on search page
     And user click on 'Find a member' dropdown
  Then user should be able to chose alternate search option from 'Find a member' dropdown

