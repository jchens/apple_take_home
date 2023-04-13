//
//  BookStoreApp.swift
//  BookStore
//
//  Created by Jessica Chen on 10/14/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
import SwiftUI

@main
// BookStoreApp displays book covers, with the ability to search for specific books
// and learn more about them.
// Note: I went for more of a programmatic approach, vs. a storyboard-based approach.
struct BookStoreApp: App {
    var body: some Scene {
        WindowGroup {
            BookStoreView()
        }
    }
}
