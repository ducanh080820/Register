//
//  District.swift
//  Register
//
//  Created by Duc Anh on 11/20/18.
//  Copyright © 2018 Duc Anh. All rights reserved.
//

import Foundation

class District {
    var name: String
    var cityCode: Int
    var districtCode: Int
    init? (dicts: Json) {
        guard let name = dicts["Name"] as? String else {return nil}
        guard let cityCode = dicts["CityCode"] as? Int else {return nil}
        guard let districtCode = dicts["DistrictCode"] as? Int else {return nil}
        self.name = name
        self.cityCode = cityCode
        self.districtCode = districtCode
    }
}
