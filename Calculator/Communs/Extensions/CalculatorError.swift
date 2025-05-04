//
//  CalculatorError.swift
//  Calculator
//
//  Created by NadjibBellouni on 02/05/2025.
//

import Foundation

enum CalculatorError: Error, Identifiable {
    var id: Self {self}
    
    case invalidExpression
    case invalidKey
    case divisionByZero
    
    var description: String {
        switch self {
        case .invalidExpression:
            return "Expression invalide"
        case .invalidKey:
            return "Touche invalide"
        case .divisionByZero:
            return "Division par zéro"
        }
    }
    
    var title: String {
        return "Erreur"
    }
}
