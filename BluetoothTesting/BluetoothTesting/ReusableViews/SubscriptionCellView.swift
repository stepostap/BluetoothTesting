//
//  SubscriptionCellView.swift
//  BluetoothTesting
//
//  Created by Stepan Ostapenko on 09.09.2023.
//

import Foundation
import SwiftUI

struct SubscriptionCellView: View {
    let isSelected: Bool
    let action: ()->Void
    let reader: GeometryProxy
    let subType: String
    let subCost: String
    
    var body: some View {
        Button(action: { action() }) {
            
            HStack {
                ZStack {}
                .frame(width: 8.0, height: 8.0, alignment: .leading)
                .background(RoundedRectangle(cornerRadius: 4)
                                .fill(isSelected ? ColorConstants.BlueA200 : ColorConstants.Gray300))
                .padding(.leading, reader.size.width * 0.03)
                
                Text(subType)
                    .font(.system(size: 18, weight: isSelected ? .heavy : .regular, design: .serif))
                    .foregroundColor(ColorConstants.Black900)
                    .frame(width: reader.size.width * 0.3,
                           height: reader.size.height * 0.03,
                           alignment: .leading)
                    .padding(.leading, reader.size.width * 0.015)
                
                Spacer()
                
                Text(subCost)
                    .font(.system(size: 18, weight: isSelected ? .heavy : .regular, design: .serif))
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .frame(width: reader.size.width * 0.4,
                           height: reader.size.height * 0.03,
                           alignment: .trailing)
                    .padding(.leading, reader.size.width * 0.02)
                    .padding(.trailing, reader.size.width * 0.015)
            }
        }
        .frame(width: reader.size.width * 0.88, height: reader.size.height * 0.07, alignment: .leading)
        .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(isSelected ? ColorConstants.BlueA200 : ColorConstants.Gray300, lineWidth: 1))
        .background(RoundedRectangle(cornerRadius: 10)
                        .fill(Color.clear.opacity(0.7)))
        
    }
}
