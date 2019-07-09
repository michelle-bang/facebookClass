import UIKit

//Intentions: I want to create a Facebook profile class that takes in different properties each time a user creates a Facebook profile.

class FacebookProfile {
    //Section 1. Class attributes
    //These are going to be our initializers
    //These will change each time we decide to create a NEW Facebook
    
    var profileName : String
    var profileAge : Int
    var profileBio : String
    var profileSchool : String
    var profileFriendList : [String]
    var profileBirthday : String
    var relationshipStatus : String
    var profileJob : String
    
    //Section 1.5 Class constants - The relationship statuses here will never, ever change.
    //The let keyword keeps it from changing.
    
    let relationshipStatusOne = "In a relationship" //Represent this by number 1
    let relationshipStatusTwo = "Single" //Represent this by number 2
    let relationshipStatusThree = "It's complicated" //Represent this by number 3
    let relationshipStatusFour = "Married" //Represent this by number 4
    
    //create an intializer that will take in each user's information
    
    init() {
        profileName = "New User"
        profileAge = 0 //Maybe this is a design flaw that we may want to fix later on
        profileBio = "This is a profile"
        profileSchool = ""
        profileFriendList = [String]()
        profileBirthday = ""
        relationshipStatus = relationshipStatusThree //another design flaw that it will always default to it's complicated
        profileJob = ""
    }
    //Section 2. Functions that will support our Facebook profile
    
    //Create a function that sets a profile's name by taking in an arguement.
    //This serves as a "setting function" - where I'm essentially setting my Facebook profile name
    func setProfileName(userName : String){
        profileName = userName
    }
    func checkEverything() {
        print(profileName)
    }
}

//We are creating an object from our Facebook profile class here
var mairasFacebook = FacebookProfile()

//If I want to modify Maira's Facebook, I would call upon the object I created here:
//When you want to use a function in a Class, you use a period behind the object name and you write the function name. For example, I want to set a profile name, so I use .setProfileName (calls upon the func setProfileName)
mairasFacebook.setProfileName(userName: "Maira's Facebook")
mairasFacebook.checkEverything()

