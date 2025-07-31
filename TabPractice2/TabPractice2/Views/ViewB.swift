//
//  ViewB.swift
//  TabPractice2
//
//  Created by Scholar on 7/30/25.
//

import Foundation
import SwiftUI

import Foundation
import SwiftUI

// Step 1: A data model for reviews
struct Comment: Identifiable {
    let id = UUID()
    let name: String
    let date: String
    let rating: Int
    let comment: String
}

// ViewB: a single review box
struct ViewB: View {
    let name: String
    let date: String
    let rating: Int
    let comment: String

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("\(name) on \(date)")
                .font(.subheadline)
                .underline()

            HStack(spacing: 3) {
                ForEach(0..<rating, id: \.self) { _ in
                    Image(systemName: "star.fill")
                }
            }
            .foregroundColor(.black)
            .font(.footnote)

            Text(comment)
                .font(.footnote)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(19)
        .shadow(radius: 2)
    }
}

// ViewC: your page showing all reviews with a search bar
struct ViewC: View {
    // Step 2: Add search text state
    @State private var searchText = ""

    // Step 3: Your review list
    let reviews: [Comment] = [
        Comment(name: "The Difference Baker", date: "Feb 3, 2025", rating: 5, comment: "Delicious gluten-free options!"),
        Comment(name: "Tina", date: "Jan 18, 2025", rating: 5, comment: "Love the sandwiches."),
        Comment(name: "Cathy", date: "Nov 28, 2024", rating: 5, comment: "Great service and vegan choices."),
        Comment(name: "Soraida", date: "Jan 14, 2025", rating: 5, comment: "My favorite spot for coffee."),
        Comment(name: "Leo", date: "Jul 30, 2025", rating: 4, comment: "Could use more dessert options."),
        Comment(name: "Ava", date: "Jul 25, 2025", rating: 5, comment: "Friendly staff and cozy vibe.")
    ]

    // Step 4: Filtered based on search
    var filteredReviews: [Comment] {
        if searchText.isEmpty {
            return reviews
        } else {
            return reviews.filter { comment in
                comment.name.localizedCaseInsensitiveContains(searchText) ||
                comment.comment.localizedCaseInsensitiveContains(searchText)
            }
        }
    }

    var body: some View {
        ZStack {
            Color(red: 255/255, green: 175/255, blue: 112/255)
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20) {
                Text("Restaurant Reviews")
                    .font(.title2)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top)

                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(filteredReviews) { review in
                            ViewB(name: review.name, date: review.date, rating: review.rating, comment: review.comment)
                        }
                    }
                    .padding()
                }
            }
            .padding(.horizontal)
        }
        // Step 5: Attach the search bar
        .searchable(text: $searchText, prompt: "Search reviews...")
    }
}

// Preview
#Preview {
    ViewC()
}
