//
//  FloatingTabBarContainerView.swift
//  FlotatingTabBar
//
//  Created by Jose Carrillo on 9/30/24.
//  Built using Swift 5.0
//
//
//  Redistribution or use in source and binary forms, with or without
//  modification, are strictly prohibited without explicit written permission
//  from the copyright holder.
//
//  You may not use, copy, modify, merge, publish, distribute, sublicense,
//  create a derivative work, and/or sell copies of the software in any work
//  that is designed, intended, or marketed for pedagogical or instructional
//  purposes related to programming, coding, application development, or
//  information technology. Permission for such use, copying, modification,
//  merger, publication, distribution, sublicensing, creation of derivative works,
//  or sale is expressly withheld.
//
//  Copyright © 2024 Jose. All rights reserved.
//

import SwiftUI

struct FloatingTabBarContainerView<Content:View>: View {
    
    @Binding var selection: TabBarItem
    let content: Content
    @State private var tabs: [TabBarItem] = []
    
    init(selection: Binding<TabBarItem>, @ViewBuilder content: () -> Content) {
        self._selection = selection
        self.content = content()
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            content
                .ignoresSafeArea()
            
            FloatingTabBarView(tabs: tabs, selection: $selection, localSelection: selection)
            
        }
        .onPreferenceChange(TabBarItemsPreferenceKey.self, perform: { value in
            self.tabs = value
        })
    }
}

#Preview {
//    FloatingTabBarContainerView()
}
