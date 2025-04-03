//
//  ListView.swift
//  SwiftUITemplate
//
//  Created by Ashok on 3/29/25.
//

import Foundation
import SwiftUI
struct ListView: View {
    let items: [ListItem] = [
        ListItem(title: "Button Template", description: "A demo showcasing a Material Design app bar for navigation and ...", imageName: "appbar"),
        ListItem(title: "List Showcase", description: "A showcase demonstrating a scrollable list of items for organize...", imageName: "list"),
        ListItem(title: "ListItem Demo", description: "A demo displaying a single list item with optional title, subtitle, or icon.", imageName: "listitem"),
        ListItem(title: "Scaffold Demo", description: "A showcase providing a basic layout with Material Design components...", imageName: "scaffold"),
        ListItem(title: "Text Demo", description: "A demo displaying static or dynamic text content on the screen.", imageName: "text")
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 15) {
                    ForEach(items) { item in
                        NavigationLink(destination: CustomButtonView(title: item.title)) {
                            HStack(spacing: 15) {
                                Image(systemName: "photo") // Replace with actual image
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                    .padding()
                                
                                VStack(alignment: .leading) {
                                    Text(item.title)
                                        .font(.headline)
                                    Text(item.description)
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                                Spacer()
                            }
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(15)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Demo List")
        }
    }
}

#Preview {
    ListView()
}
