//
//  WideCellModel.swift
//  Notes
//
//  Created by Justin Chester on 2022-01-04.
//

import Foundation
import SwiftUI

struct WideCellModel: Codable, Hashable {
    
    var headerColour: Color
    var headerText: String
    var subheaderColour: Color
    var subheaderText: String
    var iconName: String
    var iconColour: Color
    var subfolders: [NarrowCellModel] = []
    
    init(headerColour: Color = .red, headerText: String = "iCloud", subheaderColour: Color = .black, subheaderText: String = "Notes", iconName: String = "chevron.right", iconColour: Color = Color("lightGray")) {
        self.headerColour = headerColour
        self.headerText = headerText
        self.subheaderColour = subheaderColour
        self.subheaderText = subheaderText
        self.iconName = iconName
        self.iconColour = iconColour
    }
}
