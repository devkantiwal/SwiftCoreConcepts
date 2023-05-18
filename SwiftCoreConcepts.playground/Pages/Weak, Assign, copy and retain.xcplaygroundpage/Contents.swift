// @property

// by using @property with an object/variable we are changing the scope of the property not limited to that class only. We can use this object/variable with the class object.

// THREADING ATTRIBUTE

// Atomic
// A default behaviour
// If an object is atomic then a single thread can access that property, It is thread safe
// At a time only one thread of a particular instance of that class can have the control over that object

// NonAtomic
// It is not thread safe
// It will not assure us what we will get if same value is accessed simultaneously from different thread

// ACCESS ATTRIBUTE

// Read only same as let in swift

// readwrite same as var in swift

// MEMORY MANAGEMENT ATTRIBUTES

// Strong
// Retain
// Weak
// Assign
// Copy
// Getter
// Setter
// Unsafe_unretained


struct ABC {
    var name = "X"
}

var obj = ABC()
var obj2 = obj
obj.name = "Y"
print(obj.name)
print(obj2.name)




