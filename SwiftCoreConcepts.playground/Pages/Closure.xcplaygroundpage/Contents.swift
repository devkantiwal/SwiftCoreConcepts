// CLOSURE


// Closure Expression Syntax

//{ (<#parameters#>) -> <#return type#> in
//   <#statements#>
//}


// Trailing Closures

func someFunctionThatTakesAClosure(closure: () -> Void) {
    // function body goes here
}

//Here's how you call this function without using a trailing closure:
someFunctionThatTakesAClosure(closure: {
    // closure's body goes here
})

// Here's how you call this function with a trailing closure instead:
someFunctionThatTakesAClosure() {
    // trailing closure's body goes here
}

// Capturing Values

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)

incrementByTen()

incrementByTen()

incrementByTen()



// Closures Are Reference Types
// In the example above, incrementBySeven and incrementByTen are constants, but the closures these constants refer to are still able to increment the runningTotal variables that they have captured. This is because functions and closures are reference types.

let alsoIncrementByTen = incrementByTen
alsoIncrementByTen()
// returns a value of 50

incrementByTen()
// returns a value of 60



// Escaping Closures and Non Escaping Closure
// A closure is said to escape a function when the closure is passed as an argument to the function, but is called after the function returns. When you declare a function that takes a closure as one of its parameters, you can write @escaping before the parameter’s type to indicate that the closure is allowed to escape.

var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandler()
//    completionHandlers.append(completionHandler)
}

func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithNonescapingClosure {
            x = 200
        }
        someFunctionWithEscapingClosure {
            print("hello")
            self.x = 100
        }
    }
}

let instance = SomeClass()
instance.doSomething()
print(instance.x)
// Prints "200"

completionHandlers.first?()
print(instance.x)
// Prints "100"


class SomeOtherClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { [self] in x = 100 }
        someFunctionWithNonescapingClosure { x = 200 }
    }
}


// Autoclosures
// An autoclosure is a closure that’s automatically created to wrap an expression that’s being passed as an argument to a function. It doesn’t take any arguments, and when it’s called, it returns the value of the expression that’s wrapped inside of it.

var customers = ["a", "b", "c"]

var customerProvider = { customers.remove(at: 0) }

print(customers.count)

customerProvider()

print(customers.count)


// without autoclosure
func serve(customer customerProvider: () -> String) {
    print("Now serving \(customerProvider())!")
}
serve(customer: "customers" )

// with autoclosure
func serve(customer customerProvider: @autoclosure () -> String) {
    print("Now serving \(customerProvider())!")
}
serve(customer: "customers")



// Questions


// 1: sum of two number in which we have to pass two number to closure and it will return the sum

var sumByClosure: (Int,Int)->(Int) = { a,b in
    return a + b
}

print(sumByClosure(1,2))

// 2: a closure is a special type of function without the function name basic example

var printClosure: ()->() = {
    print("hello world!")
}

printClosure()

// 3: closure with parameter

var printClosure2: (Int)->() = { val in
    print(val)
}

printClosure2(2)

// 3: closure with return type

var printClosure3: ()->(Int) = {
    return 4
}

let closureVal = printClosure3()

print(closureVal)


// 4: Closures as Function Parameter

func grabLunch(by search: () -> ()) {
  search()
}

func grabLunc() {
    print("")
}

// ?
grabLunch {
    print("Type A")
}

// ?
grabLunch(by: {
  print("Type B")
})


//func makeIncrementera(forIncrement amount: Int) -> () -> Int {
//    var runningTotal = 0
//    func incrementer() -> Int {
//        runningTotal += amount
//        return runningTotal
//    }
//    return incrementer
//}
//
//let incrementByTena = makeIncrementera(forIncrement: 10)
//
//incrementByTena()
//
//incrementByTen()
//
//incrementByTen()


