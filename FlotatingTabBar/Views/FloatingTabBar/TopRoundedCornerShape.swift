//
//  TopRoundedCornerShape.swift
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


import SwiftUICore

struct TopRoundedCornerShape: Shape {
    var radius: CGFloat = 24

    func path(in rect: CGRect) -> Path {
        var path = Path()

        // Start at bottom left corner
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        // Move to the top left corner, with a curve
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY + radius))
        path.addQuadCurve(to: CGPoint(x: rect.minX + radius, y: rect.minY),
                          control: CGPoint(x: rect.minX, y: rect.minY))
        // Move to the top right corner, with a curve
        path.addLine(to: CGPoint(x: rect.maxX - radius, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.minY + radius),
                          control: CGPoint(x: rect.maxX, y: rect.minY))
        // Move to the bottom right corner
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        // Close the path by moving back to the bottom left corner
        path.closeSubpath()

        return path
    }
}