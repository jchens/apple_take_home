//
//  DataLoader.swift
//  BookStore
//
//  Created by Jessica Chen on 10/14/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation

// DataLoader reads the `books.json` file from a server and returns an array of books
public class DataLoader : ObservableObject{
    @Published var bookData = [Book]()
    
    init() {
        load()
    }
    
    // loading in the URL
    func load() {
        let urlString = "http://localhost:8000/books.json"

        if let url = URL(string: urlString) {
            if let json = try? Data(contentsOf: url) {
                parse(json: json)
            }
        }
    }
    
    // parsing data from the json file
    func parse(json: Data) {
        let decoder = JSONDecoder()
        if let dataFromJson = try? decoder.decode(Books.self, from: json) {
            bookData = dataFromJson.books
        }
    }

}
