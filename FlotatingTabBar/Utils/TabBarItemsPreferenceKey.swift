//
//  TabBarItemsPreferenceKey.swift
//  FlotatingTabBar
//
//  Created by GIJoeCodes on 9/30/24.
//  Built using Swift 5.0
//

import Foundation
import SwiftUI

struct TabBarItemsPreferenceKey: PreferenceKey {
    static var defaultValue: [TabBarItem] = []

    static func reduce(value: inout [TabBarItem], nextValue: () -> [TabBarItem]) {
        value += nextValue()
    }
}
