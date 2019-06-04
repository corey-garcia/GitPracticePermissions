import UIKit

///Class Challenge: Create a Full Bank Account Class

///Guiding Questions:
// 1) How do you represent a bank account? What data types should/should not be involved?
// 2) What functions/functionality should bank accounts be able to do?
//Possible Extensions: Think about Location Functionality or Password Security


class BankAccount {
    var ownerName : String
    var currentBalance : Double
    var withdrawal : Double
    var deposit : Double
    var location : String
    
    
    //has to initialize all the variables of the class in init function—otherwise will throw error
    init() {
        ownerName = ""
        currentBalance = 0.0
        withdrawal = 0
        deposit = 0
        location = ""
    }
    
    //sets the accounts UserName
    func setUserName(userName: String) {
        ownerName = userName
    }
    
    //sets the accounts balance after a deposit
    func makeDeposit(depositAmount: Double) {
        currentBalance += depositAmount
    }
    
    //sets the accounts balance after a withdrawal
    func setCurrentLocation(usersCurrentLocation: String) {
        location = usersCurrentLocation
    }
    
    //wrapper functions
    func checkCurrentName() -> String {
        return ownerName
    }
    
    func checkCurrentBalance() -> Double {
        return currentBalance
    }
    
    func checkAccountLocation() -> String {
        return location
    }
    
    //sends an alert to the user if the location from where the deposit or withdrawal was made
    //does not match the users location
    func detectPossibleFraud(changeLocation: String) -> Bool {
        if changeLocation != location {
            return true
        }
        return false
    }
}

//Testing the Class BankAccount that we just made
var coreysBankAccount = BankAccount()




coreysBankAccount.setUserName(userName: "Corey W Garcia")

coreysBankAccount.checkCurrentName()






