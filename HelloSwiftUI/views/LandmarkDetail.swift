//
//  LandmarkDetail.swift
//  SwiftUIToturials
//
//  Created by lonnie on 21/8/2019.
//  Copyright © 2019 lonnie. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @EnvironmentObject var userData: UserData
    
    var landmark: Landmark
    
    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleView(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                    .font(.title)
                    Button(action: {
                        self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                    }) {
                        if self.userData.landmarks[self.landmarkIndex].isFavorite {
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                        } else {
                            Image(systemName: "star").foregroundColor(.gray)
                        }
                    }
                }
                HStack(alignment: .top) {
                    Text(landmark.park)
                        .font(.caption)
                    Spacer()
                    Text(landmark.state)
                        .font(.caption)
                }
            }
        .padding()
            
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}
