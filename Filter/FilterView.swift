//
//  FilterView.swift
//  Filter
//
//  Created by Merve Sena on 2.08.2024.
//

import SwiftUI

struct FilterView: View {
    @Binding var selectedTitle: String
    let title: String
    let filters: [String] = ["This Week", "Last Month", "6 Months", "1 Year"]
    
    var body: some View {
        Text(title)
            .foregroundColor(selectedTitle == title ? .white : .black.opacity(0.8))
            .fontWeight(.bold)
            .padding(.horizontal, 30)
            .padding(.vertical, 10)
            .background(selectedTitle == title ? Color.black.opacity(0.8) : Color(red: 221/255 ,green:  221/255, blue:  221/255))
            .cornerRadius(10)
            .onTapGesture {
                selectedTitle = title
            }
    }
}

#Preview {
    FilterView(selectedTitle: .constant(""), title: "This Week")
}
