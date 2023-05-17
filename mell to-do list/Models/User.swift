//
//  User.swift
//  mell to-do list
//
//  Created by Bruna Mello on 14/05/2023.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
