//
//  CircleView.swift
//  SwiftUIToturials
//
//  Created by loni on 21/8/2019.
//  Copyright © 2019 com.loni. All rights reserved.
//

import SwiftUI

struct CircleView: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
    }
}
