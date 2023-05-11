// OPTIONAL CHAINING AND OPTIONAL BINDING


// OPTIONAL CHAINING
// Optional chaining is a process for querying and calling properties, methods, and subscripts on an optional that might currently be nil.


class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let john = Person()

// To access number of rooms we are going to use optional chaining.
let numberOfRooms = john.residence?.numberOfRooms


// OPTIONAL BINDING

var value: Int?

if let getVal = value {
    print(getVal)
}

func getValue() {
    guard let getVal = value else { return }
    print(getVal)
}


print(value ?? 0)
