//
//  Book.swift
//  BookStore
//
//  Created by Jessica Chen on 10/14/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation

struct Book : Codable, Identifiable {
    var id: String
    var title: String
    var author: String
}
