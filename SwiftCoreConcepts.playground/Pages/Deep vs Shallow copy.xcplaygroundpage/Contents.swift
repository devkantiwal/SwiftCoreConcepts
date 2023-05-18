// Deep VS Shallow copy

// Deep copy
// Duplicates everything
// With a deep copy, any object pointed to by the source is copied and the copy is pointed to by the destination. So two completely separate objects will be created.
// Value types are copied deeply
// less prone to race condition
import Foundation

struct ABC {
    
}

var o1 = ABC()
var o2 = o1 // Deep copy

// Shallow copy
// Duplicates as little as possible
// With a shallow copy, any object pointed to by the source is also pointed to by the destination. So only one object will be created in the memory.
// Faster — only the reference is copied.

class ABCD: NSCopying {
    var val: Int
    init(val: Int) {
        self.val = val
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = ABCD(val: val)
        return copy
    }
}

var o3 = ABCD(val: 1)
var o4 = o3 // Shallow copy


// Copying refernce type deeply

var o5 = o3.copy() as! ABCD

o5.val = 10
print(o5.val)
print(o3.val)



