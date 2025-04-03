import SwiftUI
struct CustomButtonView: View {
    var title: String

    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                // Horizontal Layout (Plain Button)
                VStack(alignment: .leading, spacing: 5) {
                    Text("Plain Button (Horizontal)")
                        .font(.headline)
                    CustomButton(title: "Plain Button",
                                 iconName: nil,
                                 gradientColors: nil,
                                 isIconOnly: false,
                                 layout: .horizontal) {
                        print("Plain Button Tapped")
                    }
                }
                
                // Horizontal Layout with Gradient Background and Left Icon
                VStack(alignment: .leading, spacing: 5) {
                    Text("Gradient Button with Left Icon")
                        .font(.headline)
                    CustomButton(title: "Left Icon Gradient",
                                 iconName: "arrow.left",
                                 gradientColors: [Color.purple, Color.blue],
                                 isIconOnly: false,
                                 layout: .horizontal) {
                        print("Left Gradient Button Tapped")
                    }
                }
                
                // Horizontal Layout with Gradient Background and Right Icon
                VStack(alignment: .leading, spacing: 5) {
                    Text("Gradient Button with Right Icon")
                        .font(.headline)
                    CustomButton(title: "Right Icon Gradient",
                                 iconName: "arrow.right",
                                 gradientColors: [Color.blue, Color.green],
                                 isIconOnly: false,
                                 layout: .horizontal) {
                        print("Right Gradient Button Tapped")
                    }
                }
                
                // Vertical Layout (Stacked Icon Button)
                VStack(alignment: .leading, spacing: 5) {
                    Text("Stacked Icon Button")
                        .font(.headline)
                    CustomButton(title: "Stacked",
                                 iconName: "star.fill",
                                 gradientColors: [Color.orange, Color.red],
                                 isIconOnly: false,
                                 layout: .vertical) {
                        print("Stacked Icon Button Tapped")
                    }
                }
                
                // Circular Layout (Icon Only Button)
                VStack(alignment: .leading, spacing: 5) {
                    Text("Circular Button with Icon Only")
                        .font(.headline)
                    CustomButton(title: nil,
                                 iconName: "heart.fill",
                                 gradientColors: [Color.red, Color.pink],
                                 isIconOnly: true,
                                 layout: .circular) {
                        print("Circular Button Tapped")
                    }
                }
            }
            .padding()
        }
        .navigationTitle(title)
    }
}

// MARK: - Preview
#Preview {
    CustomButtonView(title: "Buttons Showcase")
}
