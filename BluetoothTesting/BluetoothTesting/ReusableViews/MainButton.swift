//
//  MainButton.swift
//  BluetoothTesting
//
//  Created by Stepan Ostapenko on 09.09.2023.
//

import Foundation
import SwiftUI

struct MainButton: View {
    
    let action: ()->Void
    let reader: GeometryProxy
    let label: String
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: action, label: {
                HStack(spacing: 0) {
                    Text(label)
                        .font(.system(size: 22, weight: .bold, design: .default))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                }
            })
                .frame(width: reader.size.width * 0.9,
                       height: reader.size.height * 0.07,
                   alignment: .center)
            .background(RoundedRectangle(cornerRadius: 16)
                    .fill(ColorConstants.BlueA200))
            Spacer()
        }
    }
}
