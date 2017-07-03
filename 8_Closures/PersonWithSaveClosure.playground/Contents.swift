
class Person {
    //....
    var saveHandler: ((Bool) -> Void)?
    
    func saveToRemoteDatabase(handler: (Bool) -> Void) {
        saveHandler = handler
        // Send person information to remove database
        // Once remote save is complete, it calls saveComplete(Bool)
    }
    
    func saveComplete(success: Bool) {
        saveHandler?(success)
    }
}

let dave = createPerson(givenName: "David", middleName: "Ernest", familyName: "Moon")
dave.saveToRemoteDatabase(handler: { success in
    print("Saved finished. Successful: \(success))")
})
