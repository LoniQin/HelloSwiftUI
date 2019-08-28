//
//  landmarkList.swift
//  SwiftUIToturials
//
//  Created by lonnie on 21/8/2019.
//  Copyright © 2019 lonnie. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData: UserData
    
    @State var showFavoriteOnly = false
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
    
}
