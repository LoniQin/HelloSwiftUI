//
//  Badge.swift
//  HelloSwiftUI
//
//  Created by lonnie on 2020/9/30.
//  Copyright © 2020 lonnie. All rights reserved.
//

import SwiftUI

struct Badge: View {
    var diameter: CGFloat = 100.0
    var body: some View {
        Path { path in
            path.move(
                to: CGPoint(
                    x: diameter * 0.95,
                    y: diameter * (0.20 + HexagonParameters.adjustment)
                )
            )
            HexagonParameters.points.forEach { point in
                path.addLine(to: .init(
                    x: diameter * point.useWidth.0 * point.xFactors.0,
                    y: diameter * point.useHeight.0 * point.yFactors.0
                    )
                )
                path.addQuadCurve(
                    to: .init(
                        x: diameter * point.useWidth.1 * point.xFactors.1,
                        y: diameter * point.useHeight.1 * point.yFactors.1
                    ),
                    control: .init(
                        x: diameter * point.useWidth.2 * point.xFactors.2,
                        y: diameter * point.useHeight.2 * point.yFactors.2
                    )
                )
            }
        }.fill(
            LinearGradient(
                gradient: .init(colors: [Self.gradientStart, Self.gradientEnd]),
                startPoint: .init(x: 0.5, y: 0),
                endPoint: .init(x: 0.5, y: 0.6)
            )
        ).aspectRatio(1, contentMode: .fit)
    }
    
    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
