//
//  LandMark.swift
//  SwiftUIToturials
//
//  Created by lonnie on 21/8/2019.
//  Copyright © 2019 lonnie. All rights reserved.
//

import UIKit
import SwiftUI
import CoreLocation
struct Landmark: Hashable, Codable, Identifiable {

    var id: Int
    
    var name: String
    
    var category: Category
    
    var city: String
    
    var state: String
    
    var park: String
    
    var isFavorite: Bool
    
    fileprivate var imageName: String
    
    fileprivate var coordinates: Coordinate
    
    struct Coordinate: Hashable, Codable {
        var longitude: Double
        var latitude: Double
    }
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
}

extension Landmark {
    
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }

    var locationCoordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }

}
