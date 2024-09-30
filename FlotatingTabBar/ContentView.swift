//
//  ContentView.swift
//  FlotatingTabBar
//
//  Created by GIJoeCodes on 9/30/24.
//  Built using Swift 5.0
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
