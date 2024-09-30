//
//  ContentView.swift
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

struct ContentView: View {
    
    @State private var selectedTab: TabBarItem = .news
    @State private var popSignUpSheetView: Bool = false
    
    var body: some View {
        FloatingTabBarContainerView(selection: $selectedTab) {
            Color.red
                .tabBarItem(tab: .news, selection: $selectedTab)
            
            Color.blue
                .tabBarItem(tab: .favorites, selection: $selectedTab)
            
            Color.green
                .tabBarItem(tab: .home, selection: $selectedTab)
            
            Color.yellow
                .tabBarItem(tab: .chats, selection: $selectedTab)
            
            Color.purple
                .tabBarItem(tab: .profile, selection: $selectedTab)
            
        }
    }
}

#Preview {
    ContentView()
}
