//
//  FloatingTabBarView.swift
//  FlotatingTabBar
//
//  Created by GIJoeCodes on 9/30/24.
//  Built using Swift 5.0
//

import SwiftUI

struct FloatingTabBarView: View {
    @Environment(\.colorScheme) var colorScheme

    let tabs: [TabBarItem]
    @Binding var selection: TabBarItem
    @Namespace private var namespace
    @State var localSelection: TabBarItem

    var body: some View {
        tabBar
            .onChange(of: selection) { _, newValue in
                withAnimation(.easeInOut) {
                    localSelection = newValue
                }
            }
    }
}

#Preview {
//    FloatingTabBarView()
}

extension FloatingTabBarView {
    private func switchToTab(tab: TabBarItem) {
        withAnimation(.easeInOut) {
            selection = tab
        }
    }
}

extension FloatingTabBarView {
    private func tabView(tab: TabBarItem) -> some View {
        HStack {
            // Icon
            let iconSize: CGFloat = 24.0

            if let uiImage = UIImage(named: tab.iconName) {
                Image(uiImage: uiImage)
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: iconSize, height: iconSize)
            } else {
                Image(systemName: tab.iconName)
                    .font(.system(size: 20))
                    .font(.subheadline)
                    .frame(width: iconSize, height: iconSize)
            }

            // Title (only show when the tab is selected)
            if localSelection == tab {
                Text(tab.title)
                    .font(.system(size: 10, weight: .semibold, design: .rounded))
                    .lineLimit(1) // Ensures the title remains on one line
                    .transition(.slide) // Optional: animation for smooth appearance
            }
        }
        .foregroundColor(localSelection == tab ? Color.white : Color.gray)
        .padding(.vertical, 8)
        .frame(maxWidth: calculateTabWidth(for: tab))
        .background(
            ZStack {
                if localSelection == tab {
                    RoundedRectangle(cornerRadius: 24)
                        .fill(Color.blue.gradient)
                        .matchedGeometryEffect(id: "background_rectangle", in: namespace)
                }
            }
        )
    }

    private var tabBar: some View {
        ZStack {
            VisualEffectBlur(blurStyle: colorScheme == .dark ? .dark : .extraLight)
                .frame(height: UIScreen.main.bounds.height * 0.11241218)
                .clipShape(TopRoundedCornerShape(radius: 24)) // Custom shape for top-only rounded corners
                .edgesIgnoringSafeArea(.bottom)
                .offset(y: 36)

            HStack {
                ForEach(tabs, id: \.self) { tab in
                    tabView(tab: tab)
                        .onTapGesture {
                            switchToTab(tab: tab)
                        }
                }
            }
            .padding(6)
            .background(Color.tab.ignoresSafeArea(edges: .bottom))
            .cornerRadius(24)
            .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: 5)
            .padding(.horizontal)
            .offset(y: 20)
        }
    }

    // New function to calculate width dynamically
    private func calculateTabWidth(for tab: TabBarItem) -> CGFloat {
        switch tab {
        case .news:
            return localSelection == .news ? 124 : 40
        case .favorites:
            return localSelection == .favorites ? 120 : 40
        case .home:
            return localSelection == .home ? 94 : 40
        case .chats:
            return localSelection == .chats ? 98 : 40
        case .profile:
            return localSelection == .profile ? 114 : 40
        }
    }
}
