//
//  TabBarItem.swift
//  FlotatingTabBar
//
//  Created by GIJoeCodes on 9/30/24.
//  Built using Swift 5.0
//

import Foundation

enum TabBarItem: Hashable {
    case news, favorites, home, chats, profile

    var iconName: String {
        switch self {
        case .news:
            return "newspaper"
        case .favorites:
            return "star"
        case .home:
            return "house"
        case .chats:
            return "bubble.left.and.bubble.right"
        case .profile:
            return "person.fill"
        }
    }

    var title: String {
        switch self {
        case .news:
            return "News"
        case .favorites:
            return "Favorites"
        case .home:
            return "Home"
        case .profile:
            return "My Profile"
        case .chats:
            return "Chats"
        }
    }
}
