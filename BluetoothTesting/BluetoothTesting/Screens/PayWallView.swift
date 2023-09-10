//
//  PayWallView.swift
//  BluetoothTesting
//
//  Created by Stepan Ostapenko on 09.09.2023.
//

import Foundation
import SwiftUI

enum SubscriptionType: String, CaseIterable {
    case weekly = "Weekly"
    case monthly = "Monthly"
    case permanently = "Permanently"
}

extension SubscriptionType {
    func getCostString() -> String {
        switch self {
        case .weekly:
            return "3,6$ / week"
        case .monthly:
            return "7,05$ / month"
        case .permanently:
            return "12,00$ / permanently"
        }
    }
}

struct PayWallView : View {
    let closePaywall: ()->Void
    let buySubscription: ()->Void
    @State var subscription = SubscriptionType.weekly
    
    var body: some View {
        VStack {
            GeometryReader { reader in
                VStack {
    
                    HStack {
                        Spacer()
                        Button(action: closePaywall) {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: reader.size.width * 0.04,
                                       height: reader.size.width * 0.04,
                                       alignment: .center)
                                .scaledToFill()
                                .foregroundColor(.gray)
                        }
                    }.padding(.trailing, reader.size.width * 0.05)
                        .padding(.top, reader.size.height * 0.03)
                    
                    HeaderText(text: StringConstants.getProVersion, reader: reader)
                        .padding(.top, reader.size.height * 0.02)
                    
                    FooterText(text: StringConstants.upgradeToPro, widthProportion: 0.7
                               , heightProportion: 0.04, reader: reader)
                        .padding(.top, reader.size.height * 0.015)
                    
                    VStack {
                        ProVersionBenefitView(reader: reader, text: "Network Scanner")
                        ProVersionBenefitView(reader: reader, text: "Infared camera")
                        ProVersionBenefitView(reader: reader, text: "Instructions")
                        ProVersionBenefitView(reader: reader, text: "Bluetooth scanner")
                    }.padding(.vertical, reader.size.height * 0.05)
                    
                    VStack {
                        ForEach(SubscriptionType.allCases, id: \.self) { type in
                            SubscriptionCellView(isSelected: subscription == type,
                                                 action: { self.subscription = type },
                                                 reader: reader,
                                                 subType: type.rawValue,
                                                 subCost: type.getCostString())
                        }
                    }
                    
                    MainButton(action: { buySubscription() }, reader: reader, label: "Next")
                        .padding(.top, reader.size.height * 0.075)
                    
                    HStack {
                        Spacer()
                        Button(action: {}) {
                            Text("Restore Purchases")
                                .foregroundColor(.black)
                        }
                        Spacer()
                    }.padding(.top, reader.size.height * 0.005)
                }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            }
            
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()

    }
}
