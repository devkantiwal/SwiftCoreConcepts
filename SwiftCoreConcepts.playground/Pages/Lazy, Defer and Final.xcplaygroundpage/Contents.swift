// LAZY

// It comes in role when we use this
// or
// Lazy is a stored property whoes initial value is not calculated until the first time it is used


struct Player {
    var name: String
    var team: String
    
    lazy var introduction = {
       "Player info: \(name) is in \(team)"
    }()
}

var obj = Player(name: "Virat", team: "India")

obj.introduction

// Lets verify how lazy works

class Calculator {
    static func gamePlayed() -> [Int] {
        var games: [Int] = []
        for i in 0..<1000 { games.append(i) }
        return games
    }
}

class NoLazy {
    var gamesPlayed: [Int] = {
        Calculator.gamePlayed()
    }()
}

var objNoLazy = NoLazy()

// Now for the above case after calculating 4000 we are going to get our object

// In case of lazy it won't calculate unless we are going to use the property

class WithLazy {
   lazy var gamesPlayed: [Int] = {
       Calculator.gamePlayed()
   }()
}

var objWithLazy = WithLazy()

// Impact of lazy on memory

// DEFER

//A defer is a statement that is used for executing code just before transferring program control outside of the scope that the statement appears.
//
//The defer statement is not something you will need to use often in Swift. It will be useful in situations when you want to clean resources before they go out of scope.

// multiple defer
func showDefer() {
    print("1")
    defer {
        print("2")
    }
    defer {
        print("3")
    }
    print("4")
}

showDefer()

// Example

var languages = ["Ram", "Shyam", "GhanShaym"]
func removeLastValue() -> String? {
   let lastValue = languages.last
   defer {
      languages.removeLast()
   }
   return lastValue
}
let lastValue = removeLastValue()
print("last value: \(lastValue ?? "")")
print("Array: \(languages)")


// Capture test (Defer don't capture value)

func captureTest() {
   var fullName = "Mohit Chouhan"
   defer { print(fullName) }
   fullName = "Mohit Sharma"
   print(fullName)
}


captureTest()

// When you declare a class as being final, no other class can inherit from it. This means they can’t override your methods in order to change your behavior – they need to use your class the way it was written.

final class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// Never keyword

