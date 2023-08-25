//
//  CustomCellView.swift
//  MacPaw-Test
//
//  Created by Vakhtang on 25.08.2023.
//

import SwiftUI

struct CustomCellView: View {
    
    let date: String
    let day: Int
    let personnel: Int
    
var body: some View {
    HStack {
        VStack {
            Text(date)
                .font(.system(size: 30))
                .fontWeight(.bold)
                
            HStack(alignment: .center) {
                VStack(alignment: .leading) {
                    Text(String(day))
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    Text("day of war")
                        .font(.system(size: 16))
                }
                Spacer()
                    
            VStack(alignment: .trailing) {
                Text(String(personnel))
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                Text("russian soldiers killed")
                        .font(.system(size: 16))
                }
            }
        }
        .padding()
    }
    .background(.ultraThinMaterial)
    .cornerRadius(20)
    }
}


struct CustomCellVie_Previews: PreviewProvider {
    static var previews: some View {
        CustomCellView(date: "11.02.22", day: 2, personnel: 111)
    }
}
