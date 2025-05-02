//
//  KeyboardTypes.swift
//  Calculator
//
//  Created by NadjibBellouni on 29/04/2025.
//

import SwiftUI

protocol KeyboardDefinition {
    func keyboard( onPress: @escaping (_ value: String) -> Void) -> Keyboard
}

enum KeyboardType: CaseIterable, Identifiable {
    var id: Self {self}
    
    case hexa
    case decimal
    case binary
    case function
}

extension KeyboardType: KeyboardDefinition {
    func keyboard(onPress: @escaping (String) -> Void) -> Keyboard {
        return Keyboard(keys: keys, columnsCount: columnsCount, onKeyPress: onPress)
    }
    
    private var keys : [Int : String] {
        switch self {
        case .decimal:
            return [
                0: "AC", 1: "DEL", 2: "%", 3: "/",
                4: "7", 5: "8", 6: "9", 7: "*",
                8: "4", 9: "5",10: "6", 11: "-",
                12: "1", 13: "2", 14: "3",15: "+",
                16: "0", 17: ",", 18: "()", 19: "="
            ]
            
        case .hexa:
            return [
                0: "AC", 1: "DEL", 2: "%", 3: "", 4: "",
                5: "XOR", 6: "OR", 7: "AND", 8: "NOT", 9: "/",
                10: "C", 11: "D", 12: "E", 13: "F", 14: "*",
                15: "8", 16: "9", 17: "A", 18: "B", 19: "−",
                20: "4", 21: "5", 22: "6", 23: "7", 24: "+",
                25: "0", 26: "1", 27: "2", 28: "3", 29: "="
            ]
            
        case .binary:
            return [
                0: "AC", 1: "DEL", 2: "", 3: "/",
                4: "<<", 5: ">>", 6: "XOR", 7: "*",
                8: "1's", 9: "2's", 10: "OR", 11: "-",
                12: "1", 13: "11", 14: "AND", 15: "+",
                16: "0", 17: "00", 18: "NOT", 19: "="
            ]
        case .function:
            return [
                0: "AC", 1: "DEL", 2: "%", 3: "/",
                4: "7", 5: "8", 6: "9", 7: "*",
                8: "4", 9: "5", 10: "6", 11: "-",
                12: "1", 13: "2", 14: "3",15: "+",
                16: "0", 17: ",", 18: "()", 19: "=",
                20: "sin", 21: "cos", 22: "tan", 23: "√",
                24: "log", 25: "ln", 26: "e^x", 27: "10^x",
                28: "!", 29: "x^2", 30: "x^-1", 31: "x^y",
                32: "sinh", 33: "cosh", 34: "tanh", 35: "10^x"
                
            ]
        }
    }
    
    private var columnsCount : Int {
        switch self {
        case .decimal: return 4
        case .hexa: return 5
        case .binary: return 4
        case .function: return 4
        }
    }
}
