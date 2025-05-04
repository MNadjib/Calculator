//
//  DecimalViewModel.swift
//  Calculator
//
//  Created by NadjibBellouni on 29/04/2025.
//

import SwiftUI

class DecimalViewModel: ObservableObject {
    @Published var expresion: String = ""
    @Published var result: String = ""
    @Published var error: CalculatorError?
    
    func handleKeyPress(_ key: String) {
        switch key {
        case "=":
            result = evaluate(expression: expresion)
        case "AC":
            result = ""
            expresion = ""
        case "DEL":
            expresion.removeLast()
        case let k where ["/", "*", "-", "+"].contains(k) :
            if expresion.isEmpty || ["/", "*", "-", "+"].contains(expresion.trimmingCharacters(in: .whitespacesAndNewlines).last) {
                error = .invalidKey
            } else {
                expresion.append(" \(key) ")
            }
        default:
            expresion.append(key)
        }
    }
    
    
    @discardableResult
    func evaluate(expression: String) -> String {
        let mathExpression = NSExpression(format: expression.replacingOccurrences(of: "%", with: "*0.01"))
                if let value = mathExpression.expressionValue(with: nil, context: nil) as? NSNumber {
                    return value.stringValue
                } else {
                    return "Error"
                }
    }
}
