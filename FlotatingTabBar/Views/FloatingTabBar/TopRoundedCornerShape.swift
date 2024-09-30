//
//  TopRoundedCornerShape.swift
//  FlotatingTabBar
//
//  Created by GIJoeCodes on 9/30/24.
//  Built using Swift 5.0
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
