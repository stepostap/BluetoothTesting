//
//  HomepageView.swift
//  BluetoothTesting
//
//  Created by Stepan Ostapenko on 10.09.2023.
//

import Foundation
import SwiftUI

struct HomepageView: View {
    @State var presenting = true
    @State var bluetoothOn = true
    
    
    var body: some View {
        VStack {
            GeometryReader { reader in
                VStack {
                    VStack {
                        Spacer()
                        HStack {
                            Button(action: {}, label: {
                                Image("clock")
                            })
                                .frame(width: reader.size.width * 0.1,
                                       height: reader.size.width * 0.1,
                                       alignment: .center)
                                .background(RoundedRectangle(cornerRadius: 10)
                                                .fill(ColorConstants.BlueA200))
                            Spacer()
                            
                            Toggle(isOn: $bluetoothOn){}
                            .toggleStyle(BluetoothToggle(width: reader.size.width * 0.22,
                                                         height: reader.size.width * 0.11))
                            
                            Spacer()
                            Button(action: {}, label: {
                                Image("settings")
                            })
                                .frame(width: reader.size.width * 0.1,
                                       height: reader.size.width * 0.1,
                                       alignment: .center)
                                .background(RoundedRectangle(cornerRadius: 10)
                                                .fill(ColorConstants.BlueA200))
                        }
                        .frame(width: reader.size.width * 0.9,
                               height: reader.size.height * 0.07,
                               alignment: .leading)
                        .padding(.top, reader.size.height * 0.18)
                        Spacer()
                    }
                    
                    HStack {
                        Spacer()
                        Image("bluetooth")
                            .resizable()
                            .frame(width: reader.size.width * 0.09,
                                   height: reader.size.height * 0.07,
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Spacer()
                    }.padding(.top, reader.size.height * 0.2)
                    
                    FooterText(text: StringConstants.pleaseAccess,
                               widthProportion: 0.9,
                               heightProportion: 0.02, reader: reader)
                        .padding(.top, reader.size.height * 0.02)
                    
                    MainButton(action: { }, reader: reader, label: "Allow")
                        .padding(.top, reader.size.height * 0.15)
                    
                    VStack {
                        HeaderText(text: "Devices 0", reader: reader)
                            .padding(.top, reader.size.height * 0.01)
                        
                        HStack {
                            Button(action: {}, label: {
                                Image("podcast")
                            })
                                .frame(width: reader.size.width * 0.12,
                                       height: reader.size.width * 0.12,
                                       alignment: .center)
                                .background(RoundedRectangle(cornerRadius: 23)
                                                .fill(ColorConstants.BlueA20033))
                                .padding(.vertical, reader.size.height * 0.01)
                            Spacer()
                            Button(action: {}, label: {
                                Image("podcast")
                            })
                                .frame(width: reader.size.width * 0.17,
                                       height: reader.size.width * 0.17,
                                       alignment: .center)
                                .background(RoundedRectangle(cornerRadius: 34)
                                                .fill(ColorConstants.BlueA200))
                            Spacer()
                            Button(action: {}, label: {
                                Image("blue_book")
                            })
                                .frame(width: reader.size.width * 0.12,
                                       height: reader.size.width * 0.12,
                                       alignment: .center)
                                .background(RoundedRectangle(cornerRadius: 23)
                                                .fill(ColorConstants.BlueA20033))
                                .padding(.vertical, reader.size.height * 0.01)
                        }.frame(width: reader.size.width * 0.7,
                                height: reader.size.width * 0.15,
                                alignment: .center)
                            .padding(.top, reader.size.height * 0.05)
                            .padding(.bottom, reader.size.height * 0.2)
                        
                    }.frame(width: UIScreen.main.bounds.width,
                            height: reader.size.height * 0.4,
                            alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 16)
                                        .fill(ColorConstants.WhiteA700))
                        .padding(.top, reader.size.height * 0.03)
                    
                }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            }
            
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.Gray100)
        .ignoresSafeArea()
        .sheet(isPresented: $presenting, content: { PayWallView(closePaywall: { self.presenting = false}, buySubscription: {})})
    }
}
