//
//  WideCell.swift
//  Notes
//
//  Created by Justin Chester on 2022-01-04.
//

import SwiftUI

struct WideCell: View {
    let lightGray = Color("lightGray")
    var model: WideCellModel
    
    init() {
        self.model = WideCellModel()
    }
    
    init(_ wideCellModel: WideCellModel) {
        self.model = wideCellModel
    }
    
    var body: some View {
        ZStack {
            Color.white
            HStack {
                VStack(alignment: .leading, spacing: 8.0) {
                    Text(model.headerText)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(model.headerColour)
                        .padding(.leading, 30)
                    Text(model.subheaderText)
                        .font(.title2)
                        .foregroundColor(model.subheaderColour)
                        .padding(.leading, 30)
                }
                .padding()
                Spacer()
                Image(systemName: model.iconName)
                    .renderingMode(.template)
                    .foregroundColor(model.iconColour)
                    .font(.system(size: 25))
                    .padding(.trailing, 30)

            }
        }
        .frame(width: 320, height: 130)
            .cornerRadius(22)
            .padding([.leading, .trailing], 5)
            .padding([.top, .bottom], 5)
    }
}

struct WideCell_Previews: PreviewProvider {
    static var previews: some View {
        Color(UIColor.lightGray).overlay(
            WideCell()
        )
    }
}
