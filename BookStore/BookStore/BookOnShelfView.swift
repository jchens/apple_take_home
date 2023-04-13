//
//  BookOnShelfView.swift
//  BookStore
//
//  Created by Jessica Chen on 10/14/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

// BookOnShelfView displays the book cover for a single book on the shelf, given that book.
struct BookOnShelfView: View {
    let book: Book
    var body: some View {
        AsyncImage(url: URL(string: "http://localhost:8000/\(book.id).jpg")) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxHeight: 150)
            case .failure:
                Image(systemName: "photo")
            @unknown default:
                // for handling any new cases that might be added in the future
                EmptyView()
            }
        }
    }
}

struct BookOnShelfView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleBook = Book(id: "62aba07e-f7ca-11e6-bc64-92361f002671", title: "The Last Anniversary", author: "Liane Moriarty")
        BookOnShelfView(book: sampleBook)
    }
}
