//
//  Coordinator.swift
//  Calculator
//
//  Created by NadjibBellouni on 29/04/2025.
//

import SwiftUI

protocol Coordinator {
    associatedtype ContentView: View
    func setup() -> ContentView
}
