//
//  ViewDevider.swift
//  MacPaw-Test
//
//  Created by Vakhtang on 25.08.2023.
//

import SwiftUI

struct ViewDevider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.black)
            .padding(.vertical)
    }
}

struct ViewDevider_Previews: PreviewProvider {
    static var previews: some View {
        ViewDevider()
    }
}
