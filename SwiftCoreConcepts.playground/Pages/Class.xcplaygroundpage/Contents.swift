// STRUCT

//- Are value type
//- can define properties and functions
//- can be extended
//- can conform to protocol
//- can be used with generics
//- can be used with subscript


// CLASS

//- Are value type
//- can define properties and functions
//- can be extended
//- can conform to protocol
//- can be used with generics
//- can be used with subscript
//- Are reference type
//- can be deinitialize()
//- support inheritance


// NOTE: when struct contains a property of class type its value will be copied or it will refer to the same object?

class Tax {
    var gst: Double
    init(gst: Double) {
        self.gst = gst
    }
}

struct Item {
    var totalPrice: Double
    var tax: Tax
}
var item1 = Item(totalPrice: 100, tax: Tax(gst: 18.0))
var item2 = item1
item2.tax.gst = 20.0
item2.totalPrice = 200

print(item1.totalPrice)
print(item1.tax.gst)
print(item2.totalPrice)
print(item2.tax.gst)


// QUE: Memory allocation when struct is a stored property in  a class
// ANS: Heap


// QUE: Which is thread safe
// ANS: Struct just because stacks have exclusive access to their threads if the shared access of thread is not allowed which means it is thread safe
