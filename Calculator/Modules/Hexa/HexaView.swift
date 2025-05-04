//
//  HexaView.swift
//  Calculator
//
//  Created by NadjibBellouni on 30/04/2025.
//

import SwiftUI

struct HexaView: View {
    @StateObject var decimalViewModel:DecimalViewModel = DecimalViewModel()
    var body: some View {
        CalculatorView(result: $decimalViewModel.result, expression: $decimalViewModel.expresion, error: $decimalViewModel.error, keyboardType: .hexa, title: "Héxadécimal", onkeyPress: decimalViewModel.handleKeyPress(_:))
    }
}

#if DEBUG
#Preview {
    HexaView(decimalViewModel: DecimalViewModel())
}
#endif
