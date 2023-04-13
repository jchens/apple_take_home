//
//  BookDetailView.swift
//  BookStore
//
//  Created by Jessica Chen on 10/14/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

// BookDetailView displays a page of details about a selected book from the shelf, given that book.
struct BookDetailView: View {
    let book: Book
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    // Replacing the default "Back" back button so it displays "Book Store" instead
    var backButton : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack(spacing: 0) {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                    Text("Book Store")
                }
            }
        }
    
    var body: some View {
        List {
            BookDetailRowView(label: "ID", text: book.id)
            BookDetailRowView(label: "Author", text: book.author)
            BookDetailRowView(label: "Title", text: book.title)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleBook = Book(id: "62aba07e-f7ca-11e6-bc64-92361f002671", title: "The Last Anniversary", author: "Liane Moriarty")
        BookDetailView(book: sampleBook)
    }
}
