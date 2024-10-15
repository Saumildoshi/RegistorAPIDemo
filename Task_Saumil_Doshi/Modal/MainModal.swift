//
//  MainModal.swift
//  Task_Saumil_Doshi
//
//  Created by XcelTec-126 on 12/10/24.
//

import Foundation

struct MainModal : Codable {
    let id : String
    let name : String
    let data : ProductData?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case data = "data"
    }

}

