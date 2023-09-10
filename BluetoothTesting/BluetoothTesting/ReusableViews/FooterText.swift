//
//  FooterText.swift
//  BluetoothTesting
//
//  Created by Stepan Ostapenko on 09.09.2023.
//

import Foundation
import SwiftUI

struct FooterText: View {
    let text: String
    let widthProportion: CGFloat
    let heightProportion: CGFloat
    let reader: GeometryProxy
    
    var body: some View {
        HStack {
            Spacer()
            Text(text)
                .font(.system(size: 16))
                .fontWeight(.regular)
                .foregroundColor(ColorConstants.Gray400)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .frame(width: reader.size.width * widthProportion,
                       height: reader.size.height * heightProportion,
                       alignment: .center)
            Spacer()
        }
    }
}
