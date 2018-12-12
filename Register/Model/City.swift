//
//  City.swift
//  Register
//
//  Created by Duc Anh on 11/20/18.
//  Copyright © 2018 Duc Anh. All rights reserved.
//

import Foundation

class City {
    var name: String
    var code: Int
    init? (dict: Json) {
        guard let name = dict["Name"] as? String else {return nil}
        guard let code = dict["CityCode"] as? Int else {return nil}
        self.name = name
        self.code = code
    }
}
