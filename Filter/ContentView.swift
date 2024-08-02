//
//  ContentView.swift
//  Filter
//
//  Created by Merve Sena on 2.08.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTitle: String = ""
    let filters: [String] = ["This Week", "Last Month", "6 Months", "1 Year"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(filters, id: \.self) { filter in
                    FilterView(selectedTitle: $selectedTitle, title: filter)
                }
            }
        }
        .frame(height: 50)
        .padding()
    }
}

#Preview {
    ContentView()
}
