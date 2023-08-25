//
//  ListLayout.swift
//  MacPaw-Test
//
//  Created by Vakhtang on 25.08.2023.
//

import SwiftUI

import SwiftUI

struct ListLayout: View {
    
    @Binding var showReversedList: Bool
    let personnel: [PersonnelModel] = PersonnelModel.personnel
    let equipment: [EquipmentModel] = EquipmentModel.equipment
    
    var personnelWithEquipment: [(PersonnelModel, EquipmentModel)] {
        Array(zip(personnel, equipment))
    }
    
    var reversedPersonnelWithEquipment: [(PersonnelModel, EquipmentModel)] {
        Array(personnelWithEquipment.reversed())
    }
    
    var displayedPersonnelWithEquipment: [(PersonnelModel, EquipmentModel)] {
        showReversedList ? reversedPersonnelWithEquipment : personnelWithEquipment
    }
    
    var body: some View {
        List {
            ForEach(displayedPersonnelWithEquipment, id: \.0.self) { personnel, equipment in
                NavigationLink(
                    destination: DetailView(equipment: equipment, personnel: personnel)
                    ,
                    label: {
                        CustomCellView(date: personnel.date, day: personnel.day, personnel: personnel.personnel)
                    }
                )
            }
            .listRowSeparator(.hidden)
            .listRowBackground(Color.clear)
        }
        .padding(.leading)
        .scrollContentBackground(.hidden)
        .listStyle(.inset)
        .background {
            LinearGradient(
                colors: [
                    Color.yellow,
                    Color.blue
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
                .ignoresSafeArea(.all)
        }
    }
}

struct ListLayout_Previews: PreviewProvider {
    static var previews: some View {
        ListLayout(showReversedList: .constant(false))
    }
}
