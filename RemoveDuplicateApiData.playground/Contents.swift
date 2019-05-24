import UIKit


// DEFINITION OF EQUATABLE
// The Equatable protocol is what allows two objects to be compared using ==, and it’s surprisingly easy to implement because Swift does most of the work for you by default.

// USING EQUATABLE PROTOCOL TO REMOVE DUPLICATE ELEMENTS WITHIN THE ARRAY

extension Array where Element: Equatable {
    func removeDuplicates() -> [Element] {
        var result = [Element]()
        
        for value in self {
            if !result.contains(value) {
                result.append(value)
            }
        }
        return result
    }
}

let numberArray = [3, 4, 21, 1, 3, 1, 5, 20, 3]
print(numberArray.removeDuplicates())

let stringArray = ["Rahul", "Chopra", "Rahul"]
print(stringArray.removeDuplicates())




// USING EQUTABLE IN STRUCTURE
// TO MATCH 2 STRUCTURE OBJECTS WITH THEIR AGE

struct Person: Equatable {
    
    let name: String
    let age: Int
    
    static func ==(lhs: Person, rhs: Person) -> Bool {
        return lhs.age == rhs.age
    }
}

let p1 = Person(name: "Rahul", age: 12)
let p2 = Person(name: "rahul", age: 12)
print(p1 == p2)
