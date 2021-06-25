//
//  main.swift
//  Day-9
//
//  Created by codestorm on 2021/7/1.
//
// Initializers
import Foundation
//
//struct User {
//    var username: String
//
//    init() {
//        username = "Anonymous"
//        print("Creating a new user!")
//
//    }
//}
//
//var user = User()
//user.username = "twostraws"


//Referring to the current instance
//struct Person {
//    var name: String
//
//    init(name: String) {
//        print("\(name) was born!")
//        self.name = name
//    }
//}



//Lazy Properties

//struct FamilyTree {
//    init() {
//        print("Creating family tree!")
//    }
//}
//
//struct Person {
//    var name: String
//    lazy var familyTree = FamilyTree()
//
//    init(name: String) {
//        self.name = name
//    }
//}

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
