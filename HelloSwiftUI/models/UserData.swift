//
//  UserData.swift
//  SwiftUIToturials
//
//  Created by loni on 21/8/2019.
//  Copyright © 2019 com.loni. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
