//
//  main.swift
//  Day-9
//
//  Created by codestorm on 2021/7/1.
//

import Foundation
// Initializers
//Initializers are special methods that provide different ways to create your struct. All structs come with one by default, called their memberwise initializer – this asks you to provide a value for each property when you create the struct.
//
//You can see this if we create a User struct that has one property:
//
//struct User {
//    var username: String
//}
//When we create one of those structs, we must provide a username:
//
//var user = User(username: "twostraws")
//We can provide our own initializer to replace the default one. For example, we might want to create all new users as “Anonymous” and print a message, like this:
//
//struct User {
//    var username: String
//
//    init() {
//        username = "Anonymous"
//        print("Creating a new user!")
//    }
//}
//You don’t write func before initializers, but you do need to make sure all properties have a value before the initializer ends.
//
//Now our initializer accepts no parameters, we need to create the struct like this:
//
//var user = User()
//user.username = "twostraws"
//var user = User()
//user.username = "twostraws"


//Inside methods you get a special constant called self, which points to whatever instance of the struct is currently being used. This self value is particularly useful when you create initializers that have the same parameter names as your property.
//
//For example, if you create a Person struct with a name property, then tried to write an initializer that accepted a name parameter, self helps you distinguish between the property and the parameter – self.name refers to the property, whereas name refers to the parameter.
//
//Here’s that in code:
//
//struct Person {
//    var name: String
//
//    init(name: String) {
//        print("\(name) was born!")
//        self.name = name
//    }
//}


//As a performance optimization, Swift lets you create some properties only when they are needed. As an example, consider this FamilyTree struct – it doesn’t do much, but in theory creating a family tree for someone takes a long time:
//
//struct FamilyTree {
//    init() {
//        print("Creating family tree!")
//    }
//}
//We might use that FamilyTree struct as a property inside a Person struct, like this:
//
//struct Person {
//    var name: String
//    var familyTree = FamilyTree()
//
//    init(name: String) {
//        self.name = name
//    }
//}
//
//var ed = Person(name: "Ed")
//But what if we didn’t always need the family tree for a particular person? If we add the lazy keyword to the familyTree property, then Swift will only create the FamilyTree struct when it’s first accessed:
//
//lazy var familyTree = FamilyTree()
//So, if you want to see the “Creating family tree!” message, you need to access the property at least once:
//
//ed.familyTree




// Static properties and methods
//struct Student {
//    static var classSize = 0
//    var name: String
//
//    init(name: String) {
//        self.name = name
//        Student.classSize += 1
//    }
//}
//let ed = Student(name: "Ed")
//let taylor = Student(name: "Taylor")
//
//print(Student.classSize)


//Access control
struct Person {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}
