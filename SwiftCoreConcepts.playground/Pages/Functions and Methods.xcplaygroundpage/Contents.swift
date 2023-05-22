// FUNCTIONS AND METHODS

// FUNCTIONS
// Functions are self-contained chunks of code that perform a specific task.

// Functions With an Implicit Return
// If the entire body of the function is a single expression, the function implicitly returns that expression.

func greet(for name: String) -> String {
    " Hello \(name)!"
}

greet(for: "Sahil")

// Function Argument Labels and Parameter Names

func someFunction(argumentLabel parameterName: Int) {
    // In the function body, parameterName refers to the argument value
    // for that parameter.
}
someFunction(argumentLabel: 3)

// Omitting Argument Labels

func someFunction2(_ firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction2(1, secondParameterName: 2)

// Default Parameter Values

func someFunction3(name: String = "No Name") {
    
}
someFunction3()

// Variadic Parameters

func arithmeticSum(nums: Any...) {
    var sum = 0
    print(nums)
//    for val in nums {
//        sum = sum + val
//    }
    print(sum)
}

arithmeticSum(nums: 1,2,3,4,5,true,"dev")


// In-Out Parameters

var a = 1
var b = 2
func swap(a: inout Int, b: inout Int) {
    a = a + b
    b = a - b
    a = a - b
}

swap(a: &a, b: &b)

print(a,b)


// Using function type

func sum(a: Int, b: Int) -> Int {
    a + b
}


var sumFuncType: (Int, Int) -> Int = sum

print(sumFuncType(3,4))

// Function Types as Parameter Types

func printMathResult(formula: (Int,Int)->Int, a: Int, b: Int) {
    print(sum(a: a,b: b))
    print(sumFuncType(a,b))
}

printMathResult(formula: sumFuncType, a: 3, b: 5)


// Function Types as Return Types

func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}


func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
print(moveNearerToZero(currentValue))


// Nested funciton


func greetMessage() {

  func displayName() {
    print("Good Morning Abraham!")
  }

  displayName()
}








// METHODS
// Define and call functions that are part of an instance or type.
// Methods are functions that are associated with a particular type. Classes, structures, and enumerations can all define instance methods, which encapsulate specific tasks and functionality for working with an instance of a given type. Classes, structures, and enumerations can also define type methods, which are associated with the type itself. Type methods are similar to class methods in Objective-C.


// Why funcitons called firt class citizen?

