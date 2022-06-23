//
//  Pizza.swift
//  UI-515
//
//  Created by nyannyan0328 on 2022/03/21.
//

import SwiftUI

struct Pizza: Identifiable {
    var id = UUID().uuidString
    var breadName : String
    var toppings : [Topping] = []

}


