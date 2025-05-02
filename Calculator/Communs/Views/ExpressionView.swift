//
//  OutputView.swift
//  Calculator
//
//  Created by NadjibBellouni on 28/04/2025.
//

import SwiftUI

struct ExpressionText: View {
    @Binding var expression: String
    
    var body: some View {
        VStack {
            Text(expression)
                .font(.headline)
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, minHeight: 80, alignment: .topTrailing)
                .padding()
        }
        .background(Color.gray.opacity(0.1))
    }
}

#if DEBUG
#Preview {
    @Previewable @State var output: String = "0000\n+"
    ExpressionText(expression: $output)
}
#endif
