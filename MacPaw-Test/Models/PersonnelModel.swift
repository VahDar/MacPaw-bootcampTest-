//
//  PersonnelModel.swift
//  MacPaw-Test
//
//  Created by Vakhtang on 25.08.2023.
//

import Foundation

struct PersonnelModel: Codable {
    let date: String
    let day: Int
    let personnel: Int
    let POW: Int?
    
    
    static let personnel: [PersonnelModel] = Bundle.main.decode(file: "russia_losses_personnel.json")
}
                                                                
extension PersonnelModel: Hashable {
        
        static func == (lhs: PersonnelModel, rhs: PersonnelModel) -> Bool {
        return lhs.date == rhs.date
}
        
func hash(into hasher: inout Hasher) {
            hasher.combine(date)
     }
 }
