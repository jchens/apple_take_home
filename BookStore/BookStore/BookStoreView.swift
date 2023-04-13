//
//  BookStoreView.swift
//  BookStore
//
//  Created by Jessica Chen on 10/14/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

// BookStoreView displays books on shelves with the ability to search by title or author.
// Users can select any book to view its details on a separate page.
struct BookStoreView: View {
    let books: [Book] = DataLoader().bookData // get book data
    @State private var searchText = "" // track search bar's text
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, alignment: .center) {
                    ForEach(searchResults) { curBook in
                        NavigationLink {
                            BookDetailView(book: curBook) // destination
                        } label: {
                            BookOnShelfView(book: curBook) // link
                        }
                    }
                }
            }
            .searchable(text: $searchText)
        }
    }
    
    // filtering search results
    var searchResults: [Book] {
        if searchText.isEmpty {
            return books
        } else {
            // return if there's a match with the book's title or author
            return books.filter { $0.title.lowercased().contains(searchText.lowercased()) ||
                $0.author.lowercased().contains(searchText.lowercased())
            }
        }
    }
}

struct BookStoreView_Previews: PreviewProvider {
    static var previews: some View {
        BookStoreView()
    }
}
