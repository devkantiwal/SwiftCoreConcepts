
// Enums

// Groupd of related values

// basic enum and it's usage

// we cann't used store properties in enum
enum Directions {
    case east
    case west
    case north
    case south
    var calculation: Int  {
        print("hello")
        return 10
    }
    
    static let value = 100
}

class ABC {
    var calculation: Int  {
        print("hello")
        return 10
    }
}

var classObj = ABC()
print(classObj.calculation)
print(classObj.calculation)

//var enumObj = Directions.east
//print(enumObj.calculation)
//print(enumObj.calculation)
//print(enumObj.calculation)

func navigateMe(to: Directions) {
    switch to {
    case .east:
        print("I am heading toward east")
    case .west:
        print("I am heading toward west")
    case .north:
        print("I am heading toward north")
    case .south:
        print("I am heading toward south")
    }
}

navigateMe(to: .east)

// enum with raw value

enum SocialPlatform: String {
    case linkedin
    case instagram
    case facebook
}

func getRatings(platform: SocialPlatform) {
    print(platform.rawValue)
}

getRatings(platform: .linkedin)


//can we conform protocol in enum yes
// if one wants to know all the cases in enum

enum CountMe: String, CaseIterable {
    case one
    case two
    case three
    case four
}
// Here we will get the count of enum cases
print(CountMe.allCases.count)

// Here we can iterate all the enum cases and print their raw value
for count in CountMe.allCases {
    print(count.rawValue)
}



// Associated Values

enum SocialMediaPlatform {
    case youtube(subscribers: Int)
    case linkedin(connection: Int)
    case instagram(followers: Int)
    case twitter
}

func getSponsorshipEligiblility(for platform: SocialMediaPlatform) {
    switch platform {
    case .youtube(let subscribers):
        print("Subscribers i have \(subscribers)")
    case .instagram(let followers):
        print("Followers i have \(followers)")
    case .linkedin(let connections):
        print("Connections i have \(connections)")
    case .twitter:
        print("I don't have any value")
    }
}

getSponsorshipEligiblility(for: .instagram(followers: 100))

func getSponsorshipEligiblilitySpecialCases(for platform: SocialMediaPlatform) {
    switch platform {
    case .youtube(let subscribers):
        print("Subscribers i have \(subscribers)")
    case .instagram(let followers) where followers > 100:
        print("Followers i have \(followers)")
    case .linkedin(let connections):
        print("Connections i have \(connections)")
    case .twitter:
        print("I don't have any value")
    case .instagram:
        print("you don't have insta followers")
    }
}

getSponsorshipEligiblilitySpecialCases(for: .instagram(followers: 90))



//var let

class ABCD {
    var name = "Sahil bhai"
}

let obj = ABCD()
let obj2 = obj
obj2.name = "dev"
print(obj)
print(obj2)

print(obj.name)
print(obj2.name)
