//
//  PontosTuristicos.swift
//  PontosTuristicos
//
//  Created by Usuário Convidado on 19/12/17.
//  Copyright © 2017 br.com.camila.fiap. All rights reserved.
//

import Foundation

class PontosTuristicos {
    
    var name: String
    var address: String
    var latitude: Double
    var longitude: Double
    
    init(name: String, address: String, latitude: Double, longitude: Double) {
        self.name      = name
        self.address    = address
        self.latitude  = latitude
        self.longitude = longitude
    }
    
}
