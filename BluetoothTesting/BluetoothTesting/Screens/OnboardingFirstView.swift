//
//  OnBoardingFirst.swift
//  BluetoothTesting
//
//  Created by Stepan Ostapenko on 09.09.2023.
//

import Foundation
import SwiftUI

struct OnboardingFirtView: View {
    let nextPage: ()->Void
    
    var body: some View {
        VStack {
            GeometryReader { reader in
                VStack {
                    OnboardingImageView(imageName: "Image_firstOnboarding", reader: reader)
                    
                    HeaderText(text: StringConstants.scanTheNetwork, reader: reader)
                        .padding(.top, reader.size.height * 0.15)
                    
                    FooterText(text: StringConstants.scanTheNetwork2,
                               widthProportion: 0.9,
                               heightProportion: 0.04, reader: reader)
                    
                    MainButton(action: { nextPage() }, reader: reader, label: "Next")
                        .padding(.vertical, reader.size.height * 0.05)
                        .padding(.top, reader.size.height * 0.022)
                }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            }
            
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
    }
}
