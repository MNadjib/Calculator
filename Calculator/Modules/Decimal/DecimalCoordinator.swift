//
//  DecimalCoordinator.swift
//  Calculator
//
//  Created by NadjibBellouni on 29/04/2025.
//

import SwiftUI

struct DecimalCoordinator: Coordinator {
    func setup() -> some View {
        return DecimalView(decimalViewModel: DecimalViewModel())
    }
}
