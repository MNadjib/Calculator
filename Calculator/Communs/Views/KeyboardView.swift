//
//  KeyboardView.swift
//  Calculator
//
//  Created by NadjibBellouni on 28/04/2025.
//

import SwiftUI

struct Keyboard: View {
    private let buttonSpacing: CGFloat = 8
    private var buttonSize: CGFloat = 44
    
    var keys: [Int: String]
    var columns: [GridItem]
    var onKeyPress: (String) -> Void
    
    init(keys: [Int: String], columnsCount: Int, onKeyPress: @escaping (String) -> Void) {
        self.keys = keys
        self.onKeyPress = onKeyPress
        self.columns = Array(repeating: GridItem(.flexible()), count: columnsCount)
        buttonSize = buttonSize(columnsCount)
    }
    
    private func buttonSize(_ columnCount: Int) -> CGFloat {
        let screenWidth = UIScreen.main.bounds.width
        let horizontalPadding: CGFloat = 32
        let spacingTotal: CGFloat = CGFloat(CGFloat(columnCount - 1) * buttonSpacing)
        let availableWidth = screenWidth - horizontalPadding - spacingTotal
        return availableWidth / CGFloat(columnCount)
    }
    
    private func buttonColor(for value: String) -> Color {
        if ["AC", "DEL"].contains(value) {
            return Color.red
        } else if ["/", "*", "-", "+", "="].contains(value) {
            return Color.orange
        } else if value.isEmpty {
            return Color.clear
        } else {
            return Color.blue
        }
    }
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: buttonSpacing) {
            ForEach(Array(keys).sorted(by: { $0.key < $1.key }), id: \.key) { key, value in
                Button(value) {
                    onKeyPress(value)
                }
                .font(.title2)
                .frame(width: buttonSize, height: buttonSize)
                .background(buttonColor(for: value))
                .foregroundColor(.white)
                .clipShape(Circle())
                .shadow(radius: 5)
                .buttonStyle(PressableButtonStyle())
            }
        }
    }
}

#if DEBUG
#Preview {
    let keys: [Int: String] = [
        0: "AC", 1: "DEL", 2: "%", 3: "/",
        4: "7", 5: "8", 6: "9", 7: "*",
        8: "4", 9: "5", 10: "6", 11: "-",
        12: "1", 13: "2", 14: "3", 15: "+",
        16: "0", 17: ".", 18: "", 19: "="
    ]
    Keyboard(keys: keys, columnsCount: 4, onKeyPress: {_ in })
}
#endif
