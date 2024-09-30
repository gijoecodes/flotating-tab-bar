//
//  TabBarItem.swift
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

import Foundation

enum TabBarItem: Hashable {
    
    case news, favorites, home, chats, profile
    
    var iconName: String {
        switch self {
        case .news:
            return "newspaper"
        case .favorites :
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

