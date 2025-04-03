//
//  ListModel.swift
//  SwiftUITemplate
//
//  Created by Ashok on 3/29/25.
//

import Foundation
struct ListItem: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let imageName: String
}
enum CustomButtonLayout {
    case horizontal
    case vertical
    case circular     
}
