//
//  ProVersionBenefit.swift
//  BluetoothTesting
//
//  Created by Stepan Ostapenko on 09.09.2023.
//

import Foundation
import SwiftUI

struct ProVersionBenefitView: View {
    let reader: GeometryProxy
    let text: String
    
    var body: some View
    {
        HStack {
            Spacer()
            HStack {
                Image("blue_tick")
                    .resizable()
                    .frame(width: reader.size.width * 0.04,
                           height: reader.size.width * 0.04,
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                Text(text)
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(height: reader.size.height * 0.02)
            }
            .frame(width: reader.size.width * 0.4,
                   height: reader.size.height * 0.03,
                   alignment: .leading)
            Spacer()
        }
    }
}
