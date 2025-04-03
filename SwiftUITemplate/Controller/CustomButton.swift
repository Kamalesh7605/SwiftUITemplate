//
//  CustomButton.swift
//  SwiftUITemplate
//
//  Created by Ashok on 3/29/25.
//

import Foundation
import SwiftUI
// MARK: - Reusable Custom Button Component
struct CustomButton: View {
    let title: String?
    let iconName: String?
    let gradientColors: [Color]?
    let layout: CustomButtonLayout
    let action: () -> Void
    
    var body: some View {
        switch layout {
        case .circular:
            // Circular icon-only button
            Button(action: action) {
                if let icon = iconName {
                    Image(systemName: icon)
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 60, height: 60)
                        .background(
                            Group {
                                if let gradient = gradientColors {
                                    LinearGradient(colors: gradient, startPoint: .leading, endPoint: .trailing)
                                } else {
                                    Color.gray
                                }
                            }
                        )
                        .clipShape(Circle())
                }
            }
            
        case .vertical:
            // Icon above text
            Button(action: action) {
                VStack {
                    if let icon = iconName {
                        Image(systemName: icon)
                            .font(.title)
                    }
                    if let text = title {
                        Text(text)
                            .font(.headline)
                    }
                }
                .foregroundColor(.white)
                .padding()
                .frame(width: 140)
                .background(
                    Group {
                        if let gradient = gradientColors {
                            LinearGradient(colors: gradient, startPoint: .leading, endPoint: .trailing)
                        } else {
                            Color.orange
                        }
                    }
                )
                .cornerRadius(10)
            }
            
        case .horizontal:
            // Icon & text side by side, full-width button
            Button(action: action) {
                HStack {
                    if let icon = iconName {
                        Image(systemName: icon)
                            .font(.title2)
                    }
                    if let text = title {
                        Text(text)
                            .font(.headline)
                            .lineLimit(1)
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    Group {
                        if let gradient = gradientColors {
                            LinearGradient(colors: gradient, startPoint: .leading, endPoint: .trailing)
                        } else {
                            Color.clear
                        }
                    }
                )
                .foregroundColor(gradientColors != nil ? .white : .black)
                .cornerRadius(10)
                .overlay(
                    // If no gradient, add a gray outline
                    (gradientColors == nil)
                        ? RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 2)
                        : nil
                )
            }
        }
    }
}
