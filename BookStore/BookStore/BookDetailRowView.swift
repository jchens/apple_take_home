//
//  BookDetailRowView.swift
//  BookStore
//
//  Created by Jessica Chen on 10/14/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

// BookDetailRowView displays a single row of a book's details, given the detail type and value.
struct BookDetailRowView: View {
    let label: String
    let text: String
    
    var body: some View {
        HStack(spacing: 16) {
            Label(label, systemImage: "clock")
                .labelStyle(TitleOnlyLabelStyle())
                .foregroundColor(.primary)
            Text(text)
                .truncationMode(.tail)
                .foregroundColor(.secondary)
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .frame(maxHeight: 32)
    }
}

struct BookDetailRowView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailRowView(label: "label", text: "text")
    }
}


