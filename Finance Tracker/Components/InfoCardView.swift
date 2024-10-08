//
//  InfoCardView.swift
//  Finance Tracker
//
//  Created by Batuhan Berk Ertekin on 28.08.2024.
//

import SwiftUI

// MARK: - InfoCardView
// A view displaying a card with a title and an amount.
struct InfoCardView: View {
    // MARK: - Properties
    let title: LocalizedStringKey
    let amount: Double
    let color: Color
    @Environment(\.colorScheme) private var colorScheme
    
    // MARK: - Body
    var body: some View {
        VStack {
            Text(title)
                .font(.subheadline)
                .foregroundColor(colorScheme == .dark ? .white : .black)
                .multilineTextAlignment(.center)
            Text(NumberFormatter.currencyFormatter.string(from: NSNumber(value: amount)) ?? "₺0.00")
                .font(.title2)
                .bold()
                .multilineTextAlignment(.center)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 100)
        .background(color.opacity(colorScheme == .dark ? 0.2 : 0.1))
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}
