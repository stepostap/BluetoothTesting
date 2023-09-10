//
//  BluetoothToggleStyle.swift
//  BluetoothTesting
//
//  Created by Stepan Ostapenko on 10.09.2023.
//

import Foundation
import SwiftUI

struct BluetoothToggle: ToggleStyle {
    
    let width: CGFloat
    let height: CGFloat
    
    func makeBody(configuration: Configuration) -> some View {
        
        if #available(iOS 15.0, *) {
            HStack {
                RoundedRectangle(cornerRadius: 30)
                    .fill(configuration.isOn ? Color(.systemGray2) : Color(.systemGray5))
                    .overlay {
                        Circle()
                            .fill(.white)
                            .padding(3)
                            .overlay {
                                Image("blue_Bluetooth")
                            }
                            .offset(x: configuration.isOn ? width/4 : -width/4)
                        
                    }
                    .frame(width: width, height: height)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            configuration.isOn.toggle()
                        }
                    }
            }
        } else {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(configuration.isOn ? Color(.systemGray2) : Color(.systemGray5))
                        .frame(width: width, height: height)
                    ZStack {
                        Circle()
                            .fill(.white)
                            .frame(width: height * 0.9, height: height * 0.9)
                            .padding(3)
                            .offset(x: configuration.isOn ? width/4 : -width/4)
                        Image("blue_Bluetooth")
                            .offset(x: configuration.isOn ? width/4 : -width/4)
                    }
                }
            }.onTapGesture {
                withAnimation(.spring()) {
                    configuration.isOn.toggle()
                }
            }
            
        }
    }
}
