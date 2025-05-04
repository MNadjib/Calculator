//
//  CalculatorView.swift
//  Calculator
//
//  Created by NadjibBellouni on 01/05/2025.
//

import SwiftUI

struct CalculatorView: View {
    @Binding var result: String
    @Binding var expression: String
    @Binding var error: CalculatorError?
    
    var keyboardType: KeyboardType
    var title: String
    var onkeyPress: ((String) -> Void)
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ExpressionText(expression: $expression)
                    ResultText(result: $result)
                    keyboardType.keyboard(onPress: onkeyPress)
                    Spacer()
                }
                .padding()
            }
            .navigationTitle(title)
            .alert(item: $error) { error in
                Alert(title: Text( error.title), message: Text(error.description), dismissButton: .default(Text("OK")))
            }

        }
    }
}
