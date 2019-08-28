//
//  UserData.swift
//  SwiftUIToturials
//
//  Created by lonnie on 21/8/2019.
//  Copyright © 2019 lonnie. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
