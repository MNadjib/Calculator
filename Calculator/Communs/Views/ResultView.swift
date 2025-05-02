//
//  ResultView.swift
//  Calculator
//
//  Created by NadjibBellouni on 01/05/2025.
//

import SwiftUI

struct ResultText: View {
    @Binding var result: String
    
    var body: some View {
        VStack {
            Text(result)
                .font(.headline)
                .foregroundColor(.green)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, minHeight: 30, alignment: .topTrailing)
                .padding()
        }
    }
}

#Preview {
    @Previewable @State var result: String = "0000\n+"
    ResultText(result: $result)
}
