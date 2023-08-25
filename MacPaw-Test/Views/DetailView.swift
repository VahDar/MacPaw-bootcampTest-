//
//  DetailView.swift
//  MacPaw-Test
//
//  Created by Vakhtang on 25.08.2023.
//

import SwiftUI

import SwiftUI

struct DetailView: View {
    
    let equipment: EquipmentModel
    let personnel: PersonnelModel
    
    var body: some View {
        ZStack(alignment: .top) {
            ScrollView {
                VStack {
                    VStack(alignment: .center) {
                        Text("\(personnel.day)")
                            .font(.system(size: 75))
                            .fontWeight(.bold)
                        Text("day of war")
                            .font(.system(size: 40))
                        HStack{
                            VStack{
                                Text("enemy losses on")
                                    .font(.system(size: 20))
                                Text(personnel.date)
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                                }
                                .padding()
                                Spacer()
                            
                            Text("\(personnel.personnel)")
                                .font(.system(size: 25))
                                .fontWeight(.bold)
                                .padding(.top)
                                .padding(.trailing)
                            }
                            ViewDevider()
                        }
                    
                    VStack{
                        HStack {
                            Text("Aircraft")
                            Spacer()
                            Text(String(equipment.aircraft))
                                .fontWeight(.bold)
                        }
                        .padding([.horizontal])
                        Divider()
                        
                        HStack {
                            Text("Drone")
                            Spacer()
                            Text(String(equipment.drone))
                                .fontWeight(.bold)
                        }
                        .padding([.horizontal])
                        Divider()
                        
                        HStack {
                            Text("Artillery")
                            Spacer()
                            Text(String(equipment.fieldArtillery))
                                .fontWeight(.bold)
                        }
                        .padding([.horizontal])
                        Divider()
                        HStack {
                            Text("Tank")
                            Spacer()
                            Text(String(equipment.tank))
                                .fontWeight(.bold)
                        }
                        .padding([.horizontal])
                        Divider()
                        
                        HStack {
                            Text("Air Defense")
                            Spacer()
                            Text(String(equipment.antiAircraftWarfare))
                                .fontWeight(.bold)
                        }
                        .padding([.horizontal])
                        Divider()
                    }
                    
                    VStack {
                        HStack {
                            Text("Helicopter")
                            Spacer()
                            Text(String(equipment.helicopter))
                                .fontWeight(.bold)
                        }
                        .padding([.horizontal])
                        Divider()
                        
                        HStack {
                            Text("Vehicles and Fuel Tanks")
                            Spacer()
                            Text(String(equipment.vehiclesAndFuelTanks ?? 0))
                                .fontWeight(.bold)
                        }
                        .padding([.horizontal])
                        Divider()
                        
                        HStack {
                            Text("Cruise Missiles")
                            Spacer()
                            Text(String(equipment.cruiseMissiles ?? 0))
                                .fontWeight(.bold)
                        }
                        .padding([.horizontal])
                        Divider()
                        
                        HStack {
                            Text("Rocket Launcher")
                            Spacer()
                            Text(String(equipment.multipleRocketLauncher))
                                .fontWeight(.bold)
                        }
                        .padding([.horizontal])
                        Divider()
                        
                        HStack {
                            Text("Greatest Losses Direction")
                            Spacer()
                            Text(equipment.greatestLossesDirection ?? "No info")
                                .fontWeight(.bold)
                        }
                        .padding([.horizontal])
                        Divider()
                    }
                }
            }
            .background(.ultraThinMaterial)
            .cornerRadius(20)
            .padding()
        }
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

struct DetailView_Previews: PreviewProvider {
    static let personnel: [PersonnelModel] = PersonnelModel.personnel
    static let equipment: [EquipmentModel] = EquipmentModel.equipment
    static var previews: some View {
        DetailView(equipment: equipment[0], personnel: personnel[0])
    }
}

