//
//  View+Extension+TabBarItem.swift
//  FlotatingTabBar
//
//  Created by GIJoeCodes on 9/30/24.
//  Built using Swift 5.0
//

import Foundation
import SwiftUI

extension View {
    func tabBarItem(tab: TabBarItem, selection: Binding<TabBarItem>) -> some View {
        modifier(TabBarItemViewModifier(tab: tab, selection: selection))
    }
}
