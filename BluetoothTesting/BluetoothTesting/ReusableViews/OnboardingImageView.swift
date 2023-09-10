//
//  OnboardingImageView.swift
//  BluetoothTesting
//
//  Created by Stepan Ostapenko on 09.09.2023.
//

import Foundation
import SwiftUI

struct OnboardingImageView: View {
    let imageName: String
    let reader: GeometryProxy
    
    var body: some View {
        HStack {
            Spacer()
            Image(imageName)
                .resizable()
                .frame(width: reader.size.width * 0.67, height: reader.size.width * 0.67,
                       alignment: .center)
                .scaledToFit()
            Spacer()
        }.padding(.top, reader.size.height * 0.15)
    }
}
