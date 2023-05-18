// INIT


// Default init for structures and classes
struct Item {
    var name: String = "dev"
}

class ItemNew {
    var name: String = "dev"
}

// Memberwise init for structure type

struct Member{
    var name: String
}
var objDefault = Member(name: "dev")

func showSomething() {
    print("")
}


// Que: why class don't support memberwise init

// Designated init for class and struct
class ItemA {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var objItem = ItemA(name: "dev")

// Failable init

class person {
    var uidai: String
    init?(uidai: String) {
        if uidai.count < 12 {
            return nil
        }
        self.uidai = uidai
    }
}

var objFail = person(uidai: "1234")


// convenience
class Cake {
    var quantity: Int
    var name: String
    init(quantity: Int, name: String) {
        self.name = name
        self.quantity = quantity
    }
    
    convenience init(cakeName: String) {
        self.init(quantity: 1, name: cakeName)
    }
}



// DE-INIT
//  A deinitializer is called immediately before a class instance is deallocated. You write deinitializers with the deinit keyword, similar to how initializers are written with the init keyword. Deinitializers are only available on class types.

class Bank {
    static var coinsInBank = 10_000
    static func distribute(coins numberOfCoinsRequested: Int) -> Int {
        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    static func receive(coins: Int) {
        coinsInBank += coins
    }
}

class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        coinsInPurse = Bank.distribute(coins: coins)
    }
    func win(coins: Int) {
        coinsInPurse += Bank.distribute(coins: coins)
    }
    deinit {
        Bank.receive(coins: coinsInPurse)
    }
}

var playerOne: Player? = Player(coins: 100)

playerOne = nil
