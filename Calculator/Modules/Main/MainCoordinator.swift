//
//  MainCoordinator.swift
//  Calculator
//
//  Created by NadjibBellouni on 28/04/2025.
//

import SwiftUI

enum TabItems : CaseIterable, Identifiable {
    case decimal
    case hexa
    case binary
    case equation
    case settings
    
    var id: Self { self }
    
    var title: String {
        switch self {
        case .decimal: return "Décimal"
        case .hexa: return "Hexadécimal"
        case .binary: return "Binaire"
        case .equation: return "Équations"
        case .settings: return "Paramètres"
        }
    }
    
    var icon: String {
        switch self {
        case .decimal: return "123.rectangle"
        case .hexa: return "xmark.circle"
        case .binary: return "circle.grid.2x1"
        case .equation: return "function"
        case .settings: return "gearshape.fill"
        }
    }
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .decimal: DecimalCoordinator().setup()
        case .hexa: HexaView()
        case .binary: BinaryView()
        case .equation: Text("Hello, World!")
        case .settings: SettingsView()
        }
    }
    
    static var allCases: [TabItems] {
        [.decimal, .hexa, .binary, .equation, .settings]
    }
}

struct MainCoordinator: Coordinator {
    func setup() -> some View {
        return MainView()
    }
}
