//
//  DecimalView.swift
//  Calculator
//
//  Created by NadjibBellouni on 29/04/2025.
//

import SwiftUI

struct DecimalView: View {
    @StateObject var decimalViewModel:DecimalViewModel
    
    var body: some View {
        CalculatorView(result: $decimalViewModel.result, expression: $decimalViewModel.expresion, error: $decimalViewModel.error, keyboardType: .decimal, title: "Décimal", onkeyPress: decimalViewModel.handleKeyPress(_:))
    }
}

#if DEBUG
#Preview {
    DecimalView(decimalViewModel: DecimalViewModel())
}
#endif

