//
//  main.swift
//  Day-9
//
//  Created by codestorm on 2021/7/1.
//

import Foundation

struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
        
    }
}

var user = User()
user.username = "twostraws"
