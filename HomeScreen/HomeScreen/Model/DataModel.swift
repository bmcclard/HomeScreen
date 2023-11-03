//
//  DataModel.swift
//  HomeScreen
//
//  Created by Bradley McClard on 11/2/23.
//

import UIKit

struct DataModel {
    
    var myPlaces = [Places]()
    
    mutating func setUpData() {
        
        myPlaces.append(Places(state: "Tennessee", city: "Lafayette,", time: "1979-2001", image: "Lafayette"))
        myPlaces.append(Places(state: "North Dakota", city: "Grand Forks,", time: "2002-2007", image: "GrandForks"))
        myPlaces.append(Places(state: "Kansas", city: "Wichita,", time: "2007-2008", image: "Wichita"))
        myPlaces.append(Places(state: "Idaho", city: "Mountain Home,", time: "2008-2013", image: "MountainHome"))
        myPlaces.append(Places(state: "Florida", city: "Tampa,", time: "2013-2017", image: "Tampa"))
        myPlaces.append(Places(state: "Illinois", city: "Belleville,", time: "2017-2022", image: "Belleville"))
        myPlaces.append(Places(state: "Utah", city: "Hurricane,", time: "2022-Present", image: "Hurricane"))
    }
}
