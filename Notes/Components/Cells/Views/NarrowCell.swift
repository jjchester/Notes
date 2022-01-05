//
//  WideCell.swift
//  Notes
//
//  Created by Justin Chester on 2022-01-04.
//

import SwiftUI

struct NarrowCell: View {
    let lightGray = Color("lightGray")
    var model: NarrowCellModel
    
    init() {
        self.model = NarrowCellModel()
    }
    
    init(_ narrowCellModel: NarrowCellModel) {
        self.model = narrowCellModel
    }
    
    var body: some View {
        ZStack {
            Color.white
            VStack(alignment: .leading) {
            HStack {
                Image(systemName: model.iconName)
                        .renderingMode(.template)
                        .foregroundColor(model.iconColour)
                        .padding(.bottom, 5)
                        .padding(.leading, 15)
                        .font(.system(size: 25))

                Spacer()
                Text(String(model.notesCount))
                    .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .padding(.trailing)
                }
                Text(model.titleText)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(model.titleColour)
                    .padding(.leading)

            }
        }
            .frame(minWidth: 120, maxWidth: 200, minHeight: 100, maxHeight: 100)
            .cornerRadius(22)
            .padding([.leading, .trailing], 5)
            .padding([.top, .bottom], 5)
    }
}

struct NarrowCell_Previews: PreviewProvider {
    static var previews: some View {
        Color(UIColor.lightGray).overlay(
            NarrowCell()
        )
    }
}
