//
//  VisualEffectBlur.swift
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
import UIKit

struct VisualEffectBlur: UIViewRepresentable {
    var blurStyle: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: blurStyle))
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: blurStyle)
    }
}