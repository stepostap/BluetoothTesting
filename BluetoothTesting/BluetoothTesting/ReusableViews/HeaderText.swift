//
//  HeaderText.swift
//  BluetoothTesting
//
//  Created by Stepan Ostapenko on 09.09.2023.
//

import Foundation
import SwiftUI

struct HeaderText: View {
    
    let text: String
    let reader: GeometryProxy
    
    var body: some View {
        HStack {
            Spacer()
            Text(text)
                .font(.system(size: 24, weight: .bold, design: .default))
                .foregroundColor(ColorConstants.Black900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: reader.size.width * 0.8,
                       height: reader.size.height * 0.05,
                       alignment: .center)
            Spacer()
        }
        
    }
}
