//  COLLECTION TYPES
// There are three different type of collection in swift
// Sets Array and Dict

// ARRAY
// An array stores values of the same type in an ordered list. The array can store duplicate values. Swift’s Array type is bridged to Foundation’s NSArray class.

// Syntax
// You can declare an empty array like the following −

 let array: [Int] = []
 let array2: Array<Int> = []
 let array3 = [Int]()

// You can assign elements to the array while declaring it like the following −

 var arrayStrings: [String] = ["Alpha", "Beta", "Delta"] // array of strings
 let arrayInts: Array<Int> = [12, 23, 34, 45] // array of integers


// Below are some common methods and properties performed on an array
// .append() − To append a new element at the last position.
//
// .removeFirst() − To remove and return the first element.
//
// .removeLast() − To remove and return the last element.
//
// .popLast() − To pop the last element.
//
// .reverse() − To reverse the elements.
//
// .filter() − To filter out the array element based on a condition.
//
// .suffix() − Returns a subsequence, up to the given maximum length, containing the final elements.
//
// .sort() − Sorts the array in place, using the given predicate as the comparison between elements.
//
// .isEmpty − To check whether an array is empty or not.
//
// .count − To get the number of elements containing an array.


// SETS

//A set stores unique values of the same type in an unordered list. A set can be used instead of an array when order is not essential and when you want to ensure unique elements.

// Example
var numbers: Set  = [10, 20, 30, 40]
var names: Set = ["Amit", "Rahul", "Pravin", "Sachin"]

// Operations
  
var setA: Set<Int> = [1, 2, 3, 4, 5]
  
var setB: Set<Int> = [3, 4, 5, 6, 7]

// Question: check complexity of operations

// Swift program to find the union of two sets
print("Union of setA and setB:", setA.union(setB))

// Swift program to find the intersection of two sets
print("Intersection of setA and setB:", setA.intersection(setB))

// Swift program to find the subtracting of two sets
print("Subtracting of setA and setB:", setA.subtracting(setB))

// Swift program to find the symmetricDifference of two sets
print("SymmetricDifference of setA and setB:", setA.symmetricDifference(setB))


// DICTIONARY
// A dictionary stores the values associated with keys or in key-value form. Dictionary keys and values do not maintain order.

// Syntax
let dictionary: [String: Int] = [:]
let dictionary2: Dictionary<Int, Int> = [:]
let dictionary3 = [String: Int]()

let dictionary1: [String: Int] = ["Alpha": 1, "Beta": 2, "Gamma": 3]
let dictionary4: Dictionary<Int, String> = [1: "One", 2: "Two", 3: "Three"]


var dictionary5: [String: Any?] = [
    "name": "Amit Gupta",
   "age": 22,
   "address": "New Delhi, India",
   "score": 8.9
]

import Foundation

class Person {
var name = "dev"
}
// How to store nil in dictionary
var dict: [String: Any] = [:]

var obj: Person?

dict["B"] = nil
dict["C"] = obj
dict["A"] = NSNull()

dict["A"] = nil

print(dict)
 
