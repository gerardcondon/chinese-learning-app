# Hanzi App Test Plan

## Website elements

### Index Page
    * has a main jumbotron with text and the sign up form

### SignUp Form
    * has a name and an email fields
    * has a submit button

### NavBar
    * has link in top left corner to go to the index page
    * has sign up button - brings to the index page
    * has sign in page - displays message and brings to the index page
    * has a link to the about page

### Links panel
    * series of links and descriptions to Chinese learning resources

### Successful sign up page
    * Has a thank you message with the subscriber's name
    * Has the links panel
    
### Resources page
    * Has the sign up form
    * Has the links panel
    
## Scenarios

### User signs up with valid name and email
    * User enters a valid name and email address
    * User is redirected to the successful sign up page
    * User should get a welcome mail
    * Admin should get a new user mail
    
### User signs up with a duplicate email
### User unsubscribes via the email link
### User unsubscribes and resubscribes via the mailkick view
### User clicks about link
### User clicks resources link
### User clicks Sign In button
### User clicks Sign Up button