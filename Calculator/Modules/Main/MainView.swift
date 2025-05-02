//
//  MainView.swift
//  Calculator
//
//  Created by NadjibBellouni on 28/04/2025.
//

import SwiftUI

struct MainView: View {
    var items : [TabItems] = TabItems.allCases
    var body: some View {
        TabView {
            ForEach(items) { item in
                item.view
                    .tabItem {
                        Label(item.title, systemImage: item.icon)
                    }
            }
        }
    }
}

#Preview {
    MainView()
}
