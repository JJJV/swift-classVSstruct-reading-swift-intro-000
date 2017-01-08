//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Giant {
    var name: String
    var weight: Double
   var homePlanet: String
    
    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}
/*```

And this code that instantiates an instance of `Giant`:

```swift
 
 */
let fred = Giant(name: "Fred", weight: 340.0, homePlanet: "Earth")
/*```

Will these three lines of code run? If not, why not?

```swift*/
fred.name = "Brick"
fred.weight = 999.2
fred.homePlanet = "Mars"



struct Alien {
    var name: String
    var height: Double
    var homePlanet: String
}

var bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")


bilbo.name = "Jake"
bilbo.height = 1.42
bilbo.homePlanet = "Saturn"

let edgar = Giant(name: "Edgar", weight: 520.0, homePlanet: "Earth")
let jason = edgar
jason.name = "Jason"

print("\(jason.name)")

var charles = Alien(name: "Charles", height: 2.25, homePlanet: "Pluto")
charles.name = "Ramon"
var charlesFromJupiter = charles
charlesFromJupiter.homePlanet = "Jupiter"

print("\(charlesFromJupiter.homePlanet)")
print("\(charles.name)")


struct BankAccount {
    var owner: String
    var balance: Double
    
   mutating  func deposit(_ amount: Double) {
        balance += amount
    }
    
   mutating  func withdraw(_ amount: Double) {
        balance -= amount
    }
}

var joeAccount = BankAccount(owner: "Joe", balance: 100.0)
var joeOtherAccount = joeAccount
joeAccount.withdraw(50.0)


print("\(joeAccount.balance)")
print("\(joeOtherAccount.balance)")


class MusicLibrary {
    var tracks: [String]
    
    init() {
        tracks = []
    }
    
    func add(track: String) {
        tracks.append(track)
    }
}

let library1 = MusicLibrary()
library1.add(track: "Michelle")
library1.add(track: "Voodoo Child")
let library2 = library1
library2.add(track: "Come As You Are")


print("\(library1.tracks)")
print("\(library2.tracks)")

