//
//  DataServices.swift
//  Register
//
//  Created by Duc Anh on 11/21/18.
//  Copyright © 2018 Duc Anh. All rights reserved.
//

import Foundation

class DataServices {
    static let shared = DataServices()
    
    var cities: [City] = []
    var districts: [District] = []
    
    var districtFilter: [District] = []
    var selectedCity: City? {
        didSet {
            if selectedCity != nil {
                districtFilter = districts.filter({$0.cityCode == selectedCity!.code})
            }
        }
    }
    
    func loadData(completeHandler: () -> Void) {
        loadCities(completeHandler: completeHandler)
        loadDistricts()
    }
    
    func loadDistricts() {
        guard  let dict = PlistServices().getDictionaryFrom(plist: "Districts.plist")   else {return}
        guard let districtsDictionaryArray = dict["Districts"] as? [Json] else {return}
        for dict in districtsDictionaryArray {
            if let district = District(dicts: dict) {
                districts.append(district)
            }
        }
        
    }
    
    func loadCities(completeHandler: () -> Void) {
        guard let city = PlistServices().getDictionaryFrom(plist: "Cities.plist") else {return}
        guard let citiesDictionaryArray = city["Cities"] as? [Json] else {return}
        for cit in citiesDictionaryArray {
            if let city = City(dict: cit) {
                cities.append(city)
            }
        }
        completeHandler()
    }
}
