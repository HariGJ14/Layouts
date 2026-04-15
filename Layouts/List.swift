//
//  List.swift
//  Layouts
//
//  Created by Codex on 15/04/26.
//

import SwiftUI

struct List: View {
    private let sampleItems = [
        "Learn SwiftUI",
        "Build a List view",
        "Run on Simulator",
        "Ship the app"
    ]

    var body: some View {
        NavigationView {
            SwiftUI.List(sampleItems, id: \.self) { item in
                Text(item)
                .padding(.vertical, 4)
            }
            .navigationTitle("Sample List")
        }
    }
}

struct List_Previews: PreviewProvider {
    static var previews: some View {
        List()
    }
}
